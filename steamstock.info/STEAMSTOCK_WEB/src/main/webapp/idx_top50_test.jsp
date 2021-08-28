<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SteamStock 지수 TOP50</title>

<!-- google adsense -->
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5714659227321605" crossorigin="anonymous"></script>

<script language="JavaScript">
<!--
	function start()
	{
		setInterval("alert()",30000);
	}
	
	function alert()
	{
		location.reload();
	}
//-->
</script>
<script language="javascript">
<!--
start();
-->
</script>

</head>


<%
System.out.println("page idx_top50.jsp start!!!");

Date nowTime = new Date();
//SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat sf = new SimpleDateFormat("MM월 dd일 HH시 mm분");

TimeZone tz;
tz=TimeZone.getTimeZone("Asia/Seoul");
sf.setTimeZone(tz);

String search_date = sf.format(nowTime);

%>

<body>
<STRONG><a href="/">Home</a></STRONG>&nbsp;|&nbsp;
<STRONG>Kospi 스팀스탁지수 TOP50(5분간격 실시간 데이터) <%=search_date%></STRONG>

<%
String DB_URL = "jdbc:mysql://aa1xqh64wopfngq.cbsaeq7bocl1.ap-northeast-2.rds.amazonaws.com:3306/STEAMSTOCK";
String DB_USER = "lucasoftDB";
String DB_PASSWORD= "jazz6547";

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 stmt = conn.createStatement();
 
 //////////////////////////////////////
 String query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, STOCK_PRICE_TODAY, STOCK_PRICE_RATE_TODAY FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 50";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>

<table border="1" cellspacing="0">
<tr>
<td>종목명</td>
<td>등록건수</td>
<td>조회수</td>
<td>스팀스탁지수</td>
<td>주가</td>
<td>주가변화</td>
<td>스팀스탁지수변화</td>
<td>종목게시판(최신글)</td>
<td>종목게시판(인기글)</td>
</tr>
<%
while(rs.next()){	
%>
<tr>
<td> 
<%= rs.getString("STOCK_NAME")%> 
[
<a href="https://finance.naver.com/item/board.nhn?code=<%=rs.getString("STOCK_CODE")%>">N</a> 
<a href="https://finance.daum.net/quotes/A<%=rs.getString("STOCK_CODE")%>#talks">D</a>
]
</td>
<td> <%= rs.getString("IDX_NOW")%> </td>
<td> <%= rs.getString("5MIN_READ_CNT")%> </td>
<td> <%= Integer.parseInt((rs.getString("5MIN_READ_CNT")))*Integer.parseInt((rs.getString("IDX_NOW")))%> </td>
<td> <%= rs.getString("STOCK_PRICE_TODAY")%>원 </td>
<td> <%= rs.getString("STOCK_PRICE_RATE_TODAY")%></td>
<td> <a href="/idx_5min_history.jsp?stock_code=<%= rs.getString("STOCK_CODE")%>&stock_name=<%=rs.getString("STOCK_NAME")%>">5분보기</a> </td>
<td> <a href="/board.jsp?stock_code=<%= rs.getString("STOCK_CODE")%>&stock_name=<%=rs.getString("STOCK_NAME")%>">최신글보기</a> </td>
<td> <a href="/board_top.jsp?stock_code=<%= rs.getString("STOCK_CODE")%>&stock_name=<%=rs.getString("STOCK_NAME")%>">인기글보기</a> </td>
</tr>
<%	
}
%>

</table>

<%
 rs.close();
 stmt.close();
 conn.close();
} catch(Exception e) {
 out.println(e.getMessage());
}
%>
</body>
</html>
