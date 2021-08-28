<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<script data-ad-client="ca-pub-5714659227321605" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kosdaq 종목별 SteamStock 지수</title>

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
<body>

<%
System.out.println("page idx_5min_history.jsp start!!!");

Date nowTime_Title = new Date();
SimpleDateFormat sf_Title = new SimpleDateFormat("MM월 dd일 HH시 mm분");
String search_date_Title = sf_Title.format(nowTime_Title);



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
 String stock_name = request.getParameter("stock_name");
 String stock_code = request.getParameter("stock_code");
 
 TimeZone tz;
 Date nowTime = new Date();
 SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
 tz=TimeZone.getTimeZone("Asia/Seoul");
 sf.setTimeZone(tz);
 
 String search_date = sf.format(nowTime);
  
 //String query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 50";
 String query = "SELECT STOCK_CODE, HOUR, 5MIN, 5MIN_IDX, 5MIN_READ_CNT, STOCK_PRICE_TODAY, STOCK_PRICE_RATE_TODAY FROM STEAMSTOCK.KOSDAQ_IDX_5MIN_HISTORY WHERE STOCK_CODE = '"+stock_code+"' AND DATE = '"+search_date+"' ORDER BY UPDATE_DATETIME DESC";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>

<STRONG><a href="/">Home</a></STRONG>&nbsp;|&nbsp;
<STRONG><a href="https://finance.naver.com/item/board.nhn?code=<%=stock_code%>">Naver종토방</a></STRONG>&nbsp;|&nbsp; 
<STRONG><a href="https://finance.daum.net/quotes/A<%=stock_code%>#talks">Daum종토방</a></STRONG>
<p>
<STRONG><%=request.getParameter("stock_name")%> 5분 히스토리(<%=search_date_Title%>)</STRONG>

<table border="1" cellspacing="0">
<tr>
<td>시&nbsp;&nbsp;</td>
<td>분&nbsp;&nbsp;</td>
<td>등록건수</td>
<td>조회수</td>
<td>주가</td>
<td>주가변화</td>
<td>ST지수</td>
</tr>
<%
while(rs.next()){	
%>
<tr>
<td> <%= rs.getString("HOUR")%> </td>
<td> <%= rs.getString("5MIN")%> </td>
<td> <%= rs.getString("5MIN_IDX")%> </td>
<td> <%= rs.getString("5MIN_READ_CNT")%> </td>
<td> <%= rs.getString("STOCK_PRICE_TODAY")%>원 </td>
<td> <%= rs.getString("STOCK_PRICE_RATE_TODAY")%></td>
<td> <%= Integer.parseInt((rs.getString("5MIN_READ_CNT")))*Integer.parseInt((rs.getString("5MIN_IDX")))%> </td>
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
