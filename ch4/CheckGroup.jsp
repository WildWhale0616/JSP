<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>�s�ծ֨�������ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>�s�ծ֨�������ϥ�</FONT>
</CENTER>
<HR>

<H3>
�z�Q��U���o�Ǧa�誱�r!<BR>
<UL>
<FONT COLOR = RED>
<%
request.setCharacterEncoding("Big5");
//�Q��request����getParameterValues��k,
//���o�s�ծ֨�������ǥX��,�ó]�w��chkbx�r��}�C
String chkbx[] = request.getParameterValues("chkbx");

//�Q��java.lang.reflect�M��Array����getLength��k���o�}�C����
int len = java.lang.reflect.Array.getLength(chkbx);

//�Q��for�j���X�s�ծ֨�����ǥX����
for(int i = 0; i < len ; i++)
	out.println("<LI>" + chkbx[i] + "</LI>");	
%>

</FONT>
</UL>
</H3>
</FONT>

(��檺�ǥX��
<FONT COLOR = GREEN>
<!--��X��檺�ǥX�r��, �çQ��java.net�M��URLDecoder����
    decode��k, ��Ķ�r��-->
<%request.setCharacterEncoding("Big5");%>
<%= java.net.URLDecoder.decode(request.getQueryString()) %>
</FONT>)

</BODY>
</HTML>
