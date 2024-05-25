<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>users behavior</title>
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
.style8 {color: #FFCC33}
.style9 {color: #0000FF}
.style10 {color: #99CC33}
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
          <h2 class="style3">Users BOTS Behavior !!! </h2>
          <div class="indent">
           
           <p><table width="547" border="1" align="center"  >
					
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

	<%
		String uname=request.getParameter("uname");
		String s1="",s2="",s3,s4,s5,s6,wtype="",word="";
		int i=0,count=0,k=0;
		try 
		{
			ArrayList al=new ArrayList();
			ArrayList al1=new ArrayList();
			Set set=new HashSet();
			
			/*String sql6="select distinct(title) from comments where commented_user='"+uname+"'";
			Statement st6=connection.createStatement();
			ResultSet rs6=st6.executeQuery(sql6);
			while(rs6.next())
			{
					s2=rs6.getString(1);
					al1.add(s2);		
			}*/
			
			
				
				String sql1="select distinct(type)from negative"; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				while(rs1.next())
				{
						wtype=rs1.getString(1);
						
				
								String sql="select comment from comments where commented_user='"+uname+"'"; 
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next() )
								{
								s1=rs.getString(1);
									
									String sql2="select word from negative where type='"+wtype+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql2);
									while(rs2.next())
									{
										word=rs2.getString(1).toLowerCase();
								
									String s11=s1.toLowerCase();
										
										if(s11.contains(word))
										{
										al.add(word);
										count=count+1;
										set.add(s1);
										}
																							
									}
								
								}
							
				
					if(!(al.isEmpty()))
					{
						%>
								<h5><span class="style8">Username</span>: <%=uname%></h5>
								<h5><span class="style8">Comments</span>:	<%=set%></h5>
								<h5><span class="style8">Bot Type</span>: <%=wtype%></h5>
								<h5><span class="style8">Used Bot words:</span> <%=al%></h5>
								<h5><span class="style8">Total Bot words found:</span> <%=count%></h5>
								</br></br>
								<%
								String sql4="select * from behavior where (username='"+uname+"' and type='"+wtype+"')";
							Statement st4=connection.createStatement();
							ResultSet rs4=st4.executeQuery(sql4);
							if(rs4.next())
							{
								String sql5="update behavior set words='"+al+"',total='"+count+"' where username='"+uname+"' and type='"+wtype+"'";
								Statement st5=connection.createStatement();
								st5.executeUpdate(sql5);
								
							}
							else
							{
						
								String sql3="insert into behavior(username,type,words,total)values('"+uname+"','"+wtype+"','"+al+"','"+count+"')";
								Statement st3=connection.createStatement();
								int x=st3.executeUpdate(sql3);
		
							}al.clear();
							
						}
				
				count=0;
				
				set.clear();
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
