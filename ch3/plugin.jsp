<%@ page contentType="text/html; charset=Big5"%>
<HTML>
<HEAD><TITLE>< jsp:plugin >���ϥ�</TITLE></HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>< jsp:plugin >���ϥ�</FONT>
</CENTER>
<HR>
<BR>
�ϥ�<Font color = red>Applet</Font>���Ҹ��J��Applet<BR>
<applet code="HelloWorld.class" height=40 width=320> 
	<param name=name value="Shung-Chun Kuo"> 
</applet>
<P></P>

�ϥ�<Font color = red>< jsp:plugin ></Font>���J��Applet<BR>
<jsp:plugin type="applet" code="HelloWorld.class" height="40" width="320">
	<jsp:params>
		<jsp:param name="name" value="Shung-Chun Kuo"/> 
	</jsp:params>
	<jsp:fallback>�L�k���JApplet</jsp:fallback>	
</jsp:plugin>

</BODY>
</HTML>
