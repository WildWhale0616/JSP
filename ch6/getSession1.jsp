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
<a href="<%= response.encodeURL("logout.jsp") %>">�n�X</a>
<%
}
else
{
// �p�Hresponse.sendRedirect()������V, ����response.encodeRedirectURL()���[Session ID,
// ���btomcat-10.0.4-windows-x86���G�Hresponse.encodeURL()�]����
  response.sendRedirect(response.encodeURL("login1.jsp"));
}
%>
</HTML>

