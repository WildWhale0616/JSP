<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>< jsp:forward >的使用</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:forward >的使用</FONT>
</CENTER>
<HR>
<%
int choice = 1;

if(choice == 1)
{
%>

使用<Font color = red>< jsp:forward ></Font>將瀏覽器導向JSP網頁<BR>
<jsp:forward page="JSPInc.jsp">
	<jsp:param name="name" value="Shung-Chun Kuo"/> 
	<jsp:param name="age" value="27"/> 
</jsp:forward>
<P></P>
<%
}
else
{
%>
使用<Font color = red>< jsp:forward ></Font>將瀏覽器導向HTML網頁<BR>
<jsp:forward page="HTMLInc.htm"/>
<%
}
%>	

</BODY>
</HTML>
