<%@ page contentType="text/html" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>取出Cookie值</FONT></CENTER>
<HR>
<%
int login = 0;
Cookie cookies[] = request.getCookies();
for(int i = 0; i < cookies.length; i++)
{
  if(cookies[i].getName().equals("user"))
  {
    login = 1;
%>
<CENTER><FONT Size=5 Color=red>歡迎<%= cookies[i].getValue() %>!</FONT></CENTER>
<a href="logout.jsp">登出</a>
<%
  }
}

if(login == 0)
{
  response.sendRedirect("login.jsp");
}
%>
</HTML>

