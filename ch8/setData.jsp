<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�]�wBean�����ݩ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�]�wBean�����ݩ�</FONT>
</CENTER>
<HR>
<P></P>
<CENTER>
<H2>

<jsp:useBean id="person" scope="session"  
		class="com.bitc.example.PersonData"/>
<jsp:setProperty name="person" 
		property="UserName" param="tbxName"/>
<jsp:setProperty name="person" property="Age"/>
Hi!
<Font color = red>
<jsp:getProperty name="person" property="UserName"/>
</Font>
<BR>�z���~���O
<Font color = blue>
<jsp:getProperty name="person" property="Age"/>
</Font>��

</H2>
</CENTER>
</BODY>
</HTML>
