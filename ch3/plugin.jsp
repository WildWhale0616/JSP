<%@ page contentType="text/html; charset=Big5"%>
<HTML>
<HEAD><TITLE>< jsp:plugin >的使用</TITLE></HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:plugin >的使用</FONT>
</CENTER>
<HR>
<BR>
使用<Font color = red>Applet</Font>標籤載入的Applet<BR>
<applet code="HelloWorld.class" height=40 width=320> 
	<param name=name value="Shung-Chun Kuo"> 
</applet>
<P></P>

使用<Font color = red>< jsp:plugin ></Font>載入的Applet<BR>
<jsp:plugin type="applet" code="HelloWorld.class" height="40" width="320">
	<jsp:params>
		<jsp:param name="name" value="Shung-Chun Kuo"/> 
	</jsp:params>
	<jsp:fallback>無法載入Applet</jsp:fallback>	
</jsp:plugin>

</BODY>
</HTML>
