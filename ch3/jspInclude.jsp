<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>< jsp:include >的使用</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:include >的使用</FONT>
</CENTER>
<HR>

使用<Font color = red>< jsp:include ></Font>載入的JSP網頁<BR>
<jsp:include page="JSPInc.jspf">
	<jsp:param name="name" value="Shung-Chun Kuo"/> 
	<jsp:param name="age" value="27"/> 
</jsp:include>
<P></P>

使用<Font color = red>< jsp:include ></Font>載入的HTML網頁<BR>
<jsp:include page="HTMLInc.htm"/>

</BODY>
</HTML>
