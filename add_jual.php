<!DOCTYPE html>
<html>

<?php
include "configuration/config_etc.php";
include "configuration/config_include.php";
etc();encryption();session();connect();head();body();timing();
//alltotal();
pagination();
?>

<?php
if (!login_check()) {
?>
<meta http-equiv="refresh" content="0; url=logout" />
<?php
exit(0);
}
?>
        <div class="wrapper">
<?php
theader();
menu();
?>
            <div class="content-wrapper">
                <section class="content-header">
</section>
                <!-- Main content -->
                <section class="content">
                    <div class="row">
					  <div class="col-lg-12">
                        <!-- ./col -->

<!-- SETTING START-->

<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
include "configuration/config_chmod.php";
$halaman = "jual"; // halaman
$dataapa = "Order"; // data
$tabeldatabase = "transaksimasuk"; // tabel database
$chmod = $chmenu5; // Hak akses Menu
$forward = mysqli_real_escape_string($conn, $tabeldatabase); // tabel database
$forwardpage = mysqli_real_escape_string($conn, $halaman); // halaman
$search = $_POST['search'];
$insert = $_POST['insert'];

 function autoNumber(){
  include "configuration/config_connect.php";
  global $forward;
  $query = "SELECT MAX(RIGHT(nota, 4)) as max_id FROM bayar ORDER BY nota";
  $result = mysqli_query($conn, $query);
  $data = mysqli_fetch_array($result);
  $id_max = $data['max_id'];
  $sort_num = (int) substr($id_max, 1, 4);
  $sort_num++;
  $new_code = sprintf("%04s", $sort_num);
  return $new_code;
 }
?>

<?php
$decimal ="0";
$a_decimal =",";
$thousand =".";
?>


<!-- SETTING STOP -->

<script>
  function SubmitForm() {
      var kode = $("#kode").val();
      var barang = $("#barang").val();
      var nama = $("#nama").val();
      var hargajual = $("#hargajual").val();
      var hargabeli = $("#hargabeli").val();
      var jumlah = $("#jumlah").val();
      var hargaakhir = $("#hargaakhir").val();
      var datatotal = $("#datatotal").val();
      var profitakhir=$("#profitakhir").val();
      
      
     

      $.post("add_jual.php", { kode: kode, barang: barang, nama: nama, hargajual: hargajual, hargabeli: hargabeli, jumlah: jumlah, hargaakhir: hargaakhir, profitakhir: profitakhir, datatotal: datatotal}, function(data) {

      });


  }
</script>

<!-- BOX INSERT BERHASIL -->

         <script>
 window.setTimeout(function() {
    $("#myAlert").fadeTo(500, 0).slideUp(1000, function(){
        $(this).remove();
    });
}, 5000);
</script>
<?php
	if($insert == "10"){
		?>
	<div id="myAlert" class="alert alert-success alert-dismissible fade in" role="alert">
	 <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong> Berhasil!</strong> <?php echo $dataapa;?> telah berhasil <b>ditambahkan</b> ke Data <?php echo $dataapa;?>.
</div>

<?php
	}
	if($insert == "3"){
		?>
	<div id="myAlert" class="alert alert-success alert-dismissible fade in" role="alert">
	 <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong> Berhasil!</strong> <?php echo $dataapa;?> telah <b>terupdate</b>.
</div>

<!-- BOX UPDATE GAGAL -->
<?php
	}
	?>

       <!-- BOX INFORMASI -->
    <?php
