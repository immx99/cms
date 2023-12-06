 







<?php

$nota=$_GET["nota"];
echo $nota;

?>


<form method="post" id="tunaiform" name="tunaiform" action="print_one.php">
    <input id="nota" name="nota" type="text" />
    <input id="tunai" name="tunai" type="text" />
</form>

<script>
var nota="<?php echo $nota;?>";

function tunai_function(){
    var tunai = prompt("TUNAI");
    
    document.getElementById("tunai").value = tunai;
    document.getElementById("nota").value = nota;
    // sleep(1000);
    document.getElementById("tunaiform").submit();
    // document.forms(0).submit();
    
}
tunai_function();



</script>