<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�M�������ϥνd��</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�M�������ϥνd��</FONT>
</CENTER>
<HR>
<P></P>

<H3>
<FONT COLOR = RED>
<!--���otbxName��r�������J��-->
<%= request.getParameter("tbxName") %>
</FONT>
���q��
<FONT COLOR = BROWN>
<%
//���olbxBook�M�������ǥX��
String selVal = request.getParameter("lbxBook");

//�Q��if�ԭz���selVal����
if (selVal.equals("A9073"))
	out.println("Access 2003 ������s");
else if (selVal.equals("A9193"))
	out.println("Access 2003 �{���]�p");		
else if (selVal.equals("A0053"))
	out.println("Access 2003 ��������");		
else if (selVal.equals("P3237"))
	out.println("Visual C++ .NET �J���i��");
else if (selVal.equals("P3207"))
	out.println("��q�����{���]�p");	
%>
</FONT>
(�Ѹ���
<FONT COLOR = GREEN>
<!--���olbxBook�M�������ǥX��-->
<%= request.getParameter("lbxBook") %>
</FONT>)

</H3>

</BODY>
</HTML>
