<!DOCTYPE HTML>
<html>

<head>
<title>ENSURING DATA INTEGRITY AND ELIMINATING REDUNDANCY IN CLOUD STORAGE</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
   <link rel="shortcut icon" type="image/x-icon" href="images/brainstorming_alternative.png"/>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
   <style>
    #id{
        width: 200px;
        height: 25px;
        background-color: #D3F2F7;
    }
    #but{
        width: 60px;
        height: 25px;
    }
</style>
<script>
    function validation(){
        var uname=document.ulogin.username.value;
        var pass=document.ulogin.password.value;
        
        if(uname==0){
            alert("Enter  ID");
            document.ulogin.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ulogin.password.focus();
            return false;
        }
    }
</script>
</head>

<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
     <pre> <h1><a href="#">ENSURING DATA INTEGRITY AND ELIMINATING REDUNDANCY IN CLOUD STORAGE</a></h1></pre>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="index.html">Home</a></li>
          <li><a href="admin.jsp">Auditor</a></li>
          <li  class="selected"><a href="p_cloud.jsp">Cloud Server</a></li>
          <li><a href="#">User</a>
            <ul>
                <li><a href="user.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
            <li class="show"><img width="450" height="450" src="images/c1.jpg" alt="photo_one" /></li>
            <li><img width="450" height="450" src="images/c2.jpg" alt="photo_two" /></li>
            <li><img width="450" height="450" src="images/c3.jpg" alt="photo_three" /></li>
            <li><img width="450" height="450" src="images/c4.jpg" alt="photo_four" /></li>
            <li><img width="450" height="450" src="images/c5.jpg" alt="photo_five" /></li>
          </ul>
        </div>
      </div>
      <div id="content">
            <fieldset style="background-color: lightblue;border-radius: 9px;height: 430px;margin-top: 10px;background-image: url('images/audit.jpg')">
          <center>
        <h1 style="font: monospace;font-size: 35px;font-weight: bold;color: darkslateblue">Cloud Server Login</h1><br>
                 <form action="pcloud_login" name="ulogin" method="post" onsubmit="return validation()"> 
<!--                  USERNAME:<br>-->
<input type="text" id="id" name="username" placeholder="Enter Cloud ID"/><br></br><br><br>
<!--                  PASSWORD:<br>-->
<input type="password"  id="id"name="password" placeholder="Enter password"/><br></br><br><br>
<input type="submit" id="but" value=""style="border-radius: 12px;height: 38px;width: 93px;background-image: url('images/submit.png')"/>
&nbsp;&nbsp;
<input type="reset"id="but" value="" style="border-radius: 12px;height: 38px;width: 83px;background-image: url('images/reset.png')"></input><br></br>
                           
                
            
		</form>
                       
          </center>
          </fieldset>
      </div>
    </div>

  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
