<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>user details</title>
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
.style11 {font-size: 16px}
.style12 {color: #FFFF00}
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
	  <%
	  String user=(String )application.getAttribute("user");
	%>
	  
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
          <h2 class="style3"> Profile Details </h2>
          <div class="indent">
          <div align="justify">
                  <table width="552" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id = request.getParameter("mid");
					
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(9);
								

					%>
					<tr>
					<td width="226" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"/></div></td>
					</tr>
					
					<tr>
					  <td  width="150" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style12 style8 style7 style14" style="margin-left:20px;"><strong>Name</strong></div></td>
	  <td  width="168" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="150" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style12 style8 style7 style14" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="168" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="150" height="51" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style12 style8 style7 style14" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="168" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="150" height="46" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style12 style8 style7 style14" style="margin-left:20px;"><strong>Date Of Birth</strong></div> </td>                    	
<td  width="168" align="left" valign="middle" height="46"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="150" height="59" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style12 style8 style7 style14" style="margin-left:20px;"><strong>Address</strong></div></td>
					  <td  width="168" align="left" valign="middle" height="59"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					
					 
				<%
					
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		  </table>
            </div>
          </div>
          <div align="right">
         
			<p><a href="usermain.jsp">Back</a></p>
			
          </div>
        </div>
        <!-- box2 begin -->
        <div class="box2">
          <div class="inner">
           </div>
              </li>
            </ul>
          </div>
        </div>
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
