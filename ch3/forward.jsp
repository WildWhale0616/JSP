<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>< jsp:forward >���ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:forward >���ϥ�</FONT>
</CENTER>
<HR>
<%
int choice = 1;

if(choice == 1)
{
%>

�ϥ�<Font color = red>< jsp:forward ></Font>�N�s�����ɦVJSP����<BR>
<jsp:forward page="JSPInc.jsp">
	<jsp:param name="name" value="Shung-Chun Kuo"/> 
	<jsp:param name="age" value="27"/> 
</jsp:forward>
<P></P>
<%
}
else
{
%>
�ϥ�<Font color = red>< jsp:forward ></Font>�N�s�����ɦVHTML����<BR>
<jsp:forward page="HTMLInc.htm"/>
<%
}
%>	

</BODY>
</HTML>
