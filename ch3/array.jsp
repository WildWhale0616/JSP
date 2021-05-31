<%!
  // Declarations
  int i;
  int a[];
%>
<FONT SIZE = 5 COLOR = BLUE>變數的使用</FONT>
<HR>
<%
  // Scriptlets
  a=new int[3];  
  a[0]=9;
  a[1]=6;
      
  for(i=0; i<a.length; i++)  {
    out.print("a["+i+"]=" + a[i] + ","); 
%><%-- Expressions --%>
    <%= a[i] %>&nbsp
<%
  }      
  out.println("<br>Length of array = " + a.length + ","); 
%>
  <%= a.length %>
