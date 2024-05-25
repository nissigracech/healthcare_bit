<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>view queries</title>
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
.style9 {color: #FF0000}
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
          <h2 class="style3"> All queries</h2>
          <div class="indent">
           
           <table width="572" align="center"  cellpadding="0" cellspacing="0"  >
		   
		   
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
				<td width="126" valign="middle" height="65" style="color:#000000;"><div align="center" class="style7"><strong>Post  Image</strong></div></td>
				<td width="89" valign="middle" height="65" style="color:#000000;"><div align="center" class="style8">User Name</div></td>
				<td width="129" valign="middle" height="65" style="color:#000000;"><div align="center" class="style8">Message</div></td>
				<td width="147" valign="middle" height="65" style="color:#000000;"><div align="center" class="style8">Reply</div></td>
				<td width="79" valign="middle" height="65" style="color:#000000;"><div align="center" class="style7"></div></td>
		   </tr>
				<%}
											
				String sql1="select * from query";
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				while(rs1.next())
					{
						j=rs1.getInt(1);
						String sender =rs1.getString(2);
						String qry =rs1.getString(3);
						
						
						String sql2="select id from user where username='"+sender+"'";
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(sql2);
					   if(rs2.next())
					   {
					    i=rs2.getInt(1); 
						
						%>
					<form id="form1" method="post" action="replyquery.jsp?id=<%=j%>">
						<tr>
					<td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
		 		 <td width="89" valign="middle" height="65" style="color:#000000;">  <div align="center" class="style9">
		 		   <%out.println(sender);%>
		 		   </div></td>
				  <td width="129" valign="middle" height="65" style="color:#000000;">  <div align="center" class="style9">
				    <%out.println(qry);%>
				    </div></td>
				  <td width="147" valign="middle" height="65" style="color:#000000;"> <p align="center" class="style9">
				    <textarea name="reply" cols="20" rows="3"></textarea>
				    </p>
				    <p align="center" class="style9">
				      <% String msg=(String)application.getAttribute("msg");
					 if(msg!=null){
					 %>
			        </p>
				    <h5 align="center" class="style9"><%=msg%></h5> 
				    <div align="center" class="style9">
				      <%
					 application.removeAttribute("msg");
						}%>
		            </div></td>
				  <td width="79" valign="middle" height="65" style="color:#000000;">
				    <p>
				      <span class="style9">
			        <label>
		              <div align="center">
			            <input type="submit" name="Submit" value="Send" />
	                  </div>
			        </label>
			        </p>				  
			          </span></td>
						</tr>
			  </form>
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
