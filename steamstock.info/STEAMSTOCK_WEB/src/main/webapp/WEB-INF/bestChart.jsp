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
<META http-equiv="refresh" content="60; URL=localhost:8080">

<title>SteamStock TOP 5 CHART</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<!--link rel="apple-touch-icon-precomposed" href="images/icon/flat-design-touch.png"-->

<!-- google adsense -->
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5714659227321605" crossorigin="anonymous"></script>

<script src="js/jquery.min.js"></script>

<!-- d3.js -->
<script src="https://d3js.org/d3.v5.min.js"></script>
<!-- chartjs 시작-->     
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

     
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

<style>
/* 모바일용 CSS */
/* 기본 CSS */
#wrap{
display:flex;
flex-flow:column nowrap;
width:80%;
margin:0 auto;
max-width:1200px;
}

#wrap section{
box-sizing:border-box;
}

/* 인포메이션 영역 CSS */
.info_section{
order:1;
width:100%;
background:#2ecc71;
border-bottom:1px solid #39d67c;
}

.info_list{
display:flex;
}

.info_list li{
width:25%;
text-align:center;
}

.info_list li a{
display:block;
padding:15px 0;
padding:0.938rem 0;
}

/* 헤더 영역 CSS */
.header{
display:flex;
order:2;
flex-direction:column;
position:relative;
width:100%;
}

.logo{
order:1;
width:100%;
padding:30px 0;
padding:1.875rem 0;
font-size:1.188em;
font-size:1.188rem;
line-height:21px;
line-height:1.313rem;
text-align:center;
text-transform:uppercase;
background:#2ecc71;
text-shadow:0px 1px 1px #25ab5e;
}

.nav{
order:2;
width:100%;
}

.gnb li{
display:flex;
background:#2c3e50;
}

.gnb li a{
width:80%;
padding:20px 0;
padding:1.250rem 0;
font-size:0.938em;
font-size:0.938rem;
text-indent:20px;
text-indent:1.250rem;
font-weight:bold;
text-transform:uppercase;
}

.gnb li span{
width:20%;
text-indent:-9999px;
background:url(images/s_images/sub_menu_toggle_btn.png) center center no-repeat;
cursor:pointer;
}

.menu_toggle_btn{
display:block;
width:30px;
width:1.875rem;
height:30px;
height:1.875rem;
position:absolute;
top:10px;
top:0.625rem;
right:10px;
right:0.625rem;
text-indent:-9999px;
background:url(images/s_images/menu_toggle_btn.png) no-repeat;
cursor:pointer;
}

/* 슬라이더 영역 CSS */
.slider_section{
display:flex;
justify-content:space-between;
align-items:center;
order:7;
width:100%;
height:300px;
height:18.750rem;
background:url(images/p_images/slider_01_yellow.jpg) center center no-repeat;
}

.slider_section span{
width:34px;
width:2.125rem;
height:39px;
height:2.438rem;
text-indent:-9999px;
background:url(images/s_images/slider_arrow.png) no-repeat;
cursor:pointer;
}

span.prev_btn{
margin-left:-10px;
margin-left:-0.625rem;
background-position:0 0;
}

span.next_btn{
margin-right:-10px;
margin-right:-0.625rem;
background-position:-34px 0;
}

/* 최근 글 영역, 인기 글 영역 CSS */
.latest_post_section{
order:4;
background:#ffc40f;
text-shadow:0px 1px 1px #b98e0b;
}

.popular_post_section{
order:5;
background:#a660c2;
text-shadow:0px 1px 1px #714185;
}

.latest_post_section, .popular_post_section{
padding:40px 12.5%;
padding:2.500rem 12.5%;
/* 40px ÷ 320px */
}

.title{
margin-bottom:30px;
margin-bottom:1.875rem;
font-size:1.188em;
font-size:1.188rem;
text-align:center;
text-transform:uppercase;
color:#fff;
}

.latest_post_list li, .popular_post_list li{
margin-top:15px;
margin-top:0.938rem;
padding-left:14px;
padding-left:0.875rem;
font-weight:bold;
text-transform:uppercase;
background:url(images/s_images/post_circle_icon.png) left center no-repeat;
}

