<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Temp_authen {

   public function getHeader()
   {
     $text='

            <!DOCTYPE html>
              <html lang="en">
              <head>
            <title>.::Thai Assign ::.</title>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> 

             <link href="'.base_url().'bootstrap/css/bootstrap.min.css" rel="stylesheet" />
             <link rel="stylesheet" href="'.base_url().'assets/css/login.css">     
      
        </head>
              <body>
         
                  <div class="container">
';
		    return  $text;
   }

   public function getFooter()
   {
      return '

                    </div>
    <p class="bg-info"><center><font style="color:#9fa2ac; ">Thainology and Solutions Co.,Ltd</font></center></p>
      </body>
</html>
';
   }
}
?>