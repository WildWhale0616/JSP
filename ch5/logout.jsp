<%@ page contentType="text/html" %>
<HTML>
<CENTER><FONT Size=5 Color=blue>�R��Cookie</FONT></CENTER>
<HR>
<%
Cookie cookies[] = request.getCookies();
for(int i = 0; i < cookies.length; i++)
{
  if(cookies[i].getName().equals("user"))
  {
    // �R��Cookie��, ���NCookie�����Įɶ��]�w��0
    cookies[i].setMaxAge(0);
    // �A�Hresponse.addCookie()���s�[�J�@��,
    // �]����������|�ߤ@�I�ͮ�
    response.addCookie(cookies[i]);
  }
}
%>
</HTML>