if ($chmod >= 2 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  ) {
	?>


	<!-- KONTEN BODY AWAL -->
                            <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Data <?php echo $dataapa;?></h3>
            </div>
                                <!-- /.box-header -->

                                <div class="box-body">
								<div class="table-responsive">
    <!----------------KONTEN------------------->
      <?php
	  error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

	  $kode=$nama=$hargajual=$hargabeli=$jumlah=$hargaakhir=$tglnota=$bayar=$kembalian="";
	  $no = $_GET["no"];
    $kode = $_POST['kode'];
    $hargaakhir = $_POST['hargaakhir'];
    $tglnota = $_POST['tglnota'];
    $datatotal = $_POST['datatotal'];
    	  $insert = '1';



		if(($no != null || $no != "") && ($chmod >= 3 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  )){

			   $sql="select * from $tabeldatabase where kode='$kode'";
                  $hasil2 = mysqli_query($conn,$sql);


                  while ($fill = mysqli_fetch_assoc($hasil2)){


				  $kode = $fill["kode"];
				  $nama = $fill["nama"];
                  $insert = '3';

		}
		}
		?>
    <?php

    if($kode == null || $kode == ""){

            $sqle="SELECT SUM(hargaakhir) as data FROM transaksimasuk WHERE nota=".autoNumber()."";
            $hasile=mysqli_query($conn,$sqle);
            $row=mysqli_fetch_assoc($hasile);
            $datatotal=$row['data'];

            $sqle="SELECT SUM(biayaakhir) as data FROM transaksimasuk WHERE nota=".autoNumber()."";
            $hasile=mysqli_query($conn,$sqle);
            $row=mysqli_fetch_assoc($hasile);
            $databelitotal=$row['data'];
    }else{

      $sqle="SELECT SUM(hargaakhir) as data FROM transaksimasuk WHERE nota='$kode'";
      $hasile=mysqli_query($conn,$sqle);
      $row=mysqli_fetch_assoc($hasile);
      $datatotal=$row['data'];

      $sqle="SELECT SUM(biayaakhir) as data FROM transaksimasuk WHERE nota='$kode'";
      $hasile=mysqli_query($conn,$sqle);
      $row=mysqli_fetch_assoc($hasile);
      $databelitotal=$row['data'];

      $sqle="SELECT SUM(profitakhir) as data FROM transaksimasuk WHERE nota='$kode'";
      $hasile=mysqli_query($conn,$sqle);
      $row=mysqli_fetch_assoc($hasile);
      $total_profit=$row['data'];

    }


    if(isset($_POST["tambah"])){
        // echo "masuk pak eko";
       if($_SERVER["REQUEST_METHOD"] == "POST"){

              $kode = mysqli_real_escape_string($conn,$_POST["kode"]);
              $layanan = mysqli_real_escape_string($conn,$_POST["layanan"]);
              $nama = mysqli_real_escape_string($conn,$_POST["nama"]);
              $biaya = mysqli_real_escape_string($conn,$_POST["harga"]);
              $satuan = mysqli_real_escape_string($conn,$_POST["selectSatuan"]);
              $jumlah = mysqli_real_escape_string($conn,$_POST["jumlah"]);
              $hargaakhir = mysqli_real_escape_string($conn,$_POST["hargaakhir"]);
              $biayaakhir = mysqli_real_escape_string($conn,$_POST["biaya"]*$_POST["jumlah"]);
              $profitakhir= mysqli_real_escape_string($conn,$_POST["profitakhir"]);
              // if ($jumlah==0) {
              //     $
              // }
              $insert = ($_POST["insert"]);
                // echo 

                 $sql="select * from $tabeldatabase where nota='$kode' and kode='$layanan' and satuan='$satuan'";
            $result=mysqli_query($conn,$sql);

                  if(mysqli_num_rows($result)>0){

                    echo "<script type='text/javascript'>  alert('Barang sudah diinputkan, silakan hapus dahulu untuk merubah!');</script>";
              }
          else if(($chmod >= 2 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  )&&($jumlah > 0)){
              if ($nama!="Diskon") {
                  $sql2 = "insert into $tabeldatabase (nota,kode,nama,biaya,satuan,jumlah,hargaakhir,biayaakhir,profitakhir) values( '$kode','$layanan','$nama',$biaya,'$satuan',$jumlah,$hargaakhir,$biayaakhir, $profitakhir)";
                 
                  $sqlTrx="select fwd.jumlah as jumlah, fwd.satuan as satuan, st.jumlah_per_pack as jml_per_pak,
                  st.jumlah as jml_stock, st.satuan as kode_satuan,
                  st.jumlah_eceran as jml_eceran from $tabeldatabase fwd, stock st where fwd.no='".$no."'" . "and st.kode=fwd.kode";
                  $hasilTrx=mysqli_query($conn,$sqlTrx);
                  $row=mysqli_fetch_assoc($hasilTrx);
                  $jumlah=$row['jumlah'];
                  $satuan=$row['satuan'];
                  $kode=$row['kode'];
                  $jmlStock=$row['jml_stock'];
                  $jmlPerPak=$row['jml_per_pak'];
                  $kodeSatuan=$row['kode_satuan'];
                  $jmlEcerann=$row['jml_eceran'];
                  switch ($satuan) {
                    case "Pak":
                      $newJmlStock=$jmlStock-$jumlah;
                      $newJmlEceran=$jmlEceran;
                      break;
                    case "Pcs":
                    case "Lembar":
                      $newJmlEceran=$jmlEceran-$jumlah;
                      if ($newJmlEceran>=$jmlPerPak) {
                        $newJmlStock=floor($newJmlEceran/$jmlPerPak);
                        $newJmlEceran=fmod($newJmlEceran,$jmlPerPak);
                      }
                      break; 
                  }

                  $updateStock="update stock set jumlah=$newJmlStock, jumlah_eceran=$newJmlEceran where kode='$kode'";
                  $upStock = mysqli_query($conn, $updateStock);
                
                } else {
                  $sql2 = "insert into $tabeldatabase (nota,kode,nama,satuan,jumlah,hargaakhir,biayaakhir,profitakhir) values( '$kode','$layanan','$nama','$satuan',$jumlah,$hargaakhir,$biayaakhir, $hargaakhir)";
                  
              }
              //  echo $sql2;
               $insertan = mysqli_query($conn, $sql2);
             }else{
              echo "<script type='text/javascript'>  alert('Gagal, Jumlah tidak boleh kosong!');</script>";

             }

      }

    }




    if(isset($_POST["simpan"])){
       if($_SERVER["REQUEST_METHOD"] == "POST"){

              $kode = mysqli_real_escape_string($conn,$_POST["kode"]);
              $tglnota = mysqli_real_escape_string($conn,$_POST["tglnota"]);
              $pelanggan = mysqli_real_escape_string($conn,$_POST["pelanggan"]);
              if($pelanggan == null || $pelanggan == ""){
                $pelanggan = "Umum";
              }else{
                $pelanggan = mysqli_real_escape_string($conn,$_POST["pelanggan"]);
              }
              
              $tgldeadline = mysqli_real_escape_string($conn,$_POST["tgldeadline"]);
              $jamdeadline = mysqli_real_escape_string($conn,$_POST["jamdeadline"]);
              if($tgldeadline == null || $tgldeadline == ""){
                  $tgldeadline=date("Y-m-d");
              } else {
                  $tgldeadline = mysqli_real_escape_string($conn,$_POST["tgldeadline"]);
              }
              if($jamdeadline == null || $jamdeadline == ""){
                  $jamdeadline= date("H:i");
              } else {
                  $jamdeadline = mysqli_real_escape_string($conn,$_POST["jamdeadline"]);
              }
             
              $catatan = mysqli_real_escape_string($conn,$_POST["catatan"]);
              $jammasuk = date("G:H:i");
              $kasir = $_SESSION["username"];
              $insert = ($_POST["insert"]);


                 $sql="select * from bayar where nota='$kode'";
            $result=mysqli_query($conn,$sql);


                  if(mysqli_num_rows($result)>0){

                    echo "<script type='text/javascript'>  alert('Data tidak bisa diubah!');</script>";
              }
          else if(( $chmod >= 2 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  )){

               $sql2 = "insert into bayar (nota,tglmasuk,jammasuk,pelanggan,total,total_profit,tgldeadline,jamdeadline,status,kasir,catatan) values( '$kode','$tglnota','$jammasuk','$pelanggan',$datatotal, $total_profit, '$tgldeadline','$jamdeadline','Diterima','$kasir','$catatan')";
               $myIPsFile = fopen("sql.log", "a") or die("Unable to open file!");
                fwrite($myIPsFile, $sql2);
                fclose($myIPsFile);
              
               $insertan = mysqli_query($conn, $sql2);

?>
<script type="text/javascript">
window.onload = function() {
  var win = window.open('tunai.php?nota=<?php echo $kode;?>','Cetak',' menubar=0, resizable=0,dependent=0,status=0,width=300,height=400,left=10,top=10','_blank');
 
if (win) {
  alert('Berhasil, Data telah disimpan!');
    win.focus();
   window.location = 'add_jual';
} else {
    alert('Silakan Allow Pop Up bila ingin mencetak!');
}
}

</script>
<?php

      //         echo "<script type='text/javascript'>  alert('Berhasil, Data telah disimpan!'); </script>";
//echo "<script type='text/javascript'>window.location = 'add_jual';</script>";
             }else{
              echo "<script type='text/javascript'>  alert('Gagal, Data gagal disimpan! Pastikan pembayaran benar');</script>";

             }

      }

    }



    if($kode == null || $kode == ""){

            $sqle="SELECT SUM(hargaakhir) as data FROM transaksimasuk WHERE nota=".autoNumber()."";
            $hasile=mysqli_query($conn,$sqle);
            $row=mysqli_fetch_assoc($hasile);
            $datatotal=$row['data'];
    }else{

      $sqle="SELECT SUM(hargaakhir) as data FROM transaksimasuk WHERE nota='$kode'";
      $hasile=mysqli_query($conn,$sqle);
      $row=mysqli_fetch_assoc($hasile);
      $datatotal=$row['data'];


    }


             ?>




	<div id="main">
	 <div class="container-fluid">

          <form class="form-horizontal" method="post" action="add_<?php echo $halaman; ?>" id="Myform" class="form-user">
              <div class="box-body">

                <div class="row">



                          <div class="col-md-4">
                            <div class="box" style="background-color:#EEEEEE">
                              <div class="box-body">
                                <div class="row" >
                                   <div class="form-group col-md-12 col-xs-12" >
                                          <div class="col-sm-12" >
                                            Total
                                            <?php if($datatotal == "" || $datatotal == null){?>
                                              <h2 align="center" style="margin-top:0px;">Rp   <?php echo '0'.',-'; ?></h2>
                                              <?php }else{ ?>
                                          <h2 align="center" style="margin-top:0px;">Rp   <?php echo number_format($datatotal, $decimal, $a_decimal, $thousand).',-'; ?></h2>
                                          <?php } ?>
                                          </div>
                                        </div>
                                </div>


                  </div>
                  </div>
                  </div>


                  <div class="col-md-8"  style="margin-left:-25px">
                      <div class="box-body">

                        <div class="col-sm-3">
                          <label for="kode">Nota:</label>
                          <input type="text" class="form-control" id="kode" name="kode" value="<?php echo autoNumber(); ?>" maxlength="50" readonly required>
                        </div>

                        <div class="col-sm-3">
                          <label for="kode">Tanggal:</label>
                          <input type="text" class="form-control pull-right" id="datepicker2" name="tglnota" placeholder="Masukan Tanggal Nota" value="<?php echo $tglnota; ?>" >
                        </div>

                        <div class="col-sm-6">
                          <label for="kode">Barang:</label>

                          <select class="form-control select2" style="width: 100%;" name="layanan" id="layanan">
                            <option></option>
                            <?php
                            $sql=mysqli_query($conn,"select kode,nama,satuan,satuan_eceran,biaya, harga_eceran, profit, profit_eceran  from stock");
                            while ($row=mysqli_fetch_assoc($sql)){

                              $satuane = $row['satuan'];
                              $satuan_ecerane= $row['satuan_eceran'];
                              $sqlx2="SELECT * from satuan where kode ='$satuane'";
                              $sqlx3="SELECT * from satuan where kode ='$satuan_ecerane'";
                              $hasilx2=mysqli_query($conn,$sqlx2);
                              $hasilx3=mysqli_query($conn,$sqlx3);
                              $hasil=mysqli_fetch_assoc($hasilx2);
                              $hasil2=mysqli_fetch_assoc($hasilx3);
                              $datae= $hasil['nama'];
                              $datae2=$hasil2['nama'];

                              if ($layanan==$row['kode']){
                                echo "<option value='" . $row['kode'] . "' nama='" . $row['nama'] . 
                                "' satuan='".$datae.
                                "' biaya='".$row['biaya'] . "' satuan_eceran='".$datae2 ."' profit='".$row["profit"] . "' profit_eceran='".$row["profit_eceran"] . 
                                "' harga_eceran='".$row['harga_eceran'] . "' selected='selected'>" . $row['nama']." , Kode: ".$row['kode']."</option>";
                              }else{
                                echo "<option value='".$row['kode']."' nama='".$row['nama']."' satuan='".$datae.
                                "'  biaya='".$row['biaya']."' satuan_eceran='".$datae2 . "' profit='".$row["profit"] . "' profit_eceran='".$row["profit_eceran"] .
                                "' harga_eceran='" . $row['harga_eceran'] . "' >" . $row['nama'] . 
                                " , Kode: ".$row['kode']."</option>";
                              }
                            }
                            ?>
                          </select>
                        </div>
                        <!-- <div class="row" >
                        <div class="form-group col-md-6 col-xs-12">
                          <label for="kode">Nota:</label>
                            <input type="text" class="form-control" id="kode" name="kode" value="<?php echo autoNumber(); ?>" maxlength="50" readonly required>
                </div>


                <div class="orm-group col-md-6 col-xs-12">
                  <label for="kode">Tanggal:</label>
             <input type="text" class="form-control pull-right" id="datepicker2" name="tglnota" placeholder="Masukan Tanggal Nota" value="<?php echo $tglnota; ?>" >
        </div>
f
      </div> -->
<!--
				<div class="row" >
				   <div class="form-group col-md-12 col-xs-12" >
                  <label for="layanan" class="col-sm-2">Makanan:</label>
                  <div class="col-sm-10" style="padding-right:0px;">
                    <select class="form-control select2" style="width: 100%;" name="layanan" id="layanan">
                      <option></option>
    					<?php
    		$sql=mysqli_query($conn,"select kode,nama,satuan,satuan_eceran, biaya, profit, profit_eceran from stock");
    		while ($row=mysqli_fetch_assoc($sql)){

            $satuane = $row['satuan'];
            $satuan_ecerane=$row['satuan_eceran'];
            $sqlx2="SELECT * from satuan where kode ='$satuane'";
            $sqlx3="SELECT * from satuan where kode ='$satuan_ecerane'";
            $hasilx2=mysqli_query($conn,$sqlx2);
            $hasilx3=mysqli_query($conn,$sqlx3);
            $hasil=mysqli_fetch_assoc($hasilx2);
            $hasil2=mysqli_fetch_assoc($hasilx3);
            $datae=$hasil['nama'];
            $datae2=$hasil2['nama'];
    

    			if ($layanan==$row['kode']){
    			echo "<option value='".$row['kode']."' nama='".$row['nama']."' satuan='".$datae. 
          " satuan_eceran='" . $datae2 . "' biaya='". $row['biaya'] ."' profit='".$row["profit"] . "' profit_eceran='".$row["profit_eceran"] .
          "' selected='selected'>".$row['nama']." , Kode: ".$row['kode']."</option>";
        }else{
    			echo "<option value='".$row['kode']."' nama='".$row['nama']."' satuan='".$datae. 
          " satuan_eceran='" . $datae2 . "'  biaya='".$row['biaya'] . "' profit='".$row["profit"] . "' profit_eceran='".$row["profit_eceran"] . 
          "' >".$row['nama']." , Kode: ".$row['kode']."</option>";
    		}
      }
    	?>
                    </select>
                  </div>
                </div>
				</div> -->


            </div>
        </div>


			<input type="hidden" class="form-control" id="insert" name="insert" value="<?php echo $insert;?>" maxlength="1" >


              </div>

              <div class="row">
                <div class="col-md-12">
                  <div class="box box-default">
                    <div class="box-body">

                  <div class="row" >

                      <div class="col-sm-4">
                      <label for="usr">Nama Barang</label>
                      <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama; ?>" readonly>
                    </div>

                                              <script>
                                               function sum() {
                                                     var txtFirstNumberValue =  document.getElementById('jumlah').value
                                                     var txtSecondNumberValue = document.getElementById('harga').value;
                                                     var txtThirdNumberValue=document.getElementById('profit').value;
                                                     var txtHargaAkhirValue='<?php echo $hargaakhir;?>';
                                                     var result = parseFloat(txtFirstNumberValue) * parseFloat(txtSecondNumberValue);
                                                     var result2= -1 * parseFloat(txtFirstNumberValue) * parseFloat(txtHargaAkhirValue)/100;
                                                     var result3= parseFloat(txtFirstNumberValue) * parseFloat(txtThirdNumberValue);
                                                     var nama = $("#layanan option:selected").attr("nama");
                                                     
                                                     if (!isNaN(result)) {
                                                    
                                                        document.getElementById('hargaakhir').value = result;
                                                       
                                                     }
                                                     if (!isNaN(result2) && nama=="Diskon") {
                                                        
                                                        document.getElementById('hargaakhir').value = result2;
                                                        
                                                     }
                                                     if (!isNaN(result3)) {
                                                    
                                                        document.getElementById('profitakhir').value = result3;
                                                   
                                                     }

                                                   if (!$(jumlah).val()){
                                                     document.getElementById('hargaakhir').value = "0";
                                                   }
                                                   if (!$(hargajual).val()){
                                                     document.getElementById('hargaakhir').value = "0";
                                                   }
                                               }
                                               </script>
<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
?>
                  <div class="col-sm-2">
                  <label for="usr">Harga</label>
                  <input type="text" class="form-control" id="harga" name="harga" value="<?php  echo $biaya; ?>" readonly>
                </div>



                <div class="col-sm-1">
                <label for="usr">Jumlah</label>
                <input type="text" class="form-control" id="jumlah" name="jumlah" value="<?php echo $jumlah; ?>" placeholder="0" onkeyup="sum();">
              </div>
                                          
              <div class="col-sm-1">
                  <label for="usr">Satuan</label>
                  <div class="input-group mb-3">
                      <select class="form-control select1" style="width: 140%;" name="selectSatuan" id="selectSatuan">          
                        <option value="<?php echo $satuan;?>" index="0"><?php echo $satuan;?></option>
                        <option value="<?php echo $satuan_eceran;?>" index="1"><?php echo $satuan_eceran;?></option>
                        
                       
                      </select>
                  </div>                           
              </div>

              <div class="col-sm-2">
              <label for="usr">Harga Akhir</label>
              <input type="text" class="form-control" id="hargaakhir" name="hargaakhir" value="<?php echo $hargaakhir; ?>" readonly>
            </div>
            <input type="hidden" class="form-control" id="profit" name="profit" value="0" readonly>
            <input type="hidden" class="form-control" id="profitakhir" name="profitakhir" value="0" readonly>


            <div class="col-sm-2">
              <label for="usr" style="color:transparent">.</label>
              <button type="submit" class="btn btn-block pull-left btn-flat btn-success" name="tambah" onclick="SubmitForm()" >Tambah</button>
            </div>

                  </div>
                </br>
                  <!-- <button type="submit" class="btn btn-block pull-left btn-flat btn-success" name="tambah" onclick="SubmitForm()" ><span class="glyphicon glyphicon-shopping-cart"></span> Tambah</button> -->



</div>
</div>
                </div>
              </div>



              <div class="row">
                <div class="col-md-12">
                  <div class="box box-success">
                    <div class="box-header with-border">
             <b>List Order</b>
           </div>

           <?php
           error_reporting(E_ALL ^ E_DEPRECATED);

           $sql    = "select * from transaksimasuk where nota =".autoNumber()." order by no";
            //  echo $sql;
           $result = mysqli_query($conn, $sql);
           $rpp    = 15;
           $reload = "$halaman"."?pagination=true";
           $page   = intval(isset($_GET["page"]) ? $_GET["page"] : 0);



           if ($page <= 0)
           $page = 1;
           $tcount  = mysqli_num_rows($result);
           $tpages  = ($tcount) ? ceil($tcount / $rpp) : 1;
           $count   = 0;
           $i       = ($page - 1) * $rpp;
           $no_urut = ($page - 1) * $rpp;
           ?>
           <div class="box-body table-responsive">
              <table class="data table table-hover table-bordered">
                  <thead>
                      <tr>
                          <th>No</th>
                          <th>Kode Barang</th>
                          <th>Nama Barang</th>
                          <th>Harga</th>
                          <th>Jumlah</th>
                          <th>Harga Akhir</th>
           <?php	if ($chmod >= 3 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  ) { ?>
                          <th>Opsi</th>
           <?php }else{} ?>
                      </tr>
                  </thead>
                    <?php
           error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        //    echo $rpp;
        //    echo $tcount+=1;
        while(($count<$rpp) && ($i<$tcount)) {
                mysqli_data_seek($result,$i);
                $fill = mysqli_fetch_array($result);
                // echo  mysqli_real_escape_string($conn,$fill['nama']);
                
                ?>
                <tbody>
                <tr>
                <td><?php echo ++$no_urut;?></td>
                <td><?php  echo mysqli_real_escape_string($conn,$fill['kode']); ?></td>
                <td><?php  echo mysqli_real_escape_string($conn,$fill['nama']); ?></td>
                <?php 
                if (mysqli_real_escape_string($conn,$fill['nama'])!="Diskon") {
                    echo '<td>' . mysqli_real_escape_string($conn,number_format($fill['biaya'], $decimal, $a_decimal, $thousand).',-') . '</td>';
                    echo '<td>' . mysqli_real_escape_string($conn,$fill['jumlah'].' '.$fill['satuan']) . '</td>';
                    echo '<td>' . mysqli_real_escape_string($conn,number_format(($fill['jumlah']*$fill['biaya']), $decimal, $a_decimal, $thousand).',-') . '</td>';
                } else {
                    echo '<td></td>';
                    echo '<td>' . mysqli_real_escape_string($conn,$fill['jumlah'].' '.$fill['satuan']) . '</td>';
                    echo '<td>' . mysqli_real_escape_string($conn,number_format($fill['hargaakhir'])) . '</td>';
                }
                ?>
                <td>
                <?php	if ($chmod >= 4 || $_SESSION['jabatan'] == 'admin' || $_SESSION['jabatan'] == 'user'  ) { ?>
                <button type="button" class="btn btn-danger btn-xs" onclick="window.location.href='component/delete/delete_produk?get=<?php echo '1'.'&'; ?>barang=<?php echo $fill['kode'].'&'; ?>jumlah=<?php echo $fill['jumlah'].'&'; ?>kode=<?php echo $kode.'&'; ?>no=<?php echo $fill['no'].'&'; ?>forward=<?php echo $forward.'&';?>forwardpage=<?php echo "add_".$forwardpage.'&'; ?>chmod=<?php echo $chmod; ?>'">Hapus</button>
                <?php } else {}?>
                </td></tr>
                <?php
                $i++;
                $count++;
        }

           ?>
           </tbody></table>
           <div align="right"><?php if($tcount>=$rpp){ echo paginate_one($reload, $page, $tpages);}else{} ?></div>


           </div>

           </div>


         </div>
                  </div>
                </div>



                            <div class="row" >
                              <div class="col-md-12">
                                <div class="box box-solid" >
                                  <div class="box-header with-border">

                                    <script>
                                   function sum2() {
                                         var txtFirstNumberValue =  document.getElementById('bayar').value
                                         var txtSecondNumberValue = document.getElementById('total').value;
                                         var result = parseFloat(txtFirstNumberValue) - parseFloat(txtSecondNumberValue);
                                         if (!isNaN(result)) {
                                            document.getElementById('kembalian').value = result;
                                         }
                                       if (!$(bayar).val()){
                                         document.getElementById('kembalian').value = "0";
                                       }
                                       if (!$(total).val()){
                                         document.getElementById('kembalian').value = "0";
                                       }
                                   }
                                   </script>


                                                      <div class="col-sm-3">
                                                      <label for="usr">Pelanggan</label>
                                                        <select class="form-control select2" style="width: 100%;" name="pelanggan" id="pelanggan">
                                                          <option></option>
                                                      <?php
                                                      $sql=mysqli_query($conn,"select * from pelanggan");
                                                      while ($row=mysqli_fetch_assoc($sql)){

                                                      if ($pelanggan==$row['kode']){
                                                      echo "<option value='".$row['kode']."' nama='".$row['nama']."' selected='selected'>".$row['nama'].", Kode: ".$row['kode']."</option>";
                                                      }else{
                                                      echo "<option value='".$row['kode']."' nama='".$row['nama']."' >".$row['nama'].", Kode: ".$row['kode']."</option>";
                                                      }
                                                      }
                                                      ?>
                                                        </select>
                                                      </div>

                                                      <div class="col-sm-2">
                                                      <label for="usr">Deadline</label>
                                                      <input type="text" class="form-control pull-right" id="datepicker3" name="tgldeadline" placeholder="<?php echo date("Y-m-d");?>" value="<?php echo $tgldeadline; ?>" >
                                                      </div>


                                                      <div class="col-sm-2">
                                                        <label for="usr">Waktu</label>
                                                        <input type="text" class="form-control" id="jamdeadline" name="jamdeadline" value="<?php echo $jamdeadline; ?>" maxlength="5" placeholder="<?php echo date("H:i");?>">
                                                      </div>

                                                      <div class="col-sm-2">
                                                        <label for="usr">Catatan</label>
                                                        <input type="text" class="form-control" id="catatan" name="catatan" value="<?php echo $catatan; ?>" placeholder="Masukan Catatan" maxlength="255">
                                                      </div>
                                                      
                                            <input type="hidden" class="form-control" id="total" name="total" value="<?php echo $datatotal; ?>" maxlength="50" >


                                  <div class="col-sm-3">
                                  <label for="usr" style="color:transparent">.</label>
                                  <button type="submit" class="btn btn-block pull-left btn-flat btn-success disabled" name="simpan" id="simpan" onclick="document.getElementById('Myform').submit();" >Proses Order</button>
                                  </div>

                              </div>
                            </div>


 </form>
</div>




<script>
function myFunction() {
    document.getElementById("Myform").submit();

}


</script>

	  <!-- KONTEN BODY AKHIR -->

                                </div>
								</div>

                                <!-- /.box-body -->
                            </div>
                        </div>

<?php
} else {
?>
   <div class="callout callout-danger">
    <h4>Info</h4>
    <b>Hanya user tertentu yang dapat mengakses halaman <?php echo $dataapa;?> ini .</b>
    </div>
    <?php
}
?>
                        <!-- ./col -->
                    </div>

                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">
                        <!-- Left col -->
                        <!-- /.Left col -->
                    </div>
                    <!-- /.row (main row) -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <?php  footer(); ?>
            <div class="control-sidebar-bg"></div>
        </div>
          <!-- ./wrapper -->
