<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>send images</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Myriad_Pro_400.font.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, .extra-bg, .box, .box1, .box2, .img-list img');</script>
<![endif]-->
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF3366;
}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style6 {color: #0066FF}
.style9 {color: #FFFF00; font-weight: bold; }
.style10 {color: #FFFF00}
-->
</style>
</head>
<body id="page1">
<div id="main">
  <div class="extra-bg"></div>
  <!-- header -->
  <div id="header">
    <div class="row-1">
      <ul class="top-links">
        <li><a href="#"><img alt="" src="images/home-icon.gif" /></a></li>
        <li><a href="#"><img alt="" src="images/mail-icon.gif" /></a></li>
      </ul>
	  <%String user=(String)application.getAttribute("user");%>
      <ul class="nav">
        <li class="first"><a href="usermain.jsp">Home</a></li>
	  <li><a href="#"><span><%=user%></span></a> </li>
	        <li><a href="userlogin.jsp">Logout</a></li>
      </ul>
    </div>
    <div class="row-2 style6">
      <p  class="first  style1">&nbsp;</p>
      </div>
  </div>
  <!-- content -->
  <div id="content">
    <div class="wrapper">
      <div class="aside">
        <div class="inner_copy"></div>
        <div class="section">
          <!-- box begin -->
          <div class="box">
            <div class="inner">
              <h4><span><span>Menu</span></span></h4>
              <div class="inner">
                <ul>
                  <li><a href="usermain.jsp">Home</a></li>
				  <li><a href="user_details.jsp">View Profile</a></li>
				  <li><a href="userlogin.jsp">Logout</a> </li>
			    </ul>
              </div>
            </div>
          </div>
          <!-- box end -->
        </div>
        <!-- box1 begin -->
       
        <!-- box1 end -->
      </div>
      <div class="mainContent">
        <div class="section">
          <h2 class="style3"> Add POST DETAILS !!! </h2>
          <div class="indent">
           
           <table width="497" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
	String s1,s2,s3,s4;
	int i=0,j=0;
	
	try 
	{
	
	%>
				 <form action="insertimage.jsp" method="post" enctype="multipart/form-data">
			      
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FF0000"><span class="style9">Post Title</span> </td>
                      <td><input id="tname" name="iname" class="text" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FF0000"><span class="style9">Select Post Image </span></td>
                      <td><input type="file" id="pic" name="pic" class="text" /></td>
                    </tr>
                    <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FF0000"><span class="style9">Post Description</span></td>
                      <td><textarea id="desc" name="desc" rows="3" cols="40"></textarea></td>
                    </tr>
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FF0000"><span class="style9">Post Uses</span></td>
                      <td><textarea id="use" name="use" rows="3" cols="40"></textarea></td>
                    </tr>
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FF0000"><span class="style9">Post Specialty Message</span></td>
                      <td><textarea id="msg" name="msg" rows="3" cols="40"></textarea></td>
                    </tr>
                    
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FF0000"><p class="style10">&nbsp;
                        </p>
                      <p class="style10">&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                    <p>&nbsp;</p>
                          <input name="submit" type="submit" value="Post" />
                        </p>
                      </div></td>
                    </tr>
			  </form>
		    </table>
				
			  
			   
            <%	String mesg=(String)application.getAttribute("mesg");
			if(mesg!=null){
			out.print("<h3>"+mesg+"</h3>");
			application.removeAttribute("mesg");
			}
			
								
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
    

		
			
              <p>&nbsp;</p>
			  
              <p align="right"><a href="usermain.jsp">Back</a></p>
          
          </div>
        </div>
        <!-- box2 begin -->
       
        <!-- box2 end -->
      </div>
    </div>
  </div>
  <!-- footer -->
  <div id="footer">
    <ul class="nav">
      <li></li>
    </ul>
    <div class="wrapper aligncenter"></div>
  </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
<div align=center></div>
</body>
</html>
