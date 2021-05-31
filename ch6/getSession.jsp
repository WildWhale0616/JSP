<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>取出session值</FONT></CENTER>
<HR>
<%
Object user = session.getAttribute("usr");

if(user != null)
{
%>
<CENTER><FONT Size=5 Color=red>歡迎<%= user %>!</FONT></CENTER><p>
<CENTER><FONT Size=5 Color=red>session ID：<%= session.getId() %></FONT></CENTER>
<a href="logout.jsp">登出</a>
<%
}
else
{
  response.sendRedirect("login.jsp");
}
%>
</HTML>

