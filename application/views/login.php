<?php echo $tempheader; ?>

<div class="fullscreen_bg"/>
<div class="container">

    <form class="form-signin" action="<?php echo base_url();?>ctl_authen/checkLogin" accept-charset="utf-8" id="form"  method="post" autocomplete="off"> 
           <h3 class="form-signin-heading"><font style="color:#cfd2d6;">Thai Assign</font></h3>
          		 <label for="inputEmail" class="sr-only">username</label>
           			<input type="text" id="username" name="username" class="form-control" placeholder="ชื่อผู้ใช้" required="" autofocus="">
           		<label for="inputPassword" class="sr-only">Password</label>
          			 <input type="password" id="passwd" name="passwd" class="form-control" placeholder="รหัสผ่าน" required="">
           				<button class="btn btn-lg btn-primary btn-block" type="submit">เข้าสู่ระบบ</button>
        </form>
</div>

<?php echo $tempfooter; ?>
