
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
			
					String word=request.getParameter("word");
					String wtype=request.getParameter("wtype");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						
						PreparedStatement ps=connection.prepareStatement("insert into negative(type,word,dt) values(?,?,?)");
						ps.setString(1,wtype);
						ps.setString(2,word);
						ps.setString(3,dt);	
										
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							String msg="Restricted word added Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("addnegativewords.jsp");
							
			  			 }
						
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
