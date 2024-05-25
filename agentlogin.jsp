<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>OSN login page</title>
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
.style6 {color: #0066FF}
.style10 {color: #FF0000; font-weight: bold; }
.style11 {color: #FFFFFF}
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
      <ul class="nav">
        <li class="first"><a href="index.html">Home</a></li>
	  <li><a href="userlogin.jsp"><span>User</span></a> </li>
	        <li><a href="agentlogin.jsp">OSN</a></li>
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
				  <li><a href="userlogin.jsp">User</a></li>
				  <li><a href="agentlogin.jsp">OSN</a> </li>
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
          <h2 class="style3">OSN LoGIN </h2>
          <div class="indent">
            <form action="authentication.jsp?type=<%="agent"%>" method="post">
		  
          <p><img src="images/Login.jpg" alt="" width="135" height="110" /></p>
          <table width="480">
            <tr>
              <td width="162" height="48" bgcolor="#FFFFFF"><span class="style10">User Name (required)</span></td>
                    <td width="347"><input id="name" name="userid" class="text" /></td>
            </tr>
            <tr>
              <td height="44" bgcolor="#FFFFFF"><span class="style10">Password (required)</span></td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
            </tr>
            <tr>
             <td height="51"></td>
          <td><span class="style2">
            <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
            <input name="Reset" type="reset" class="style3" value="Reset" />
          </span></td>
            </tr>
          </table>
		  <p>&nbsp;</p>
		  </form>
			
			
           
        </div>
        <!-- box2 begin -->
        <div class="box2">
          <div class="inner">
            <h3>&nbsp;</h3>
            <ul class="img-list">
              <li></li>
              <li></li>
              <li class="last"></li>
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
