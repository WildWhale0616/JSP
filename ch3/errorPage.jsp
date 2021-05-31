<%@ page contentType="text/html; charset=Big5"
	errorPage="isErrorPage.jsp" %>
<HTML>
<HEAD>
<TITLE>錯誤處理網頁的指定</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>錯誤處理網頁的指定</FONT>
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
		除以<INPUT name=divisor></P>
		<INPUT name=submit1 type=submit value=送出>
	</Form>

<%
}
else
{
	try{
		int dividend = Integer.parseInt(strdividend);
		int divisor = Integer.parseInt(strdivisor); 
		%>
		<H3>答案為<Font color = red>
		<%= dividend / divisor%></Font></H3>
		<%
	}
	catch(NumberFormatException nfex)
	{
		throw new NumberFormatException("您輸入的不是整數");
	}	
	catch(RuntimeException rtex)
	{
		throw new RuntimeException("不可輸入0");
	}	
}
%>

</BODY>
</HTML>