<script src="dist/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script>

var nama="";
var biaya="";
var satuan="";
var harga_eceran="";
var satuan_eceran="";
var profit="";
var profit_eceran="";

$("#layanan").on("change", function(){
 
  nama = $("#layanan option:selected").attr("nama");
  biaya = $("#layanan option:selected").attr("biaya");
  satuan = $("#layanan option:selected").attr("satuan");
  harga_eceran = $("#layanan option:selected").attr("harga_eceran");
  satuan_eceran = $("#layanan option:selected").attr("satuan_eceran");
  profit= $("#layanan option:selected").attr("profit");
  profit_eceran= $("#layanan option:selected").attr("profit_eceran");

  $("#nama").val(nama);
  $("#harga").val(biaya);
  $("#satuan").val(satuan);
  $("#hargaakhir").val(0);
  $("#jumlah").val(0);
  $("#profit").val(profit);
  $("#profitakhir").val(0);

  $('#selectSatuan option[index="0"]').text(satuan);
  $('#selectSatuan option[index="1"]').text(satuan_eceran);
  $('#selectSatuan option[index="0"]').val(satuan);
  $('#selectSatuan option[index="1"]').val(satuan_eceran);
  // $('#selectSatuan option[index="0"]').attr('selected','selected');

});

$("#selectSatuan").on("change", function(){
  // alert("change");
  // alert($("#selectSatuan").val());
  // alert(satuan);
  if ($("#selectSatuan").val()==satuan) {
    // alert("biaya=" + biaya);
    $("#harga").val(biaya);
    $("#profit").val(profit);
  } else {
    // alert("harga_eceran=" + harga_eceran);
    $("#harga").val(harga_eceran);
    $("#profit").val(profit_eceran);
    // alert(harga_eceran);
  }

});


    // $("#pelanggan").on("change", function(){
    // alert("ready");
    $("#pelanggan").change(function() { 
        // alert("change");
        if ($("#pelanggan").val().trim().length !=0 ) {
            $("#simpan").removeClass("disabled");// 
            $("#simpan").addClass("enabled");// for 
        } else {
            $("#simpan").removeClass("enabled");// 
            $("#simpan").addClass("disabled");// for 
        }
    });


