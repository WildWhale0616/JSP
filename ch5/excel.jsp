<%@ page contentType="application/msexcel; charset=Big5" %>
<%
//設定Content-Disposition表頭, 可讓網頁內容以預設檔名儲存
response.setHeader("Content-Disposition","attachement; filename=book.xls");
%>
<HTML>
<TITLE>以Excel檔案格式呈現資料</TITLE>
<BODY>
<TABLE bgcolor=DodgerBlue>
	<TR bgcolor=SkyBlue>	
	<TD width=100><B>書籍編號</B></TD><TD><B width=300>書  名</B></TD>
	<TD width=100 align=right><B>價  格</B></TD>
	<TD width=70 align=right><B>數  量</B></TD>
	<TD width=100 align=right><B>小  計</B></TD>
	</TR>		
	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>P3237</B></TD>
	<TD><B>Visual C++ .NET 入門進階 - 從物件導向、C++到視窗程式設計</B></TD>
	<TD align=right><B>690</B></TD><TD align=right><B>1</B></TD>
	<TD align=right><B>=C2 * D2</B></TD>
	</TR>
	
	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>P3207</B></TD>
	<TD><B>精通視窗程式設計（適用Visual C++ .NET 2003版）</B></TD>
	<TD><B>720</B></TD><TD><B>1</B></TD><TD><B>=C3 * D3</B></TD>
	</TR>

	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>W2145</B></TD>
	<TD><B>XML技術實務</B></TD>
	<TD><B>760</B></TD><TD><B>1</B></TD><TD><B>=C4 * D4</B></TD>
	</TR>		
	<TR bgcolor=LightGoldenrodYellow>
	<TD></TD><TD></TD><TD></TD>
	<TD align=left bgcolor=DodgerBlue><B>總 計 : </B></TD>
	<TD bgcolor=DodgerBlue><B>=sum(E2:E4)</B></TD>
	</TR>		
</TABLE>
</BODY>
</HTML>