.latest_post_list li:first-child, .popular_post_list li:first-child{
margin-top:0;
}

/* 갤러리 영역 CSS */
.gallery_section{
order:6;
padding:50px 12.5%;
padding:3.125rem 12.5%;
/* 40px ÷ 320px */
text-align:center;
background:#e65d5d;
text-shadow:0px 1px 1px #c43434;
}

.gallery_section img{
width:100%;
max-width:100%;
border-radius:3px;
box-shadow:0px 1px 1px #c43434;
}

.gallery_list li:nth-child(2){
margin-top:30px;
margin-top:1.875rem;
}

.gallery_list li figcaption{
margin-top:20px;
margin-top:1.250rem;
font-size:1.188em;
font-size:1.188rem;
text-transform:uppercase;
font-weight:bold;
}

/* 인기 검색어 영역 CSS */
.rankup_section{
order:3;
padding:40px 12.5%;
padding:2.500rem 12.5%;
/* 40px ÷ 320px */
background:#219af7;
text-shadow: 0px 1px 1px #1974ba;
}

.rankup_list{
display:flex;
flex-wrap:wrap;
justify-content:space-between;
}

.rankup_list li{
width:47.916666666666666666666666666667%;
/* 115px ÷ 240px */
margin-top::15px;
margin-top:0.938rem;
text-align:center;
text-transform:uppercase;
font-weight:bold;
}

.rankup_list li:first-child, .rankup_list li:nth-child(2){
margin-top:0;
}

.rankup_list li a{
display:block;
padding:10px 0;
padding:0.625rem 0;
border:1px solid #fff;
border-radius:5px;
}

/* 배너 영역 CSS */
.banner_section{
order:8;
}

.banner_box_01{
background:#e6567a;
}

.banner_box_01 a{
display:block;
padding:30px 0;
padding:1.875rem 0;
text-align:center;
}

.banner_box_02{
background:#c44968;
}

.banner_list{
display:flex;
justify-content:space-between;
padding:30px 12.5%;
padding:1.875rem 12.5%;
/* 40px ÷ 320px */
}

/* 소셜 네트워크 영역 CSS */
.social_section{
order:9;
padding:24px 12.5%;
padding:1.500rem 12.5%;
/* 40px ÷ 320px */
background:#fff;
}

.social_list{
display:flex;
justify-content:space-between;
}

/* 푸터 영역 CSS */
.footer{
order:10;
width:100%;
background:#474747;
}

.footer p{
padding:20px;
padding:1.250rem;
font-size:0.813em;
font-size:0.813rem;
text-align:center;
text-transform:uppercase;
font-weight:bold;
color:#fff;
text-shadow:0px 1px 1px #191919;
}

/* 태블릿용 CSS */
@media all and (min-width:768px){
/* 기본 CSS */
#wrap{
flex-flow:row wrap;
}

/* 헤더 영역 CSS */
.header{
flex-direction:row;
}

.logo{
position:absolute;
top:0;
left:0;
z-index:10;
width:15.625%;
/* 120px ÷ 768px */
padding:0;
}

.logo a{
display:block;
padding:50px 0;
padding:3.125rem 0;
}

.nav{
position:relative;
min-height:80px;
min-height:5.000rem;
background:#2ecc71;
}

.gnb{
position:absolute;
top:100%;
right:0;
z-index:20;
width:40.10416666666667%;
/* 308px ÷ 768px */
}

.menu_toggle_btn{
top:50%;
right:30px;
right:1.875rem;
z-index:20;
margin-top:-15px;
margin-top:-0.938rem;
}

/* 슬라이더 영역 CSS */
.slider_section{
width:100%;
/* 460px ÷ 768px */
height:auto;
}

.slider_section span{
position:relative;
z-index:10;
}

/* 최근 글 영역, 인기 글 영역 CSS */
.latest_post_section{
order:5;
}

.popular_post_section{
order:6;
}

