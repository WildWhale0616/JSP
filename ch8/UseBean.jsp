<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�ϥ�Beans</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�ϥ�Beans</FONT>
</CENTER>
<HR>
<P></P>
<H2>
<jsp:useBean id="person" scope="application"  
	class="com.bitc.example.PersonData"/>
<jsp:setProperty name="person" 
	property="userName" value="���|�g"/>
<%
person.setAge(30); //�I�sBean���󪺤�k, �]�w�ݩ�
%>

<Font color = red>userName</Font>�ݩʭȬ�
<Font color = blue>
<jsp:getProperty name="person" property="userName"/>
</Font><BR>
<Font color = red>age</Font>�ݩʭȬ�
<Font color = blue>
<%--�H�I�sBean�����k���覡���o�ݩ�--%>
<%= person.getAge() %></Font>
</BODY>
</HTML>