<%@ page contentType="text/html; charset=Big5" %>
<HTML>
<HEAD>
<TITLE>������쪺�ϥ�</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>������쪺�ϥ�</FONT>
</CENTER>
<HR>
<P></P>

<%
//�Q��Time����O�_���ǥX�ȧP�_������D���٬O�ӭp�⵪��
//�YTime������ǥX�Ȯ�, request.getParameter("Time")�N���|��null
if (request.getParameter("Time") == null)
{
%>
	<!--�U�������N�HPost��k, �N��ƶǻ���Hidden.asp�� -->
	<FORM action="Hidden.jsp" method=post name=FORM1>
	<!--�����������, ��w�]�Ȭ��t�ήɶ�, ���ഫ���@���-->
	<INPUT type=hidden name=Time 
			value="<%= new java.util.Date().getTime() %>">	
	<!--�Ĥ@�D-->
	<P>�ڮ����B�e�s�����O����j�v?</P>
	<P>
	<INPUT type="radio" name=rdoQ1 value=1>�ӥ��v�P�j��v
	<INPUT type="radio" name=rdoQ1 value=2>�j��v�P�L�׬v
	<INPUT type="radio" name=rdoQ1 value=3>�L�׬v�P�ӥ��v
	</P>
	
	<!--�ĤG�D-->
	<P>���������󨺤@�w?</P>
	<P>
	<INPUT type="radio" name=rdoQ2 value=1>�_���w
	<INPUT type="radio" name=rdoQ2 value=2>�n���w
	<INPUT type="radio" name=rdoQ2 value=3>�ڬw
	<INPUT type="radio" name=rdoQ2 value=4>�Ȭw
	<INPUT type="radio" name=rdoQ2 value=5>�D�w
	</P>
	
	<!--�ĤT�D-->
	<P>���ꪺ�����O���@�ӫ���?</P>
	<P>
	<INPUT type="radio" name=rdoQ3 value=1>�ì�
	<INPUT type="radio" name=rdoQ3 value=2>�ª��s
	<INPUT type="radio" name=rdoQ3 value=3>�趮��
	<INPUT type="radio" name=rdoQ3 value=4>�ز��y
	</P>
	
	<!--�ĥ|�D-->
	<P>���O�W�P��߻��������l�O?</P>
	<P>
	<INPUT type="radio" name=rdoQ4 value=1>�O�W���l
	<INPUT type="radio" name=rdoQ4 value=2>����ù�����l
	<INPUT type="radio" name=rdoQ4 value=3>�¤��Ү��l
	<INPUT type="radio" name=rdoQ4 value=4>�ڤh���l
	</P>
	
	<!--�Ĥ��D-->
	<P>�����s���O�W�����ӿ�?</P>
	<P>
	<INPUT type="radio" name=rdoQ5 value=1>�Ÿq��
	<INPUT type="radio" name=rdoQ5 value=2>�x�_��
	<INPUT type="radio" name=rdoQ5 value=3>���L��
	<INPUT type="radio" name=rdoQ5 value=4>�̪F��
	</P>

	<INPUT type="submit" value="�ڵ����F" name=submit1>
	</FORM>
<%
}
//�YTime������ǥX�Ȫ�����i�浪�ת��p��
else
{
	int RightAns = 0; //�p�⵪�諸�D��
	int aryAns[] = {1,2,4,4,1}; //�إ��x�s���T���ת��}�C

	//�U����for�j�餤, �N�Q��if�P�_���i�浪�ת����
	for(int i = 0;  i < 5 ; ++i)
	{
		//�إ߱���W�٪��r��
		String conname = "rdoQ" + (i+1);	
		
		//�P�_�O�_�i���o����ǥX�����, �L�k���o�N�ǥXnull
		if(request.getParameter(conname) == null)
		{
			%>
			��<%= i + 1%>�D�z<FONT COLOR = GREEN>������</Font><BR>
			<%
		}
		else
		{
			%>
			��<%= i + 1%>�D�z��
			<%
			//���o�ϥΪ̩Ұ���������			
			int Ans = Integer.parseInt(request.getParameter(conname));

			//��ﱱ��^�ǭȻP�}�C�������T����, �ۦP����Ϥ�����
			if( Ans == aryAns[i])
			{			
				RightAns = RightAns + 1; //�����D�ƥ[ 1
				%>
				<FONT COLOR = GREEN>��</FONT>�F<BR>
				<%
			}
			else
			{
				%>
				<FONT COLOR = RED>��</FONT>�F<BR>
				<%
			}
		}
	}
	%>
	<H3>
	���D���z�@����F
	<FONT COLOR = RED>
	<!--��X���諸�D��-->
	<%= RightAns %>
	</FONT>
	�D, ��F
	<FONT COLOR = RED>
	<!--��X�p��ұo�����D�Ҫ�ɶ�-->
	<%= 
	((new java.util.Date()).getTime() - Long.parseLong(request.getParameter("Time")))/1000
	%>
	</FONT>
	��
	</H3>
<%
}
%>

</BODY>
</HTML>
