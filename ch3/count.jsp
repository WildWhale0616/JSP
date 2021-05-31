<%!
  // Declarations
  int count = 0;
%>
<FONT SIZE = 5 COLOR = BLUE>變數的使用</FONT>
<HR>
<%
  // Scriptlets
  int lcount = 0;

  count++;
  lcount++;
%>

累積瀏覽人數<%= count %>, 本次瀏覽人數<%= lcount %> 