</script>

        <script src="dist/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="dist/plugins/morris/morris.min.js"></script>
        <script src="dist/plugins/sparkline/jquery.sparkline.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="dist/plugins/knob/jquery.knob.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="dist/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="dist/plugins/datepicker/bootstrap-datepicker.js"></script>
        <script src="dist/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="dist/plugins/fastclick/fastclick.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="dist/js/demo.js"></script>
		<script src="dist/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="dist/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script src="dist/plugins/fastclick/fastclick.js"></script>
		<script src="dist/plugins/select2/select2.full.min.js"></script>
		<script src="dist/plugins/input-mask/jquery.inputmask.js"></script>
		<script src="dist/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
		<script src="dist/plugins/input-mask/jquery.inputmask.extensions.js"></script>
		<script src="dist/plugins/timepicker/bootstrap-timepicker.min.js"></script>
		<script src="dist/plugins/iCheck/icheck.min.js"></script>
      <script>
      $(function () {
        //Initialize Select2 Elements
        $(".select2").select2({
          placeholder: "Silakan pilih salah satu"
        });
       
        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("yyyy-mm-dd", {"placeholder": "yyyy/mm/dd"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("yyyy-mm-dd", {"placeholder": "yyyy/mm/dd"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'YYYY/MM/DD h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Hari Ini': [moment(), moment()],
                'Kemarin': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Akhir 7 Hari': [moment().subtract(6, 'days'), moment()],
                'Akhir 30 Hari': [moment().subtract(29, 'days'), moment()],
                'Bulan Ini': [moment().startOf('month'), moment().endOf('month')],
                'Akhir Bulan': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
            function (start, end) {
              $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

        //Date picker
        $(document).ready(function(){
            $('#datepicker').datepicker({
            autoclose: true
            });

            $('.datepicker').datepicker({
            dateFormat: 'yyyy-mm-dd'
            });

        //Date picker 2
        $('#datepicker2').datepicker('update', new Date());
        // document.getElementById.value=date(Y)
        $('#datepicker2').datepicker({
            autoclose: true
        });

        $('.datepicker2').datepicker({
            dateFormat: 'yyyy-mm-dd'
            
        });

        //Date picker 3

        $('#datepicker3').datepicker({
            autoclose: true
        });

        $('.datepicker3').datepicker({
        dateFormat: 'yyyy-mm-dd'
        });
    });


        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        // $(".my-colorpicker1").colorpicker();
        // //color picker with addon
        // $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });

      });
    </script>
  </body>
</html>
