<%@ page contentType="application/msexcel; charset=Big5" %>
<%
//�]�wContent-Disposition���Y, �i���������e�H�w�]�ɦW�x�s
response.setHeader("Content-Disposition","attachement; filename=book.xls");
%>
<HTML>
<TITLE>�HExcel�ɮ׮榡�e�{���</TITLE>
<BODY>
<TABLE bgcolor=DodgerBlue>
	<TR bgcolor=SkyBlue>	
	<TD width=100><B>���y�s��</B></TD><TD><B width=300>��  �W</B></TD>
	<TD width=100 align=right><B>��  ��</B></TD>
	<TD width=70 align=right><B>��  �q</B></TD>
	<TD width=100 align=right><B>�p  �p</B></TD>
	</TR>		
	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>P3237</B></TD>
	<TD><B>Visual C++ .NET �J���i�� - �q����ɦV�BC++������{���]�p</B></TD>
	<TD align=right><B>690</B></TD><TD align=right><B>1</B></TD>
	<TD align=right><B>=C2 * D2</B></TD>
	</TR>
	
	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>P3207</B></TD>
	<TD><B>��q�����{���]�p�]�A��Visual C++ .NET 2003���^</B></TD>
	<TD><B>720</B></TD><TD><B>1</B></TD><TD><B>=C3 * D3</B></TD>
	</TR>

	<TR bgcolor=LightGoldenrodYellow>
	<TD><B>W2145</B></TD>
	<TD><B>XML�޳N���</B></TD>
	<TD><B>760</B></TD><TD><B>1</B></TD><TD><B>=C4 * D4</B></TD>
	</TR>		
	<TR bgcolor=LightGoldenrodYellow>
	<TD></TD><TD></TD><TD></TD>
	<TD align=left bgcolor=DodgerBlue><B>�` �p : </B></TD>
	<TD bgcolor=DodgerBlue><B>=sum(E2:E4)</B></TD>
	</TR>		
</TABLE>
</BODY>
</HTML>
