<%!
  // Declarations
  int score[]={9,14,6,18,2,10};
  public int largest(int arr[]) {
     int max=arr[0];
     for(int i=0;i<arr.length;i++)
       if(max<arr[i])
          max=arr[i];
     return max;
  }
%>
<FONT SIZE = 5 COLOR = BLUE>���(��k)���ϥ�</FONT>
<HR>
<%
  // Scriptlets
  for(int i=0; i<score.length; i++) {
%>
   <%= score[i] %>
<%
  }
%>
  , �̤j���ƬO<%= largest(score) %>