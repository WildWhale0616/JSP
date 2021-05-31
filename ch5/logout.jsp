<%@ page contentType="text/html" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>刪除Cookie</FONT></CENTER>
<HR>
<%
Cookie cookies[] = request.getCookies();
for(int i = 0; i < cookies.length; i++)
{
  if(cookies[i].getName().equals("user"))
  {
    // 刪除Cookie時, 先將Cookie的有效時間設定為0
    cookies[i].setMaxAge(0);
    // 再以response.addCookie()重新加入一次,
    // 因為網路延遲會晚一點生效
    response.addCookie(cookies[i]);
  }
}
%>
</HTML>

