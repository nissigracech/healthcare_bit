<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>users registration form</title>
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
.style4 {color: #99FF00}
.style6 {font-weight: bold}
.style7 {color: #FFFF00; font-weight: bold; }
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
	  <li><a href="register.jsp"><span>Register</span></a> </li>
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
        <div class="inner_copy">More <a href="#">Website Templates</a> @ Templates.com!</div>
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
          <h2 class="style3">User ReGISTRATION Form </h2>
        </div>
        <!-- box2 begin -->
        <div class="box2">
          <div class="inner">
                <div align="justify">
				 <form action="insertdata.jsp" method="post" id="" enctype="multipart/form-data">
					  <p><img src="images/Register.png" alt="" width="155" height="96" /></p>
					  <table width="513">
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Select Group(required) </span></td>
                          <td><select id="select" name="group" style="width:175px;" class="text">
                            <option>--Select--</option>
                            <option>Music</option>
                            <option>Sports</option>
							<option>Education</option>
							<option>Healthcare</option>
							<option>Cinema</option>
							
                          </select></td>
                        </tr>
                        <tr>
                          <td width="181" height="43" bgcolor="#FF0000"><span class="style7">User Name (required)</span></td>
                          <td width="320"><input id="name" name="userid" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Password (required)</span></td>
                          <td><input type="password" id="password" name="pass" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Email Address (required)</span></td>
                          <td><input id="email" name="email" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Mobile Number (required)</span></td>
                          <td><input id="mobile" name="mobile" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Date of Birth (required)</span></td>
                          <td><input id="dob" name="dob" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Select Gender (required)</span></td>
                          <td><select id="s1" name="gender" style="width:175px;" class="text">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="65" bgcolor="#FF0000"><span class="style7">Address</span></td>
                          <td><textarea id="address" name="address" rows="3" cols="25"></textarea></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Enter Pincode (required)</span></td>
                          <td><input id="pincode" name="pincode" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style7">Select Profile Picture(required) </span></td>
                          <td><input type="file" id="pic" name="pic" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            <p align="right"><a href="userlogin.jsp" class="style4">Back</a></p>
                          </div></td>
                        </tr>
               </table>
            </form>
				
				</div>
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
