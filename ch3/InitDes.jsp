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
<HEAD><TITLE>jspInit函數與jspDestroy函數的使用</TITLE></HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>jspInit函數與jspDestroy函數的使用</FONT>
</CENTER>
<HR><BR>
</BODY>
</HTML>
