<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>all friends list </title>
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
.style10 {font-size: 14px; font-family: Georgia, "Times New Roman", Times, serif; color: #FFFF00; }
.style11 {font-size: 16px}
.style12 {color: #FF0000}
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
				  <li><a href="allusers.jsp"></a></li>
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
          <h2 class="style3">ALL Friends LIST </h2>
          <div class="indent">
          <div align="justify">
                 <table width="540" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="126" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">User Post </div></td>
			  <td  width="81" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Username</div></td>
              <td  width="126" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Friend Post </div></td>
              <td   width="94" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Friend Name </div></td>
              <td  width="97" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select rfrom,rto,status from friends"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		
			String query1="select id from user where username='"+s1+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if(rs1.next())
			{
				i=rs1.getInt(1);
			%>
            <tr>
			<td width="126" valign="middle" ><div class="style7 style12" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="81" height="56" align="center" valign="middle" ><span class="style12">
                <%out.println(s1);%>
              </span></td>
              <%
			    String query2="select id from user where username='"+s2+"'"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				if(rs2.next())
				{
					i=rs2.getInt(1);
			  %>
			  <td width="126" valign="middle" ><div class="style7 style12" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="94" height="56" align="center" valign="middle"><span class="style12">
                <%out.println(s2);%>
              </span></td>
              <td  width="97" height="56" align="center" valign="middle"><span class="style12">
                <%out.println(s3);%>
              </span></td>
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
          <div align="right"><a href="agentmain.jsp">Back</a></div>
          </div>
        </div>
        <!-- box2 begin -->
        <div class="box2">
          <div class="inner">
           
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
