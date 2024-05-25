<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>search friends</title>
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
          <h2 class="style3">search Friends !!! </h2>
          <div class="indent">
           
             <form action="searchfriendresults.jsp" method="post">
		  
               <p>&nbsp;</p>
               <table width="513">
            <tr>
              <td width="163" height="48"><span class="style4">Search Friends with Name </span></td>
                    <td width="200"><input id="name" name="key" class="text" /></td>
                    <td width="134"><input name="imageField" type="submit"  class="style6" id="imageField" value="Search" /></td>
            </tr>
          </table>
		  </form>
		    <%
			 String msg=(String)application.getAttribute("msg");
			 if(msg!=null){
			 %><h3 class="style8"> <%=msg%></h3> <%
			 application.removeAttribute("msg");
			}
			  
			  %>
          
             <p>&nbsp;</p>
             <p>&nbsp;</p>
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
