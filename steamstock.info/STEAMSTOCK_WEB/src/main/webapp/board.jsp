<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<script data-ad-client="ca-pub-5714659227321605" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<!-- google adsense -->
<!-- script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5714659227321605" crossorigin="anonymous"></script-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-QVLHN7CXYV"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-QVLHN7CXYV');
</script>


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
System.out.println("page board.jsp start!!!");

Date nowTime_Title = new Date();
//SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat sf_Title = new SimpleDateFormat("MM월 dd일 HH시 mm분");

TimeZone tz;
tz=TimeZone.getTimeZone("Asia/Seoul");
sf_Title.setTimeZone(tz);

String search_date_Title = sf_Title.format(nowTime_Title);

%>

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
 String stock_name = request.getParameter("stock_name");
 String stock_code = request.getParameter("stock_code");
 
 Date nowTime = new Date();
 SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
 String search_date = sf.format(nowTime);
 //String query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 50";
  //String query = "SELECT STOCK_CODE, HOUR, 5MIN, 5MIN_IDX, 5MIN_READ_CNT  FROM STEAMSTOCK.STOCK_IDX_5MIN_HISTORY WHERE STOCK_CODE = '"+stock_code+"' AND DATE = '"+search_date+"' ORDER BY UPDATE_DATETIME";
 String query = "SELECT SNS_TYPE, STOCK_NAME, STOCK_CODE, REG_DT, READ_CNT, TITLE,WRITER,CONTENT_URL FROM STEAMSTOCK.STOCK_BOARD_20210810 WHERE STOCK_CODE = '"+stock_code+"' ORDER BY reg_dt desc limit 100;";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>
<STRONG><a href="/">Home</a></STRONG>&nbsp;|&nbsp;
<STRONG><%=request.getParameter("stock_name")%> 최근 게시판(100건) <%=search_date_Title %></STRONG>

<table border="1" cellspacing="0">
<tr>
<td>출처</td>
<td>등록일</td>
<td>조회수</td>
<td>제목</td>
<td>글쓴이</td>
</tr>
<%
while(rs.next()){	
%>
<tr>
<td> <%= rs.getString("SNS_TYPE")%> </td>
<td> <%= rs.getString("REG_DT")%> </td>
<td> <%= rs.getString("READ_CNT")%> </td>
<td> <a href="http://finance.naver.com<%= rs.getString("CONTENT_URL")%>"><%= rs.getString("TITLE")%></a> </td>
<td> <%= rs.getString("WRITER")%> </td>
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
