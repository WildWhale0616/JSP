<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>使用Beans</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>使用Beans</FONT>
</CENTER>
<HR>
<P></P>
<H2>
<jsp:useBean id="person" scope="application"  
	class="com.bitc.example.PersonData"/>
<jsp:setProperty name="person" 
	property="userName" value="郭尚君"/>
<%
person.setAge(30); //呼叫Bean物件的方法, 設定屬性
%>

<Font color = red>userName</Font>屬性值為
<Font color = blue>
<jsp:getProperty name="person" property="userName"/>
</Font><BR>
<Font color = red>age</Font>屬性值為
<Font color = blue>
<%--以呼叫Bean物件方法的方式取得屬性--%>
<%= person.getAge() %></Font>
</BODY>
</HTML>