.latest_post_section, .popular_post_section{
width:41.666666666666666666666666666667%;
/* 320px ÷ 768px */
padding-left:5.208333333333333333333333333333%;
padding-right:5.208333333333333333333333333333%;
/* 40px ÷ 768px */
}

/* 갤러리 영역 CSS */
.gallery_section{
order:8;
width:71.354166666666666666666666666667%;
/* 548px ÷ 768px */
padding-left:5.208333333333333333333333333333%;
padding-right:5.208333333333333333333333333333%;
/* 40px ÷ 768px */
}

.gallery_list{
display:flex;
}

.gallery_list li{
width:47.008547008547008547008547008547%;
/* 220px ÷ 468px */
}

.gallery_list li:nth-child(2){
margin-left:5.982905982905982905982905982906%;
/* 28px ÷ 468px */
margin-top:0;
}

/* 인기 검색어 영역 CSS */
.rankup_section{
order:4;
width:40.10416666666667%;
/* 308px ÷ 768px */
padding-left:5.20833333333333%;
padding-right:5.20833333333333%;
/* 40px ÷ 768px */
}

/* 배너 영역 CSS */
.banner_section{
display:flex;
order:9;
flex-direction:column;
width:28.645833333333333333333333333333%;
/* 220px ÷ 768px */
}

.banner_section div{
flex:1 1 0;
}

.banner_box_01{
display:flex;
justify-content:center;
align-items:center;
}

.banner_box_01 a{
display:inline;
padding:0;
}

.banner_box_02{
display:flex;
justify-content:center;
align-items:center;
}

.banner_list{
padding:0;
justify-content:flex-start;
}

.banner_list li:nth-child(2){
margin:0 14px;
margin:0 0.875rem;
}

/* 소셜 네트워크 영역 CSS */
.social_section{
display:flex;
order:7;
justify-content:center;
align-items:center;
width:16.66666666666667%;
/* 128px ÷ 768px */
padding:0;
}

.social_list{
flex-direction:column;
justify-content:flex-start;
}

.social_list li:nth-child(2){
margin:24px 0;
margin:1.500rem 0;
}

/* 푸터 영역 CSS */
.footer p{
padding:40px 0;
padding:2.500rem 0;
}
}

/* PC용 CSS */
@media all and (min-width:960px){
/* 기본 CSS */
#wrap{
position:relative;
width:90%;
}

/* 인포메이션 영역 CSS */
.info_section{
order:0;
position:absolute;
top:30px;
top:1.875rem;
right:30px;
right:1.875rem;
z-index:30;
width:auto;
border-bottom:0;
}

.info_list li{
width:auto;
margin-left:15px;
margin-left:0.625rem;
}

.info_list li a{
padding:0;
}

/* 헤더 영역 CSS */
.header{
order:1;
justify-content:flex-end;
position:static;
}

.logo{
width:12.5%;
/* 120px ÷ 960px */
}

.nav{
display:flex;
align-items:center;
position:static;
width:87.5%;
/* 840px ÷ 960px */
}

.gnb{
display:flex !important;
flex-direction:row;
position:static;
width:100%;
text-shadow:0px 1px 1px #25ab5e;
}

.gnb li{
display:block;
margin-left:5.20833333333333%;
/* 50px ÷ 840px */
background:none;
}

.gnb li a{
width:auto;
padding:0;
text-indent:0;
}

.gnb li span{
display:none;
}

.menu_toggle_btn{
display:none;
}

/* 슬라이더 영역 CSS */
.slider_section{
order:2;
width:100%;
height:800px;
/* 480px ÷ 960px */
}

/* 최근 글 영역, 인기 글 영역 CSS */
.latest_post_section, .popular_post_section{
display:flex;
flex-direction:column;
align-items:center;
width:30%;
/* 288px ÷ 960px */
padding-left:0;
padding-right:0;
}

/* 갤러리 영역 CSS */
.gallery_section{    
order:3;
width:27.08333333333333%;
/* 260px ÷ 960px */
}

.gallery_list{
display:block;
}

