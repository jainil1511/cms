    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.js"></script>
   
    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        tinymce.init({selector:'textarea'});

$(document).ready(function(){

$('#selectAllBoxes').click(function(event){
    if(this.checked){
        $('.checkBoxes').each(function(){
         
            this.checked = true;
        });
    }else{
      $('.checkBoxes').each(function(){
            
           this.checked = false;
       });
    }
});
    
var div_box = "<div id='load-screen' > <div id='loading'></div></div>";
$("body").prepend(div_box);
    
$('#load-screen').delay(900).fadeOut(600, function(){
  $(this).remove();
});   
});




    </script>

</body>

</html>
