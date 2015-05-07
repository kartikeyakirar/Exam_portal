<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="p" %>
<html>
<head>
<title>Examination Hub</title>
</head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5 vLink=#f0f0f0 background="C:\Users\priyanka\Desktop\PRO\bkgrnd.jpg" >
<TABLE width="100%" bgColor=Lavender>
<TR>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>
<TR>
<p:insert attribute="HEAD"></p:insert>
<br>
<TABLE  width="100%">
<TR>
<TD bgColor=#c0c0c0 vAlign=top width="18%" align=middle>&nbsp;
<p:insert attribute="MENU"></p:insert></td>
<P>

<P> </P>
<P></P><td>
<p:insert attribute="BODY"></p:insert>
<br></td></tr>
<tr>
    <td>
</TABLE>
  <TABLE width="100%" bgColor=Lavender>
<TR>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>
            <p:insert attribute="FOOTER"></p:insert></table>
</body>
</html>