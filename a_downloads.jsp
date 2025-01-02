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
          if(document.name.token.value==0){
              alert('Enter your token');
              document.name.token.focus();
              return false;
          }
      }
  </script>
  
  <style>
      form,h1{
          position: relative;
          left: 0px;
          
      }
      
    #id{
        width: 200px;
        height: 25px;
        background-color: #D5D5D5;
    }
    #but{
        width: 60px;
        height: 25px;
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
if(request.getParameter("updated")!=null){
    out.println("<script>alert('updated....')</script>");
}    

%>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <pre><h1><a href="#"> ENSURING DATA INTEGRITY AND ELIMINATING REDUNDANCY IN CLOUD STORAGE</a></h1></pre>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
            <li><a href="admin_page.jsp">Auditor Home</a></li>
            <li><a href="audit_approve.jsp">File Approval</a></li>
         <li><a href="a_uploads.jsp">Uploads</a></li>
        <li><a href="a_downloads.jsp">Downloads</a></li>
        <li><a href="a_updates.jsp">Updates</a></li>
        <li><a href="index.html">Logout</a></li>
        
<!--          <li><a href="#"><img width="40" height="40" src="images/user.png" alt="photo_two" /></a>
            <ul>
                <li><a href="index.html">Logout</a></li>
                <li><a href="register.jsp">Register</a></li>
             
            </ul>-->
          </li>
         
        </ul>
      </nav>
    </header>
    <div id="site_content">

      <div id="content">
          <%
     

Connection con=Dbconnection.getConn();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from downloads");
%>


<center>
                         <table style="border-style: solid">
                            <caption> <h2 style="color: darkslateblue;font-family: monospace;font-weight: bold;font-size: 30px">DOWNLOADS VIEW</h2></caption>
                            <tr style="background-color: #999999;font-size: 18px;font-family: monospace;font-weight: bold;">                                
                                <td style="text-align: center">FILE NAME</td> <td style="text-align: center">USER NAME</td><td style="text-align: center">DOWNLOADED TIME</td>
                            </tr>
                            <%
while(rt.next()){  
%>
                            <TR>
                                <td style="text-align: center"><%=rt.getString("filename")%></td>
                                <td style="text-align: center"><%=rt.getString("username")%></td>
                                <td style="text-align: center"><%=rt.getString("time")%></td>
                            </TR>
                            <%}%>
    </table>
</center>

       
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
