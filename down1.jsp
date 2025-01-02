<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
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
  <script>
      function validation(){
        if(confirm("Are Sure update this?")){
            return true;
        }
        else{
            return false;
        }
      }
  </script>
  <script>
      function checkKey(){
          var fistInput = document.getElementById("savedK").value;
          var secondInput = document.getElementById("seconKey").value;
          if(fistInput !=secondInput){
              alert('Wrong Key');
              return false;
          }else{
              document.getElementById("f1").action="down2.jsp";
          }
      }
  </script>
  <style>
      h1{
          position: relative;
          left: 350px;
          
      }
      
    #id{
        width: 200px;
        height: 25px;
        background-color: #D5D5D5;
    }
    #but{
        width: 60px;
        height: 25px;
        background-color: burlywood;
    }
</style>
 <style>
    table,td,tr{
        border-collapse: collapse;
        border-style: solid;
    }
    table{
        position: relative;
        left: 100px;
        width: 680px;
    }
    td{
        text-align: center;
    }
    tr{ 
        background-color: #D9D5CF;
        height: 25px;
    }
</style>
</head>

<body>
    <%
    HttpSession user=request.getSession();
    String uname=user.getAttribute("username").toString();   
    String name=user.getAttribute("name").toString();     
    Connection con=Dbconnection.getConn();
    Statement st1=con.createStatement();
    ResultSet rt1=st1.executeQuery("select *from rights where username_='"+uname+"'");
    if(rt1.next()){
        String up=rt1.getString("update_");
        if(up.equalsIgnoreCase("yes")){
        }
       else{
        response.sendRedirect("user_page1.jsp?no='yes'");
       }
    }   
%>
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
            <li ><a href="update.jsp">Update</a></li>
            <li><a href="upload.jsp">Upload</a></li>
            <li><a href="download.jsp">Download</a></li>
        
          <li><a href="#"><img width="40" height="40" src="images/user.png" alt="photo_two" /></a>
            <ul>
                <li><a href="index.html">Logout</a></li>
<!--                <li><a href="register.jsp">Register</a></li>-->
            </ul>
          </li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="content">
          <%
//HttpSession user=request.getSession();
//String uname=user.getAttribute("username").toString();   
//String name=user.getAttribute("name").toString();  
  
    String id=request.getQueryString();
    String fname=null;
    String secondKey = null;
    String contents = null;
    Statement st=con.createStatement();
    ResultSet rt=st.executeQuery("select * from files where idfiles='"+id+"'");
    StringBuffer sb=new StringBuffer();
    if(rt.next()){
        secondKey=rt.getString("second_key");
        fname=rt.getString("filename");
        contents = rt.getString("content");
        
//        InputStream is=rt.getAsciiStream("content");
//        BufferedReader br=new BufferedReader(new InputStreamReader(is));

//    String temp=null;
//    while((temp=br.readLine())!=null){
//            sb.append(temp);
//        }
//    System.out.println(sb.toString());
//    String content=new decryption().decrypt(sb.toString(),fkey);
//  
%>
<form id="f1" method="post" onsubmit="return checkKey();">
    <input type="hidden" name="savedOutK" id="savedK"value="<%=secondKey%>"/><br/>
    <h1>File Name: <font style="color: tomato"> <%=fname%></font></h1>
    <input type="hidden" name="fid" value="<%=id%>"/><br/>
    <textarea name="fcontent" style="width: 400px;height: 400px;position: relative;left: 250px;"><%=contents%></textarea><br><br><br>
    <label style="margin-left: 250px">Enter Public Key:</label><br/>
    <input type="text" name="seconKey" id="seconKey" style="margin-left: 200px"/>
    <input type="submit" value="Decrypt" id="but"/>
<%
}
%>
<!--<pre>
                                                                      <input type="submit" id="but"value="Update"/>
</pre>-->
</form>

       
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
