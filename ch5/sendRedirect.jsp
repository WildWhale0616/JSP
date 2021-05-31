<%@ page contentType="text/html; charset=Big5" %>
<%request.setCharacterEncoding("Big5");%>
<%
String Name = request.getParameter("tbxName");
String E_Mail = request.getParameter("tbxE_Mail");

//檢查Name或E_Mail是否完成資料輸入
if(Name.equals("") || E_Mail.equals(""))
	response.sendRedirect("sendRedirect.htm");
	//若未完成資料輸入則將網頁導向sendRedirect.htm
%>
<HTML>
<HEAD>
<TITLE>sendRedirect方法的使用</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>sendRedirect方法的使用</FONT>
</CENTER>
<HR>
<P></P>

<P>您的大名是"<%= Name %>"</P>
<P>E-Mail帳號為"<%= E_Mail %>"</P>

</BODY>
</HTML>
