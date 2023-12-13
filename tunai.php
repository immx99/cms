<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
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
if ($total-$uangMuka<=0){
    $lunasString="Sudah lunas!!";
}
?>


<div class="card" style="width: 18rem;">
  <div class="card-header  text-center">
    <h4>Pembayaran</h4>
  </div>
  <div class="card-body">
        <form class="form-horizontal" method="get" action="print_one.php" id="cashForm" class="form-user">
 
        <!-- <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>
        <label class="form-check-label" for="inlineRadio1">Tunai</label>
        </div>
        <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
        <label class="form-check-label" for="inlineRadio2">Transfer ke BNI 007787e892</label>
        </div>
        <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
        <label class="form-check-label" for="inlineRadio3">Transfer ke BCA 007787e892</label>
        </div> -->
        <div class="input-group input-group-sm mb-3">
        <select class="form-select" id="trx" name="trx">
            <option value="TUNAI" selected>Tunai</option>
            <option value="TRANSFER KE BCA 007787892">Transfer ke BCA Nurhalmi 5255411273</option>
            <option value="TRANSFER KE BRI 007787892">Transfer ke BRI Nurhalmi 112301000390569</option>
        </select>
        </div>

      
       
        <input type="hidden" class="form-control" id="nota" name="nota" >
       

        <div class="input-group input-group-sm mb-3">
        <span class="input-group-text">Rp. </span>
        <input type="text" class="form-control" id="nominal" name="nominal" style= "text-align: right;">
        </div>
        <blockquote class="blockquote mb-0">
            <p id="lunas"></p>
        </blockquote>
        <button type="button" class="btn btn-primary" onclick="document.getElementById('cashForm').submit();">Cetak</button>
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
    
    var sisa=formatted(1, total-uangMuka);
    document.getElementById("nota").value = nota;
    document.getElementById("lunas").innerHTML =lunasString;
    $(document).ready(function(){ 
        $("#trx").change(function() { 
            if ($("#trx").val()!="TUNAI") {
                $("#nominal").val(sisa);
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