<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�֨�������ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�֨�������ϥ�</FONT>
</CENTER>
<HR>

<H3>
�z�Q��U���o�Ǧa�誱�r!<BR>
<UL>
<FONT COLOR = RED>
<%
//�U����if�ԭz�N�P�_chbx1�֨�����O�_�ǥX��
//�Y���ǥX�ȡA�h�N��Ӯ֨�����Q���
if (request.getParameter("chkbx1") != null)
	out.println("<LI>�饻</LI>");	

if (request.getParameter("chkbx2") != null)
	out.println("<LI>����</LI>");

if (request.getParameter("chkbx3") != null)
	out.println("<LI>�[���j</LI>");

if (request.getParameter("chkbx4") != null)
	out.println("<LI>����</LI>");

if (request.getParameter("chkbx5") != null)
	out.println("<LI>�D�w</LI>");
%>
</FONT>
</UL>
</H3>

(��檺�ǥX��
<FONT COLOR = GREEN>
<!--��XlbxBook������ǥX��-->
<%= request.getQueryString() %>
</FONT>)

</BODY>
</HTML>