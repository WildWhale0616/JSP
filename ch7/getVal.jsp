<%@ page contentType="text/html; charset=Big5"
	import="java.util.Enumeration"%>

<FONT color=red>Radio button���ȡG<%= request.getParameter("radio") %></FONT>
<HR>

<%
Enumeration e = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE);
//�qpageContext������o�x�s�bapplication�����ܼ�

String name = "";

//�B��while�j��PEnumeration���󪺤�k��Xapplication���󤺪��ܼ�
while(e.hasMoreElements()){
	name = (String) e.nextElement();
	out.println("<DIV style='background=skyblue'><Font color=red>");
	out.println(name);
	out.println(" : </Font>");
	out.println(pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE));
	out.println("</DIV><P></P>");
}
%>