.gallery_list li{
width:auto;
}

.gallery_list li:nth-child(2){
margin-top:30px;
margin-top:1.875rem;
margin-left:0;
}

/* 인기 검색어 영역 CSS */
.rankup_section{
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
width:22.91666666666667%;
/* 220px ÷ 960px */
padding:0;
}

.rankup_list{
display:block;
}

.rankup_list li{
width:auto;
text-align:left;
counter-increment:rankup-counter;
}

.rankup_list li:nth-child(2){
margin-top:15px;
margin-top:0.938rem;
}

.rankup_list li:before{
padding-right:6px;
padding-right:0.375rem;
text-transform:uppercase;
font-weight:bold;
color:#fff;
text-shadow:0px 1px 1px #428e9e;
content:counter(rankup-counter) '.';
}

.rankup_list li a{
display:inline;
padding:0;
border:0;
}

/* 배너 영역 CSS */
.banner_section{
order:7;
width:22.91666666666667%;
/* 220px ÷ 960px */
}

/* 소셜 네트워크 영역 CSS */
.social_section{
order:8;
width:17.08333333333333%;
/* 164px ÷ 960px */
}

/* 푸터 영역 CSS */
.footer{
order:9;
}

.footer p{
padding-left:3.125%;
/* 30px ÷ 960px */
text-align:left;
}
}
</style>


</head>
<%
System.out.println("page index.jsp start!!!");
String ipAddress=request.getRemoteAddr();
System.out.println("클라이언트 IP 주소: "+ipAddress);

%>
<body>
	<div id="wrap">
		<section class="info_section">
			<ul class="info_list">
				<!-- li><a href="index.jsp"><img src="images/s_images/info_icon_01.png" alt=""></a></li>
				<li><a href=""><img src="images/s_images/info_icon_02.png" alt=""></a></li>
				<li><a href=""><img src="images/s_images/info_icon_03.png" alt=""></a></li>
				<li><a href=""><img src="images/s_images/info_icon_04.png" alt=""></a></li-->
				
				
