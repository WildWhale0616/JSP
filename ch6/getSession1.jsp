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
<a href="<%= response.encodeURL("logout.jsp") %>">登出</a>
<%
}
else
{
// 如以response.sendRedirect()網頁轉向, 應用response.encodeRedirectURL()附加Session ID,
// 但在tomcat-10.0.4-windows-x86似乎以response.encodeURL()也有效
  response.sendRedirect(response.encodeURL("login1.jsp"));
}
%>
</HTML>

