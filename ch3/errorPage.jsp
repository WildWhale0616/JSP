<%@ page contentType="text/html; charset=Big5"
	errorPage="isErrorPage.jsp" %>
<HTML>
<HEAD>
<TITLE>���~�B�z���������w</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>���~�B�z���������w</FONT>
</CENTER>
<HR><P></P>
<%
String strdividend = request.getParameter("dividend");
String strdivisor = request.getParameter("divisor"); 

if (strdividend == null || strdivisor == null )
{
	%>
	<Form action="errorPage.jsp" method=post>
		<P><INPUT name=dividend>
		���H<INPUT name=divisor></P>
		<INPUT name=submit1 type=submit value=�e�X>
	</Form>

<%
}
else
{
	try{
		int dividend = Integer.parseInt(strdividend);
		int divisor = Integer.parseInt(strdivisor); 
		%>
		<H3>���׬�<Font color = red>
		<%= dividend / divisor%></Font></H3>
		<%
	}
	catch(NumberFormatException nfex)
	{
		throw new NumberFormatException("�z��J�����O���");
	}	
	catch(RuntimeException rtex)
	{
		throw new RuntimeException("���i��J0");
	}	
}
%>

</BODY>
</HTML>
