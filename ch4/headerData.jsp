<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�z�Lrequest������o���Y��T</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = BLUE>�z�Lrequest������o���Y��T</FONT>
</CENTER>
<HR>
<P></P>
<FONT COLOR = RED>
<%--�B��request������o���Y��T--%>
request.getContentType() :<%= request.getContentType() %><BR>

<%--�B��request������o���Y��T--%>
<% 
java.util.Enumeration headers; //�ŧiheaders��Enumeration����

//�z�Lrequest����getHeadNames()��k�A���o�Ҧ����Y��T���W�١A
//�Ӥ�k�N�Ǧ^�@��Enumeration����A�B��for�j��t�XnextElement()��k
//�PhasMoreElements()��k��X�Ҧ����Y��T
for( headers = request.getHeaderNames(); headers.hasMoreElements(); ) {
	String name = headers.nextElement().toString();
	out.print("request.getHeader(\"");
	out.print(name);
	out.print("\") : ");
	out.print(request.getHeader(name));
	out.print("<BR>\n"); 
}
%>
request.getRemoteAddr() :<%= request.getRemoteAddr() %><BR>
request.getRemoteHost() :<%= request.getRemoteHost() %><BR>
request.getRemoteUser() :<%= request.getRemoteUser() %><BR>
request.getMethod() :<%= request.getMethod() %><BR>
request.getRequestURI() :<%= request.getRequestURI() %><BR>
request.getRequestURL() :<%= request.getRequestURL() %><BR>
request.getQueryString() :<%= request.getQueryString() %><BR>

</FONT>
</BODY>
</HTML>
