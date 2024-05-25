<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>posts details</title>
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
.style4 {color: #33FF00; }
.style6 {color: #0066FF}
.style7 {color: #FFFF00}
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
	  <%String agent=(String)application.getAttribute("agent");%>
      <ul class="nav">
        <li class="first"><a href="agentmain.jsp">Home</a></li>
	  <li><a href="#"><span><%=agent%></span></a> </li>
	        <li><a href="agentlogin.jsp">Logout</a></li>
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
                  <li><a href="agentmain.jsp">Home</a></li>
				  <li><a href="agentlogin.jsp">Logout</a> </li>
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
          <h2 class="style3">  post Details </h2>
          <div class="indent">
           
           <p><table width="547" border="1" align="center"  >
					
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id=request.getParameter("pname");
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from posts where img_title='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
						
						
					%>
					<tr>
					<td width="230" rowspan="8" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="post"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					  <td  width="127" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>User Name</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#000000;"><div align="left" class="style4" style="margin-left:20px;">
					    <%out.println(s1);%></div></td>
					</tr>
					
					<tr>
					  <td  width="127" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Post Title </strong></div></td>
					  <td  width="182" valign="middle" height="40" style="color:#000000;"><div align="left" class="style4" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					
					<tr>
					  <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3" style="margin-left:20px;"><strong>Post Description</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s4);%>
                      </div></td>
			  </tr>
			  
			  <tr>
			    <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3" style="margin-left:20px;"><strong>Post Sp Message</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s5);%>
                      </div></td>
			  </tr>
			   <tr>
			     <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3" style="margin-left:20px;"><strong>Posted Date</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s6);%>
                      </div></td>
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
				</p>
              <p>&nbsp;</p>
			  
              <p align="right"><a href="usersbehavior.jsp">Back</a></p>
          
            
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
