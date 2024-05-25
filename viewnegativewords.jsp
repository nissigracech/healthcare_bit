<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>all Restricted words </title>
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
          <h2 class="style3">ALL Negative Restricted  BOT words  </h2>
          <div class="indent">
          <div align="justify">
                 <table width="562" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
           
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from negative"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	if( rs.next() )
	{
		
			%>
			 <tr>
              <td  width="104" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Id</div></td>
		   <td  width="129" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Word Type</div></td>
			 <td  width="109" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">BOT  Word</div></td>
              <td  width="206" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style11">Date</div></td>
             
            </tr>
			<%
			
				String query1="select * from negative"; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(query1);
				while( rs1.next() )
				{
					i=rs1.getInt(1);
					s1=rs1.getString(2);
					s2=rs1.getString(3);
					s3=rs1.getString(4);
						%>
			
            <tr>
			
              <td  width="104" height="56" align="center" valign="middle" bordercolor="#FFFFFF" bgcolor="#FFFFFF" ><%out.println(i);%></td>
              <td  width="129" height="56" align="center" valign="middle" bordercolor="#FFFFFF" bgcolor="#FFFFFF"><%out.println(s1);%></td>
			   <td  width="109" height="56" align="center" valign="middle" bordercolor="#FFFFFF" bgcolor="#FFFFFF"><%out.println(s2);%></td>
			   <td  width="206" height="56" align="center" valign="middle" bordercolor="#FFFFFF" bgcolor="#FFFFFF"><%out.println(s3);%></td>
         
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
