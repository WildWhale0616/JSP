<%@ page contentType="text/html; charset=Big5" %>
<%
//設定網頁每隔20秒更新一次
response.setHeader("Refresh", "20");
%>
<HTML>
<HEAD>
<TITLE>透過表頭自動更新網頁</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 5 COLOR = BLUE>透過表頭自動更新網頁</FONT>
</CENTER>
<HR>
<P></P>
目前的時間是
<!-- 輸出目前的系統時間 -->
<%= new java.util.Date().toString() %>
</BODY>
</HTML>
