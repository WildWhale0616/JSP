<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�q�Ȥ�ݶǰe��Ʀܦ��A��</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = BLUE>�^�����ʧ@��JSP��</FONT>
</CENTER>
<HR>
<P></P>
<CENTER>
<H2>
<FONT COLOR = RED>
<!--���otbxName������ǥX��-->
<%request.setCharacterEncoding("Big5");%>
<%= request.getParameter("tbxName") %>
</FONT>
�z�n!
</H2>
</CENTER>
</BODY>
</HTML>
