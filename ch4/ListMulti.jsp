<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�h�﫬�M�������ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�h�﫬�M�������ϥ�</FONT>
</CENTER>
<HR>
<P></P>

<H3>
<FONT COLOR = RED>
<!--���otbxName��r�������J��-->
<%= request.getParameter("tbxName") %>
</FONT>
���q��<BR>

<%
//���olbxBook������ǥX��, �ǥX�Ȭ��@�r��}�C
String selAry[] = request.getParameterValues("lbxBook");

//���o�}�C������
int selArylen = java.lang.reflect.Array.getLength(selAry);

//�Q��for�j��NselAry�}�C�����������X, �çQ��if�P�_�ԭz�i����
for(int i = 0; i < selArylen; i++)
{
	%>
	<FONT COLOR = BROWN>
	<%
	//�Q��if�ԭz���selAry�r��}�C������
	if (selAry[i].equals("A9073"))
		out.println("Access 2003 ������s");
	else if (selAry[i].equals("A9193"))
		out.println("Access 2003 �{���]�p");		
	else if (selAry[i].equals("A0053"))
		out.println("Access 2003 ��������");		
	else if (selAry[i].equals("P3237"))
		out.println("Visual C++ .NET �J���i��");
	else if (selAry[i].equals("P3207"))
		out.println("��q�����{���]�p");		
	%>
	</FONT>
	(�Ѹ�:<FONT COLOR = GREEN>
	<!--��X�r��}�C���U��������-->
	<%= selAry[i] %>
	</FONT>)<BR>
	<%	
}
%>
</H3>
</FONT>

(��檺�ǥX��
<FONT COLOR = GREEN>
<!--��XlbxBook������ǥX��-->
<%= java.net.URLDecoder.decode(request.getQueryString()) %>
</FONT>)

</BODY>
</HTML>
