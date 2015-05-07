<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head><title>Error</title></head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5 bgColor=#98afc7 vLink=#f0f0f0 >
<TABLE  width="100%" bgColor=Lavender>
<TR>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>

<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
try
		{int i=1;

		//ServletContext ctx=getServletContext();
               // con=(Connection)ctx.getAttribute("conn");
                Statement st1=con.createStatement();
String str=("select * from edetails");
		ResultSet rs1=st1.executeQuery(str);
		while(rs1.next())
		{

         out.println(" <tr>");
         out.print(" <td> ");
         out.print(i++);
         out.print("->");
	out.print(rs1.getString(1)+"<br>"+"</td>"+"</tr>");
                }}
                catch(Exception e)
                {
                out.print(e.getMessage());
                }
         
%>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
</TABLE>
<P>


<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
</TABLE>
<P>
</body>
</html>