<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>all  posts</title>
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
.style8 {color: #FFFF00; font-weight: bold; }
.style10 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style3"> All posts </h2>
          <div class="indent">
           
           <table width="533" align="center"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4;
		int i=0,j=0,m=0;
		
		try 
		{
				if(m==0){
				%>
				 <tr> 
				<td width="50" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">User Post</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">User Name</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">Posted Post</div></td>
				<td width="60" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style8">Details</div></td>
		   </tr>
				<%}
				
				String sql3="select * from posts";
				Statement st3=connection.createStatement();
				ResultSet rs3=st3.executeQuery(sql3);
			   while(rs3.next())
			   {
				j=rs3.getInt(1); 
				s1=rs3.getString(2);
						
				String sql2="select id from user where username='"+s1+"'";
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(sql2);
			   if(rs2.next())
			   {
			 
				i=rs2.getInt(1); 
				
					%>
					
						<tr>
					<td width="126" valign="middle" bgcolor="#FFFFFF" ><div class="style10" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
		 		 <td width="94" height="65" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">  <span class="style10">
	 		      <%out.println(s1);%>
		 		 </span></td>
			    <td width="126" valign="middle" bgcolor="#FFFFFF" ><div class="style10" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
                <td  width="94" height="26"align="center" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><a href="viewpostdetails.jsp?id=<%=j%>" class="style10">View post</a></td>
						</tr>
					
						<%m=2;
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
			  
              <p align="right"><a href="agentmain.jsp">Back</a></p>
          
            
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
