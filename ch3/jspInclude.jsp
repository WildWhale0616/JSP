<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>< jsp:include >���ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:include >���ϥ�</FONT>
</CENTER>
<HR>

�ϥ�<Font color = red>< jsp:include ></Font>���J��JSP����<BR>
<jsp:include page="JSPInc.jspf">
	<jsp:param name="name" value="Shung-Chun Kuo"/> 
	<jsp:param name="age" value="27"/> 
</jsp:include>
<P></P>

�ϥ�<Font color = red>< jsp:include ></Font>���J��HTML����<BR>
<jsp:include page="HTMLInc.htm"/>

</BODY>
</HTML>
