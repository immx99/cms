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

</style>
<body>

<div class="card" style="width: 40rem;">
  <div class="card-header  text-center">
    <h4>EDIT ORDER</h4>
  </div>
  <div class="card-body">
       
        <form class="form-horizontal" method="post" action="edit_order.php" id="cashForm" class="form-user">
        <table>
        
        <tr> <td width=30% align="left"><label for="kode">NO.NOTA</label></td>
        <td  width=70% align="left">
        <div class="input-group">
        <input type="text" class="form-control" id=kode" name="kode" style= "text-align:right;" ></div>
        </td></tr>
        <tr> <td width=30% align="left"></td>
        <td  width=70% align="left">
        <div class="input-group">
        <input type="hidden" class="form-control" id="forwardpage" name="forwardpage" style= "text-align:right;" value="edit_order"></div>
        </td></tr>
     
        <tr><td colspan="2" align="center">
        <button type="button" class="btn btn-primary" onclick="document.getElementById('cashForm').submit();">Edit</button>
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