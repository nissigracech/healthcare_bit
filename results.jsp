<%@ include file="connect.jsp"%>


<%
try
{
String uname=request.getParameter("uname");
ResultSet rs=connection.createStatement().executeQuery("SELECT type,total FROM behavior where username='"+uname+"'");
%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(1);
	
	int s4=Integer.parseInt(rs.getString(2));
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s4%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#33FF00');
	myChart.setBarOpacity(0.8);
	myChart.setSize(300, 400);
	myChart.setBarBorderColor('#33FF00');
	myChart.setBarValues(true);
	myChart.setTitleColor('#33FF00');
	myChart.setAxisColor('#33FF00');
	myChart.setAxisValuesColor('#33FF00');
	myChart.draw();
	
  </script>
 
    
  </div>
</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>