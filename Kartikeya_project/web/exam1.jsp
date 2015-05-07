
<%@page import="java.sql.*" %>
<html>
<head><title>Error</title></head>
<body bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0 topMargin=5 bgColor=#98afc7 vLink=#f0f0f0 >
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%" bgColor=#4e9258>
    <tr>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>
<TR>
<TD height=100 width="25%"><IMG border=0 alt=""
src="logo.gif" width=250
height=100>&nbsp;</TD>
<TD height=100 width="50%"><IMG border=0 alt=""
src="logo2.jpg" width=580
height=100>
</TD>
<TD height=100 width="25%"><IMG border=0 alt=""
src="logo.gif" width=250
height=100>&nbsp;</TD>
</tr></table>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
try
		{

		//ServletContext ctx=getServletContext();
               // con=(Connection)ctx.getAttribute("conn");
                Statement st1=con.createStatement();
String str=("select * from edetails");
		ResultSet rs1=st1.executeQuery(str);
		while(rs1.next())
		{
%>
          <tr>
            <td valign="top" class="right">
              <%=rs1.getString(1)%><br/>
              <%=rs1.getString(2)%><br/>
              <%=rs1.getString(3) %><br/>
              <%=rs1.getString(4) %><br/>
              <%=rs1.getString(5) %><br/>
              <%=rs1.getString(6) %><br/>
              <%=rs1.getString(7) %>

             </td>
          </tr>

           <%
                          }


                }
                catch(Exception e)
                {out.println(e.getMessage());
          %>


<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
</TABLE>
<P>
</body>
</html>