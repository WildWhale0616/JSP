<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>session�s���εn��</FONT></CENTER>
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
    session.setAttribute("usr", user);
%>
<CENTER><FONT Size=5 Color=red>�n�����\</FONT></CENTER>
<a href="getSession.jsp">���Xsession��</a>
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

