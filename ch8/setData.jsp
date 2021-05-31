<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>設定Bean物件的屬性</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>設定Bean物件的屬性</FONT>
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
<BR>您的年紀是
<Font color = blue>
<jsp:getProperty name="person" property="Age"/>
</Font>歲

</H2>
</CENTER>
</BODY>
</HTML>
