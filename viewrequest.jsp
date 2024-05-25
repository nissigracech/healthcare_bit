<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>friends requests</title>
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
.style7 {color: #FFFF00}
.style8 {color: #FFFF00; font-weight: bold; }
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
				  <li><a href="user_details.jsp"></a></li>
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
          <h2 class="style3"> Friend Requests </h2>
          <div class="indent">
           
           <table width="381" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
	String s1,s2,s3,s4;
	int i=0,j=0;
	
	try 
	{
	
		
		String sql1="select id,rfrom,status from friends where (rto='"+user+"')";
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(sql1);
		while(rs1.next())
		{
			 j=rs1.getInt(1);			
			 s1 =rs1.getString(2);
			 s2= rs1.getString(3);
			
			String sql="select id from user where username='"+s1+"'";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			if(rs.next())
			{
				i=rs.getInt(1);
	
	%>
          
			<tr>
					<td width="153" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="65" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">Name</div></td>
			 <td width="78" valign="middle" height="65" style="color:#000000;"><%out.println(s1);%></td></tr>
				   <tr>
				    <td width="65" height="26" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">Status</div></td>
              <%
						if(s2.equals("waiting")){
						%>
              <td  width="78" valign="middle" height="26" style="color:#000000;"align="center"> <a href="updatestatus.jsp?id=<%=j%>">waiting</a></td>
              <%
						}else{
						%>
              <td  width="83" valign="middle" height="26" style="color:#000000;"align="center"><%=s2 %>&nbsp;</td>
              <%
						}
						%>
            </tr>
            <%
				
						}
							
					}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
              <p>&nbsp;</p>
			  
              <p align="right"><a href="usermain.jsp">Back</a></p>
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
