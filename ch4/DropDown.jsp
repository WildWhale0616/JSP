<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�U�ԲM�檺�ϥνd��</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�U�ԲM�檺�ϥνd��</FONT>
</CENTER>
<HR>
<P></P>

<H3>
<FONT COLOR = RED>
<!--���otbxName��r�������J��-->
<%request.setCharacterEncoding("Big5");%>
<%= request.getParameter("tbxName") %>
</FONT>
�z�O�@��
<FONT COLOR = BROWN>
<!--���oslbJob�U�ԲM�������ǥX��-->
<%= request.getParameter("slbJob") %>
</FONT>
</H3>

</BODY>
</HTML>
