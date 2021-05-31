<%@ page contentType="text/html" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>Cookie存取及登錄</FONT></CENTER>
<HR>
<%
String user = request.getParameter("user");
String passwd = request.getParameter("passwd");

if(user == null || passwd == null)
{
%>
<FORM Name=login Action=login.jsp Method=get>
請輸入使用者帳號：<INPUT Name=user><p>
請輸入密碼：<INPUT Type=password Name=passwd><p>
<INPUT Type=submit Name=b1 Value=確定>
<INPUT Type=reset Name=r1 Value=清除><p>
<%
}
else
{
  if(user.equals("yu") && passwd.equals("1234"))
  {
    Cookie usr = new Cookie("user", user);
    response.addCookie(usr);
%>
<CENTER><FONT Size=5 Color=red>登錄成功</FONT></CENTER>
<a href="getCookie.jsp">取出Cookie值</a>
<%
  }
  else
  {
%>
<CENTER><FONT Size=5 Color=red>登錄失敗</FONT></CENTER>
<%
  }
}
%>
</HTML>

