<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Template {

   public function getHeader()
   {
     $text='

            <!doctype html>
               <html lang="en">
                <head>
             <meta charset="utf-8" />
             <link rel="apple-touch-icon" sizes="76x76" href="'.base_url().'assets/img/apple-icon.png">
             <link rel="icon" type="image/png" sizes="96x96" href="'.base_url().'assets/img/favicon.png">
               
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> 
                <title>ThaiAssign</title> 
                <meta content=width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

                  <meta name="viewport" content="width=device-width" />
          
                  <link href="'.base_url().'assets/css/bootstrap.min.css" rel="stylesheet" />
               
                  <link href="'.base_url().'assets/css/animate.min.css" rel="stylesheet"/>
               
                  <link href="'.base_url().'assets/css/paper-dashboard.css" rel="stylesheet"/>
                 
                  <link href="'.base_url().'assets/css/demo.css" rel="stylesheet" />
               
                  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
                  <link href="https://fonts.googleapis.com/css?family=Muli:400,300" rel="stylesheet" type="text/css">
                  <link href="'.base_url().'assets/css/themify-icons.css" rel="stylesheet">
              </head>
              <body>
                <div class="wrapper">
';
		    return  $text;
   }


   public function getFooter()
   {
      return '

      </div>  <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="http://www.thainology.com">Thainology.com</a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.thainology.com">Thainology Dev.</a>
                </div>
            </div>
        </footer>

    </div>
</div> 
</body>

    <script src="'.base_url().'assets/js/jquery-1.10.2.js" type="text/javascript"></script>
  <script src="'.base_url().'assets/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="'.base_url().'assets/js/bootstrap-checkbox-radio.js"></script>
  <script src="'.base_url().'assets/js/chartist.min.js"></script>
  <script src="'.base_url().'assets/js/bootstrap-notify.js"></script>
  <script src="'.base_url().'assets/js/paper-dashboard.js"></script>
  <script src="'.base_url().'assets/js/demo.js"></script>
  
  <script type="text/javascript">
      $(document).ready(function(){ 
          demo.initChartist(); 
        //  $.notify({
        //      icon: "ti-gift",
        //      message: "Welcome to Thai Assign"
        //  },{
        //      type: "success",
        //      timer: 4000
        //  });

      });
  </script>

</html>
';
   }
}
?>