<%!
  // Declarations
  public void star(int i)  // star() method
  {
    for(;i>0;i--)
      System.out.print("*");  // �L�Xi�ӬP��
  }
%>

<FONT SIZE = 5 COLOR = BLUE>���(��k)���ϥ�</FONT>
<HR>

<%
  // Scriptlets
  star(20);  // �I�sstar() method
  out.println("<BR><FONT SIZE = 10 COLOR = RED>Knowledge is power</FONT><BR>");
  star(20);  // �I�sstar() method
%>
