<%@ page contentType="text/html; charset=Big5"%>
<HTML>
<HEAD>
<TITLE>request�ܼ�</TITLE>
</HEAD>
<BODY>
<CENTER><FONT SIZE = 5 COLOR = blue>request�ܼ�</FONT></CENTER>
<HR>
<P>
<%
if(request.getParameter("var")==null || request.getParameter("val")==null) 
{ //�Y�L�k���ordochc����ȫh��ܪ��
%>
	<Form Action="Request.jsp" method=POST>
		��J�ܼƦW��:<INPUT type="text" name="var"><br>
		��J�ܼƭ�:<INPUT type="text" name="val"><br>
		<INPUT type="submit" value="�e�X">
		<INPUT type="reset" value="�M��">
	</Form>
<%
}
else
{
    //�]�wrequest����Num�ܼƪ���
	request.setAttribute(request.getParameter("var"), request.getParameter("val"));	
%>
	<jsp:forward page="getAttribute.jsp"/>
<%  //�N����forward��getAttribte.jsp����
}
%>
</BODY>
</HTML>
