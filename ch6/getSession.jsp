<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>���Xsession��</FONT></CENTER>
<HR>
<%
Object user = session.getAttribute("usr");

if(user != null)
{
%>
<CENTER><FONT Size=5 Color=red>�w��<%= user %>!</FONT></CENTER><p>
<CENTER><FONT Size=5 Color=red>session ID�G<%= session.getId() %></FONT></CENTER>
<a href="logout.jsp">�n�X</a>
<%
}
else
{
  response.sendRedirect("login.jsp");
}
%>
</HTML>

