<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>wrong login page</title>
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
.style2 {color: #999999}
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
                  <li><a href="index.html">Home</a></li>
				  <li></li>
				  <li><a href="userlogin.jsp"></a> </li>
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
          <h2 class="style3">Login failed..!!! </h2>
          <div class="indent">
           
              <table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0>
<tr>
<td width="405" height="189" align=center><span class="style8"><span class="style9"><span class="style8"><font class=sb4>Sorry.</font><BR>
        <BR>
        <font class=sb3>
Your login failed.<BR>
        </font></span></span></span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 height="7">
    <TR><TD height=7 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">This happens due to - Incorrect Username / Incorrect password<BR>
        </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 width="10">
    <TR>
      <TD width="10" height=9 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">In case you have forgotten your password,<BR>
        </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0>
    <TR><TD height=9 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">click&nbsp; here to re enter correct&nbsp; username or password on homepage.</font></span><span class="style9"><font class="sb3"></font><font class="sb3"><BR>
  </font></span><font class="sb3">&nbsp;</font><font class="sb3"><BR>
  <%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
  <a href="userlogin.jsp">Click here to go back</a>	<br />	<a href="index.html"><span class="">Home Page</span></a>
  </BR>
  <%}
else{
%>
  <a href="agentlogin.jsp">Click here to go back</a><BR>
  <a href="index.html"><span>Home Page</span></a>
  <%}%>
  </font></td>
</tr>
</table>
          
          </div>
        </div>
        <!-- box2 begin -->
        <div class="box2">
          <div class="inner">
            <h3>About ProJECT :</h3>
            <ul class="img-list">
              <li> 
                <div align="justify"><img alt="" src="images/img1.png" />                </div>
                <h5 align="justify"><a href="#">Group Behavior Tendency
                in Social Networks</a></h5>
                <div align="justify">Group behavior tendency is public opinion—is a
                  publicly released, generally agreed upon attitude or opinion
                  about a certain social incident by the general public
                  under a specified time and space.</div>
              </li>

              <li> 
                <div align="justify"><img alt="" src="images/img1.png" />                </div>
                <h5 align="justify"><a href="#">Social Network Behavior
                Formation Analysis</a></h5>
                <div align="justify">In social network behavior formation analysis, traditional
                  analysis approaches can’t accurately describe features such
                  as strong interaction evolution and public emotional drift
                  in large-scale online social networks.</div>
              </li>
              <li class="last"> 
                <div align="justify"><img alt="" src="images/img1.png" />
                </div>
                <h5 align="justify"><a href="#">Social Network Behavior
                Interaction Analysis</a></h5>
                <div align="justify">There are all kinds of interaction relations between participants
                  in social networks, but the most important one is trust.</div>
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






















