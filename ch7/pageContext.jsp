<%@ page contentType="text/html; charset=Big5"%>
<HTML>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = blue>
�HpageContext object���o���application object�����</FONT>
</CENTER>
<HR>
<P>
<%
String radio = request.getParameter("radio");

if(radio == null)
{
%>
<FORM name="form1" method="get" action="pageContext.jsp">
  <INPUT Type=radio name="radio" value="Include">pageContext.include()<p>
  <INPUT Type=radio name="radio" value="Forward">pageContext.forward()<p>
  <INPUT Type=submit name="s1" value="�T�w"><p>
</FORM>
<%
}
else
{
  if(radio.equals("Include"))
  {
    pageContext.include("getVal.jsp"); //�ޤJgetVal.jsp���浲�G
  }
  else
  {
    pageContext.forward("getVal.jsp"); //getVal.jsp���浲�G���NpageContext.jsp
  }
}
%>
</BODY>
</HTML>
