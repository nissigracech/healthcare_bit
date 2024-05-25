<title>Insert comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
					
				
					
					String id=request.getParameter("id");
					String user=(String)application.getAttribute("user");
					String cmt=request.getParameter("cmt");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						String query="select * from posts where id='"+id+"'"; 
						Statement st=connection.createStatement();
						ResultSet rs=st.executeQuery(query);
						if ( rs.next() )
						{
							
							String s1=rs.getString(2);
							String s2=rs.getString(3);
							
         
    	
						PreparedStatement ps=connection.prepareStatement("insert into comments(sender,title,commented_user,comment,dt) values(?,?,?,?,?)");
						ps.setString(1,s1);
						ps.setString(2,s2);	
						ps.setString(3,user);
						ps.setString(4,cmt);
						ps.setString(5,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							String msg="Your comment posted Successfully";
							application.setAttribute("msg",msg);
						%>	
						<h2> <% out.print(msg);%> </h2>
							
			  			<p>
			  			  <% }
						 }
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
</p>
			  			<p>&nbsp;</p>
			  			<p><a href="usermain.jsp">Back</a>                        </p>
						