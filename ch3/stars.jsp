<%!
  // Declarations
  public void star(int i)  // star() method
  {
    for(;i>0;i--)
      System.out.print("*");  // 印出i個星號
  }
%>

<FONT SIZE = 5 COLOR = BLUE>函數(方法)的使用</FONT>
<HR>

<%
  // Scriptlets
  star(20);  // 呼叫star() method
  out.println("<BR><FONT SIZE = 10 COLOR = RED>Knowledge is power</FONT><BR>");
  star(20);  // 呼叫star() method
%>
