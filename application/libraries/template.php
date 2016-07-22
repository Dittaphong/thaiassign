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

      </div> <!-- close container -->
            <div class="wellaon wellaon-lg">
               <center>
                  <font class="" color="#9fa2ac">Copyright © Thainology and Solutions Co.,Ltd. </font><br>
                  <font color="#9fa2ac">http://www.thainology.com</font>
               </center>
                  
            </div>
   </body>
</html>
';
   }
}
?>