<%@ page contentType="text/html" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>Cookie�s���εn��</FONT></CENTER>
<HR>
<%
String user = request.getParameter("user");
String passwd = request.getParameter("passwd");

if(user == null || passwd == null)
{
%>
<FORM Name=login Action=login.jsp Method=get>
�п�J�ϥΪ̱b���G<INPUT Name=user><p>
�п�J�K�X�G<INPUT Type=password Name=passwd><p>
<INPUT Type=submit Name=b1 Value=�T�w>
<INPUT Type=reset Name=r1 Value=�M��><p>
<%
}
else
{
  if(user.equals("yu") && passwd.equals("1234"))
  {
    Cookie usr = new Cookie("user", user);
    response.addCookie(usr);
%>
<CENTER><FONT Size=5 Color=red>�n�����\</FONT></CENTER>
<a href="getCookie.jsp">���XCookie��</a>
<%
  }
  else
  {
%>
<CENTER><FONT Size=5 Color=red>�n������</FONT></CENTER>
<%
  }
}
%>
</HTML>