<%
try {
	
String DB_URL = "jdbc:mysql://aa1xqh64wopfngq.cbsaeq7bocl1.ap-northeast-2.rds.amazonaws.com:3306/STEAMSTOCK";
String DB_USER = "lucasoftDB";
String DB_PASSWORD= "jazz6547";

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
stmt = conn.createStatement();
 
String query = "SELECT STOCK_PRICE_NOW, STOCK_PRICE_RATE_NOW FROM ((SELECT STOCK_PRICE_NOW, STOCK_PRICE_RATE_NOW FROM STEAMSTOCK.ALL_STOCK_IDX_5MIN_HISTORY WHERE STOCK_TYPE = 'KOSPI' ORDER BY UPDATE_DATETIME DESC LIMIT 1) UNION ALL (SELECT STOCK_PRICE_NOW, STOCK_PRICE_RATE_NOW FROM STEAMSTOCK.ALL_STOCK_IDX_5MIN_HISTORY WHERE STOCK_TYPE = 'KOSDAQ' ORDER BY UPDATE_DATETIME DESC LIMIT 1)) AS STOCK_AVG;";	
rs = stmt.executeQuery(query);

String stock_price_now[]=new String[2];
String stock_price_rate_now[]=new String[2];
int seq_i=0;
while(rs.next()){
	stock_price_now[seq_i]=rs.getString("STOCK_PRICE_NOW");
	stock_price_rate_now[seq_i]=rs.getString("STOCK_PRICE_RATE_NOW");
	stock_price_rate_now[seq_i]=stock_price_rate_now[seq_i].substring(stock_price_rate_now[seq_i].indexOf(" "),stock_price_rate_now[seq_i].length());
	stock_price_rate_now[seq_i]=stock_price_rate_now[seq_i].replace("상승","").replace("하락","");
	if(stock_price_rate_now[seq_i].contains("+")){
		stock_price_now[seq_i]="<font color='red'>"+stock_price_now[seq_i]+"</font>";
		stock_price_rate_now[seq_i]="<font color='red'>"+stock_price_rate_now[seq_i]+"</font>";
	}else if(stock_price_rate_now[seq_i].contains("-")){
		stock_price_now[seq_i]="<font color='blue'>"+stock_price_now[seq_i]+"</font>";
		stock_price_rate_now[seq_i]="<font color='blue'>"+stock_price_rate_now[seq_i]+"</font>";
	}
	seq_i=seq_i+1;
}
%>				
				
				<li>Kospi : <%=stock_price_now[0]%></li>
				<li><%=stock_price_rate_now[0]%></li>
				<li>Kosdaq : <%=stock_price_now[1]%></li>
				<li><%=stock_price_rate_now[1]%></li>
			
			</ul>
		</section>
		<header class="header">
			<h1 class="logo">
				<a href="index.jsp">STEAM<br>STOCK</a>
			</h1>
			<nav class="nav">
				<ul class="gnb">
					<li><a href="index.jsp">홈</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="introudce.html">스팀스탁이란?</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="idx_top50.jsp">kospi통계</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="idx_kosdaq_top50.jsp">kosdaq통계</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
				</ul>
			</nav>
			<span class="menu_toggle_btn">전체 메뉴 토글 버튼</span>
		</header>
		<section class="slider_section">
			<span class="prev_btn">이전 버튼</span>

<%

 
 //////////////////////////////////////
 //query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 //query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) desc limit 5";
 //query = "SELECT HOUR, 5MIN,(5MIN_IDX*5MIN_READ_CNT) AS ST_IDX, STOCK_PRICE_TODAY  FROM STEAMSTOCK.STOCK_IDX_5MIN_HISTORY WHERE STOCK_CODE = '068270' AND DATE='2021-08-27' ORDER BY UPDATE_DATETIME ASC;";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>			
<%
String level[]=new String[5];
String ST_idx[]=new String[5];
int level_i=0;
while(rs.next()){
	level[level_i]=rs.getString("STOCK_NAME");
	ST_idx[level_i]=rs.getString("ST_IDX");
	level_i=level_i+1;
}
%>			

	
<div>

<!-- 그래프 -->
        <canvas id="myChart" width="800" height="600">0000000000000000</canvas>
        <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple'],
                datasets: [{
                    label: '스팀스탁지수 TOP5',
                    data: [12, 19, 3, 5, 2],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                animation: {
                    duration: 0
                }, 
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
        // label 변경
        myChart.data.labels = ["<%=level[4]%>", "<%=level[3]%>", "<%=level[2]%>", "<%=level[1]%>", "<%=level[0]%>"];
        // 그냥 마치, 딕셔너리 리스트의 자료구조인 것처럼 접근해서 값을 변경해줘도 문제없습니다. 
        myChart.data.datasets[0].data = [1, 2, 3, 4, 5];
        myChart.update();
        var frame_duration = 1000;
        var i=0;
        d3.interval(
            function(){
                if (i >= 10) {
                    this.stop();
                }
                else {
                    //myChart.data.datasets[0].data = [1 + i, 2 + i, 3 + i, 4 + i, 5 + i];
                    myChart.data.datasets[0].data = [(<%=ST_idx[4]%>)/(10-i), (<%=ST_idx[3]%>)/(10-i), (<%=ST_idx[2]%>)/(10-i), (<%=ST_idx[1]%>)/(10-i), (<%=ST_idx[0]%>)/(10-i)];
                    
                    myChart.update(); // 데이터를 바꾼 다음, 이렇게 업데이트를 해야 적용된다.
                }
                i=i+1;
            }, 
            frame_duration
        );
        </script>        
</div>							
			<span class="next_btn">다음 버튼</span>
		</section>


<%
 rs.close();
 stmt.close();
 conn.close();
} catch(Exception e) {
 out.println(e.getMessage());
}
%>	

		<footer class="footer">
			<p>copyright&copy; 2021 LUCASOFT all rights reserved. <br><br>EMAIL: service@lucasoft.co.kr
			</p>
				
		</footer>
	</div>






</body>
</html>
