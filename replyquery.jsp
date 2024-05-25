
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
			
					String id=request.getParameter("id");
					String reply=request.getParameter("reply");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;

						String sql="update query set reply='"+reply+"',dt2='"+dt+"' where id='"+id+"'";
						Statement st=connection.createStatement();
						int x=st.executeUpdate(sql);
						if(x>0)
						{
							
							String msg="Query Sent Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("viewqueries.jsp");
							
			  			 }
						
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
