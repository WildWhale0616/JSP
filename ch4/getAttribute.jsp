<%@ page contentType="text/html; charset=Big5"%>
<HTML>
<HEAD>
<TITLE>request�ܼ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>request�ܼ�</FONT>
</CENTER>
<HR>
<P></P>
<%
//�qrequest���󤤨��o���
String var = request.getParameter("var");
String val = (String) request.getAttribute(request.getParameter("var"));

if(val == null)
{
	%>
	<Font color=red>�L�k</Font>�qrequest������o�ܼƸ��
	<%
}
else
{
	%>
	<Font color=red>�i�H</Font>�qrequest������o�ܼ�<Font color=red><%= var %></Font>�����,<BR>
	��Ȭ�<Font color=red><%= val %></Font>
	<%
}
%>

</BODY>
</HTML>
