<%@ page contentType="text/html; charset=Big5"%>
<%!
public void jspInit()
{
	System.out.println("jspInit is called!");
}

public void jspDestroy()
{
	System.out.println("jspDestroy is called!");
}
%>
<HTML>
<HEAD><TITLE>jspInit��ƻPjspDestroy��ƪ��ϥ�</TITLE></HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>jspInit��ƻPjspDestroy��ƪ��ϥ�</FONT>
</CENTER>
<HR><BR>
</BODY>
</HTML>
