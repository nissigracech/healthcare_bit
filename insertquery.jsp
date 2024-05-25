<title>Insert query</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
				
					String user=(String)application.getAttribute("user");
					String q1=request.getParameter("q1");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						
						PreparedStatement ps=connection.prepareStatement("insert into query(sender,msg,dt1) values(?,?,?)");
						ps.setString(1,user);
						ps.setString(2,q1);	
						ps.setString(3,dt);
						
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							String msg="Your Query Sent Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("sendquery.jsp");
							
			  			 }
						
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
