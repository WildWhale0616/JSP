<%@ page contentType="text/html; charset=Big5" %>
<%request.setCharacterEncoding("Big5");%>
<%
String Name = request.getParameter("tbxName");
String E_Mail = request.getParameter("tbxE_Mail");

//�ˬdName��E_Mail�O�_������ƿ�J
if(Name.equals("") || E_Mail.equals(""))
	response.sendRedirect("sendRedirect.htm");
	//�Y��������ƿ�J�h�N�����ɦVsendRedirect.htm
%>
<HTML>
<HEAD>
<TITLE>sendRedirect��k���ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>sendRedirect��k���ϥ�</FONT>
</CENTER>
<HR>
<P></P>

<P>�z���j�W�O"<%= Name %>"</P>
<P>E-Mail�b����"<%= E_Mail %>"</P>

</BODY>
</HTML>
