<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
<meta name="description" content="Bootstrap.">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   

</head>

<style>
input[readonly] {
    background-color:lightgrey;
    disabled;
}
</style>
<body>
<?php
include "configuration/config_connect.php";
$nota=$_GET["nota"];
$sql5="select total, uang_muka from bayar where nota='$nota'";
// echo $sql5;
$hasil5= mysqli_query($conn, $sql5);
while ($fill5 = mysqli_fetch_assoc($hasil5)){
    $total=(int) $fill5["total"];
    $uangMuka=(int) $fill5["uang_muka"];
}
$lunasString="";
$sisa=$total-$uangMuka;
if ($total-$uangMuka<=0){
    $lunasString="Sudah lunas!!";
}
?>


<div class="card" style="width: 40rem;">
  <div class="card-header  text-center">
    <h4>PEMBAYARAN</h4>
  </div>
  <div class="card-body">
       
        <form class="form-horizontal" method="get" action="print_one.php" id="cashForm" class="form-user">
        <table>
        
        <tr> <td width=30% align="left"><label for="nota">NO.NOTA</label></td>
        <td  width=70% align="left">
        <div class="input-group">
        <input type="text" class="form-control" id="nota" name="nota" style= "text-align:right;" readonly></div>
        </td></tr>

        <tr> <td td width=50% align="left"><label for="nota">TOTAL    </label></td>
        <td td width=50% align="left">
        <div class="input-group">
        
        <input type="text" class="form-control" id="total" name="total" style= "text-align:right;" readonly></div>
        </td></tr>

        <tr> <td td width=30% align="left"><label for="nota">UANG MUKA </label></td>
        <td td width=70% align="left">
        <div class="input-group">
        
        <input type="text" class="form-control" id="uang_muka" name="uang_muka" style= "text-align:right;" readonly></div>
        </td></tr>

        <tr> <td td width=30% align="left"><label for="nota">KEKURANGAN </label></td>
        <td td width=70% align="left">
        <div class="input-group">
       
        <input type="text" class="form-control" id="sisa" name="sisa" style= "text-align:right;" readonly></div>
        </td></tr>

        
        <tr> 
        <td td width=30% align="left"><label for="trxLbl">TRANSAKSI </label></td>   
        
        <td td width=70% align="left">
        <select class="form-select form-select-lg mb-3"  id="trx" name="trx" aria-label="Default select example">
            <option value="TUNAI" selected>Tunai</option>
            <option value="TRANSFER KE BCA NURHARMI 5255411273">Transfer ke BCA Nurhalmi 5255411273</option>
            <option value="TRANSFER KE BRI NURHALMI 112301000390569">Transfer ke BRI Nurhalmi 112301000390569</option>
        </select>
        </div>
        </td></tr>
        <?php
        if ($sisa>0) {
            ?>
       
        <tr> <td td width=30% align="left"><label for="nota">AMOUNT </label></td>
        <td td width=70% align="left">
        <div class="input-group">
        
        <input type="text" class="form-control" id="nominal" name="nominal" style= "text-align:right;"></div>
        </td></tr>
        <?php
        } else {
            ?>
             <tr> <td td width=30% align="left"><label for="nota">AMOUNT </label></td>
        <td td width=70% align="left">
        <div class="input-group">
        
        <input type="text" class="form-control" id="nominal" name="nominal" style= "text-align:right;" readonly></div>
        </td></tr>
       <?php
        }
        ?>
        <tr><td colspan="2">
        <blockquote class="blockquote mb-0">
            <p id="lunas"></p>
        </blockquote>
        </td></tr>
        <tr><td colspan="2" align="center">
        <button type="button" class="btn btn-primary" onclick="document.getElementById('cashForm').submit();">Cetak</button>
        <button type="button" class="btn btn-info" onclick="window.open('order_data.php')">Batal</button>
    </td></tr>
    </table>
    </form>

       
  </div>
</div>
</body>
<script>
    var nota="<?php echo $nota;?>";
    var total="<?php echo $total;?>";
    var uangMuka="<?php echo $uangMuka;?>";
    var lunasString="<?php echo $lunasString;?>";
    var nomStr="";
    
    var sisa=total-uangMuka;
    document.getElementById("total").value =formatted(4,total);
    document.getElementById("uang_muka").value = formatted(3,uangMuka);
    document.getElementById("sisa").value = formatted(2,sisa);
    document.getElementById("nota").value = nota;
    document.getElementById("lunas").innerHTML =lunasString;
    $(document).ready(function(){ 
        $("#trx").change(function() { 
            if ($("#trx").val()!="TUNAI") {
                $("#nominal").val(formatted(1,sisa));
            } else {
                $("#nominal").val("");
            }

        });   
        $("#nominal").change(function() { 
            nomStr=$("#nominal").val();
            if (nomStr.substring(nomStr.length - 2) !=",-") {
                cash=parseInt(document.getElementById("nominal").value);
                document.getElementById("nominal").value=formatted(1,cash);
            }
        });


       
    });

  function formatted(flag, x) {
  return x.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.') + ",-";
  
  }
</script>
</html>