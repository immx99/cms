<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<?php
error_reporting(0);
include "configuration/config_etc.php";
include "configuration/config_include.php";
etc();session();connect();
?>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="dist/plugins/print/one.css">
        <title>Cetak</title>

        <?php
        $decimal ="0";
        $a_decimal =",";
        $thousand =".";
        ?>

        <?php
        $nota = $_GET["nota"];
        if (isset($_GET["tunai"])) {
            $tunai= $_GET["tunai"];
        } else {
            $tunai=0;
        }
        $sql1="SELECT * FROM data";
      	$hasil1=mysqli_query($conn,$sql1);
      	$row=mysqli_fetch_assoc($hasil1);
      	$nama=$row['nama'];
        $alamat=$row['alamat'];
        $notelp=$row['notelp'];
        $tagline=$row['tagline'];
        $signature=$row['signature'];
        $avatar=$row['avatar'];

        $sql1="SELECT * FROM bayar where nota='$nota'";
        
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $tglmasuk=$row['tglmasuk'];
        $jammasuk=date('H:i', strtotime($row['jammasuk']));
        $total=$row['total'];
        $terbilang=terbilang($total);
        $pelanggan=$row['pelanggan'];
        $kasir=$row['kasir'];

        $sql1="SELECT * FROM pelanggan where kode='$pelanggan'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $namapelanggan=$row['nama'];
        $nohppelanggan=$row['nohp'];
        $alamatpelanggan=$row['alamat'];

        $sql1="SELECT SUM(jumlah) as data FROM transaksimasuk where nota='$nota' and nama!='Diskon'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $totalqty=$row['data'];
        // $tunai = $_COOKIE['score'];
        // $prompt_msg = "TUNAI ";
        // $tunai = prompt("TUNAI");
        // $tunai=(int)$tunai;
        // echo $tunai;
        // $output_msg = "Hello there ".$tunai."!";
        // echo($output_msg);
        // $tunai=prompt("Tunai");
        // $tunai=3000000;
        
        function prompt($prompt_msg){
          echo("<script type='text/javascript'> var answer = prompt('".$prompt_msg."'); </script>");
  
          $answer = "<script type='text/javascript'> document.write(answer).value); </script>";
          return($answer);
      }


        function terbilang($x) {
          $angka = ["", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas"];
        
          if ($x < 12)
            return " " . $angka[$x];
          elseif ($x < 20)
            return terbilang($x - 10) . " belas";
          elseif ($x < 100)
            return terbilang($x / 10) . " puluh" . terbilang($x % 10);
          elseif ($x < 200)
            return "seratus" . terbilang($x - 100);
          elseif ($x < 1000)
            return terbilang($x / 100) . " ratus" . terbilang($x % 100);
          elseif ($x < 2000)
            return "seribu" . terbilang($x - 1000);
          elseif ($x < 1000000)
            return terbilang($x / 1000) . " ribu" . terbilang($x % 1000);
          elseif ($x < 1000000000)
            return terbilang($x / 1000000) . " juta" . terbilang($x % 1000000);
        }
        ?>
        <table><tr><td width="60%" >
        <div><img src="dist/upload/koplincah_kiri.png" style="max-width:50%;"  width="800" height="100"></div>
        </td><td>
        <table><tr><td width="50%" >Tgl Transaksi : <?php echo $tglmasuk;?> / <?php echo $jammasuk; ?></td></tr>
               <tr><td>Pelanggan : <b><?php echo $namapelanggan;?></b> / <?php echo $nohppelanggan; ?></td></tr>
               <tr><td style="width:192px;" colspan="6" align="left"><?php echo $alamatpelanggan;?></td></tr></table><td></tr>
        <tr><td colspan="2" width="50%"  style="width:900px;">
        <div><img src="dist/upload/koplincah_bawah.png" style="max-width:100%;"  width="1500" height="50"></div>
        </td></tr>
        <!-- <tr><td> -->
        <!-- <div><img src="dist/upload/koplincah_faktur.png" style="max-width:100%;"  width="1500" height="25"></div> -->
        <!-- </td></tr> -->
        </table>

        <table class="table-print-A4">
        <tr class="spa">
        <td width="5%"  style="width:20px;">&nbsp;</td>
        <td width="20%" style="width:100px;">&nbsp;</td>
        <td width="20%" style="width:100px;">&nbsp;</td>
        <td width="20%"  style="width:100px;">&nbsp;</td>
        <td width="10%"  style="width:50px;">&nbsp;</td>
        <td width="25%"  style="width:100px;">&nbsp;</td>
      
        </tr>
        
        <tr >
        	 <td style="width:192px;" colspan="6" align="left"><h2>No.Nota - <?php echo $nota;?></h2></td>
        </tr>
        
          
       
       <tr><td><strong>NO</strong></td>
       <td colspan="2" style="width:50px;"><strong>KETERANGAN</strong></td>
       <td ><strong> BANYAKNYA</strong> </td>
       <td ><strong> HARGA SATUAN</strong> </td>
       <td ><strong> JUMLAH BIAYA</strong> </td></tr>
       <tr class="siv solid">
          	<td colspan="7" style="width:800px;">
        	<div class="solid-border" ></div>
        </td>
          </tr>

          <?php

          $query1="SELECT * FROM  transaksimasuk where nota ='$nota' order by no";
          $hasil = mysqli_query($conn,$query1);
          $i=1;
          while ($fill = mysqli_fetch_assoc($hasil)){
              if (mysqli_real_escape_string($conn, $fill['nama'])!="Diskon") {
                  echo '<tr><td>' .  $i . '. </td><td colspan="2" style="width:50px;">' . 
                        mysqli_real_escape_string($conn, $fill['nama']) . '</td>';
               
                  
                  echo '<td style="width:50px;" align="right">' .  mysqli_real_escape_string($conn, $fill['jumlah'].$fill['satuan']) . '</td>';
                  echo '<td  style="width:100px;" align="right"> ' . number_format(($fill["biaya"]), $decimal, $a_decimal, $thousand) . ',-' . '</td>';
              } else {
                  echo '<tr><td></td><td  style="width:200px;">' .  
                      mysqli_real_escape_string($conn, $fill['nama']) . '</td>';
                  echo '<td  style="width:100px;">' .  mysqli_real_escape_string($conn, $fill['jumlah'].$fill['satuan']) . '</td>';
                  echo '<td></td>';
                 
              }
              
              echo '<td style="width:62px;" colspan="2" align="right">' . number_format(($fill['hargaakhir']), $decimal, $a_decimal, $thousand).',- </td></tr>';
            
              ?>
            <tr class="siv">
              <td colspan="7" style="width:1060px;">
            <div class="dotted-border"></div>	</td>
            <td style="width:12px;">	</td>
            </tr>

            <?php
            ;
            $i++;
          }

           ?>

        <tr>
          <td></td>
        	<td colspan="2" style="width:76.8px;">Total Qty</td>
          <td style="width:43.2px;"><?php echo $totalqty; ?></td>
        	<td style="width:48px;"><b>TOTAL</b></td>
        	<td style="width:72px;" colspan="2" align="right"><b><?php echo number_format($total, $decimal, $a_decimal, $thousand).',-';?></b></td>
         </tr>
         <?php
          $sql4="select uang_muka from bayar where nota='$nota'";
          // echo $sql4;
          $hasil4= mysqli_query($conn, $sql4);
          while ($fill4 = mysqli_fetch_assoc($hasil4)){
              $uang_muka=(int) $fill4["uang_muka"];
          }
          if ($uang_muka==0) {

              if ($tunai >=$total) {
                ?>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">TUNAI</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($tunai, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">KEMBALI</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($tunai-$total, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
              <?php
              } else {
                ?>
                  <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">UANG MUKA</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($tunai, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">SISA</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($total-$tunai, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>

              <?php
                  $update="update bayar set uang_muka=" . $tunai . " where nota='$nota'";
                  mysqli_query($conn, $update);
              }
            } else {
              ?>
                  <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">UANG MUKA</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($uang_muka, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">SISA</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($total-$uang_muka, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">TUNAI</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($tunai, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr>
                  <td></td>
                  <td colspan="2" style="width:76.8px;"></td>
                  <td style="width:43.2px;"></td>
                  <td  style="width:48px;">KEMBALI</td>
                  <td style="width:72px;" colspan="2" align="right"><?php echo number_format($tunai-$total+$uang_muka, $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>


              <?php

            }
          ?>



           <tr class="siv solid">
          	<td colspan="7" style="width:240px;">
        	<div class="solid-border" ></div>
        </td>
          </tr>
        <tr>
        	<td style="width:237px;" colspan="6" align="left"><?php echo "Terbilang: " . $terbilang . " rupiah.";?></td>
        </tr>

        <tr>
        	<td style="width:237px;" colspan="7" align="right"><?php echo $kasir;?></td>
        </tr>

           <tr class="siv solid">
          	<td colspan="7" style="width:240px;">
        	<div class="solid-border" ></div>
        </td>
          </tr>

        <tr>
        	<td style="width:240px;" colspan="6"><pre  style="white-space: pre-line;">
          <?php echo $signature;?>
          <pre></td>
          </tr>
          <tr>
            <td colspan="8">
                <div><img src="dist/upload/koplincah_perhatian.png" style="max-width:80%;"  width="1500" height="50"></div>
            </td>
            <td>
                Hormat Kami
            </td>
          </tr>
          <tr>
            <td colspan="8">
                <div><img src="dist/upload/koplincah_tujuan.png" style="max-width:80%;"  width="1500" height="50"></div>
            </td>
            <td>
                ...............................
            </td>
          </tr>
          <tr class="terakhir">
        	<td style="width:240px;" colspan="6"></td>
          </tr>
        </table>


        <script>

          setTimeout(function(){window.print()}, 2000);
           </script>
