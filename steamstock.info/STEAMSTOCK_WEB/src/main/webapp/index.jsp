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
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1.0, minimum-scale=1.0">
<meta name="description" content="투자자들이 가장 관심 갖는 종목을 실시간으로 수집하여, 스팀스탁지수 통계로 제공합니다. 시장의 관심 흐름을 데이터를 보고 판단할 수 있습니다.">

<!-- 대표url -->
<link rel="canonical" href="https://steamstock.info/index.jsp">

<!-- 오픈그래프, 소셜미디어 공유시 우선활용되는 정보 -->
<meta property="og:type" content="website"> 
<meta property="og:title" content="스팀스탁 SteamStock | 주식 종목토론실 관심도 측정 서비스">
<meta property="og:description" content="투자자들이 가장 관심 갖는 종목을 실시간으로 수집하여, 스팀스탁지수 통계로 제공합니다. 시장의 관심 흐름을 데이터를 보고 판단할 수 있습니다.">
<meta property="og:image" content="https://steamstock.info/images/steamstock_robot.gif">
<meta property="og:url" content="https://steamstock.info">


<title>스팀스탁 SteamStock | 주식 종목토론실 관심도 측정 서비스</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<!--link rel="apple-touch-icon-precomposed" href="images/icon/flat-design-touch.png"-->


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-QVLHN7CXYV"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-QVLHN7CXYV');
</script>


<!-- kakao start -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>   
 
<script type="text/javascript">
function sendLinkCustom(){
	 if(!Kakao.isInitialized()){
	 	Kakao.init("f745a290dd0d450e8b084ea872a46b20");
	 }
	 Kakao.Link.sendCustom({
		 templateId: 60658
	 })
};
</script>
<!-- kakao end -->


<!-- google chart start -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
   google.charts.load('current', {'packages':['gauge']});
   google.charts.setOnLoadCallback(drawChart);

   function drawChart() {

     var data = google.visualization.arrayToDataTable([
       ['Label', 'Value'],
       ['Stock RPM', 80],
       ['ST RPM', 55],
       ['ST Continue', 68]
     ]);

     var options = {
       width: 280, height: 82,
       redFrom: 90, redTo: 100,
       yellowFrom:75, yellowTo: 90,
       minorTicks: 5
     };

     var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

     chart.draw(data, options);

     setInterval(function() {
       data.setValue(0, 1, 40 + Math.round(60 * Math.random()));
       chart.draw(data, options);
     }, 13000);
     setInterval(function() {
       data.setValue(1, 1, 40 + Math.round(60 * Math.random()));
       chart.draw(data, options);
     }, 5000);
     setInterval(function() {
       data.setValue(2, 1, 60 + Math.round(20 * Math.random()));
       chart.draw(data, options);
     }, 26000);
   }
 </script>
<!-- google chart end -->


<script src="js/jquery.min.js"></script>


<script>
$(function (){
    $("#menu_toggle_btn").click(function(){
        $("#gnb").toggle();
    });
});    
</script>

<!-- d3.js -->
<script src="https://d3js.org/d3.v5.min.js"></script>
<!-- chartjs 시작-->     
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

     
<script language="JavaScript">
<!--
	function start()
	{
		setInterval("alert()",60000);
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
display:none;
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
order:2;
height:20.750rem;
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

canvas#myChart{
width:90%;
height:90%;
}

/* 최근 글 영역, 인기 글 영역 CSS */
.latest_post_section{
order:5;
background:#ffc40f;
text-shadow:0px 1px 1px #b98e0b;
}

.popular_post_section{
order:6;
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
order:8;
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
order:4;
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
order:3;
}

.banner_box_01{
background:#e6567a;
height:120px;
display:flex;
justify-content:center;
align-items:center;
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
line-height:17px;
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
width:59.89583333333333%;
/* 460px ÷ 768px */
height:auto;
}

.slider_section span{
position:relative;
z-index:10;
}

canvas#myChart{
width:420px;
height:350px;
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
width:90%;
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
display:flex;
order:2;
width:50%;
/* 480px ÷ 960px */
}

canvas#myChart{
width:420px;
height:350px;
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
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v11.0" nonce="vhJu5ZYd"></script>

	<div id="wrap">
		<section class="info_section">
			<ul class="info_list">
				<li><a href="index.jsp"><img src="images/s_images/info_icon_01.png" alt=""></a></li>
				<li><a href="index.jsp"><img src="images/s_images/info_icon_02.png" alt=""></a></li>
				<li><a href="index.jsp"><img src="images/s_images/info_icon_03.png" alt=""></a></li>
				<li><a href="index.jsp"><img src="images/s_images/info_icon_04.png" alt=""></a></li>
				
				
<%
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
				
			
			</ul>
		</section>
		<header class="header">
			<h1 class="logo">
				<a href="index.jsp">STEAM<br>STOCK<!--br><br><font size='3'>장이멈춘순간에도<br>종토는달린다</font--></a>				
			</h1>
			<nav class="nav">
				<ul class="gnb" id="gnb" style="display:none;">
					<li><a href="index.jsp">홈</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="introudce.html">스팀스탁</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="idx_top50.jsp">kospi통계</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="idx_kosdaq_top50.jsp">kosdaq통계</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="https://finance.naver.com/sise/sise_index.nhn?code=KOSPI">Kospi : <%=stock_price_rate_now[0]%></a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="https://finance.naver.com/sise/sise_index.nhn?code=KOSDAQ">Kosdaq : <%=stock_price_rate_now[1]%></a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
				</ul>
			</nav>
			<span class="menu_toggle_btn" id="menu_toggle_btn">전체 메뉴 토글 버튼</span>
		</header>
		<section class="slider_section">
			<span class="prev_btn">이전 버튼</span>	
			
				
<%

 
 //////////////////////////////////////
 //query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 //query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) desc limit 5";
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

<!-- 그래프 canvas 의 width, height 값은 모바일기준으로 250px고정하고 pc는 css에서 넓힘-->
        <canvas id="myChart" width="250px" height="250px"></canvas>
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
		<section class="latest_post_section">
			<h2 class="title">최근 글</h2>
			<ul class="latest_post_list">			
<%//최근글


try {
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 stmt = conn.createStatement();
 
 //////////////////////////////////////
 String stock_name = request.getParameter("stock_name");
 String stock_code = request.getParameter("stock_code");
 
 Date nowTime = new Date();
 SimpleDateFormat sf_day = new SimpleDateFormat("yyyy-MM-dd");
 SimpleDateFormat sf = new SimpleDateFormat("MM월 dd일 HH시 mm분");
 
 TimeZone tz;
 tz=TimeZone.getTimeZone("Asia/Seoul");
 sf_day.setTimeZone(tz);
 sf.setTimeZone(tz);

 String search_date_day = sf_day.format(nowTime);
 String search_date = sf.format(nowTime);
 //String query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 50";
  //String query = "SELECT STOCK_CODE, HOUR, 5MIN, 5MIN_IDX, 5MIN_READ_CNT  FROM STEAMSTOCK.STOCK_IDX_5MIN_HISTORY WHERE STOCK_CODE = '"+stock_code+"' AND DATE = '"+search_date+"' ORDER BY UPDATE_DATETIME";
 query = "SELECT SNS_TYPE, STOCK_NAME, STOCK_CODE, REG_DT, READ_CNT, TITLE,WRITER,CONTENT_URL FROM STEAMSTOCK.STOCK_BOARD_20210810 WHERE LEFT(REG_DT,10)=DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 9 HOUR),'%Y.%m.%d') ORDER BY reg_dt desc limit 5;";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>			
<%
while(rs.next()){	
%>					
				<li><a href="http://finance.naver.com<%= rs.getString("CONTENT_URL")%>"><%= rs.getString("TITLE")%></a></li>
<%	
}
%>
			</ul>			
		</section>
		<section class="popular_post_section">
			<h2 class="title">인기 글</h2>
			<ul class="popular_post_list">			
<%

 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 stmt = conn.createStatement();
 
 //////////////////////////////////////
 query = "SELECT SNS_TYPE, STOCK_NAME, STOCK_CODE, REG_DT, READ_CNT, TITLE,WRITER,CONTENT_URL FROM STEAMSTOCK.STOCK_BOARD_20210810 WHERE LEFT(REG_DT,10)=DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 9 HOUR),'%Y.%m.%d') ORDER BY read_cnt desc limit 5;";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>
<%
while(rs.next()){	
%>				
				<li><a href="http://finance.naver.com<%= rs.getString("CONTENT_URL")%>"><%= rs.getString("TITLE")%></li>
<%	
}
%>
			</ul>
		</section>
<%
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
stmt = conn.createStatement();
//query = "SELECT (SELECT STOCK_NAME FROM STEAMSTOCK.STOCK_IDX WHERE STOCK_CODE = HIS.STOCK_CODE) AS STOCK_NAME, STOCK_CODE, format(ROUND(SUM(5MIN_IDX*5MIN_READ_CNT)/COUNT(STOCK_CODE),1),1) AS AVG_VALUE, SUM(5MIN_IDX*5MIN_READ_CNT) AS SUM_CNT, (SELECT SUBSTRING(STOCK_PRICE_RATE_TODAY,INSTR(STOCK_PRICE_RATE_TODAY,'원')+2,length(STOCK_PRICE_RATE_TODAY)) AS RATE FROM STEAMSTOCK.STOCK_IDX WHERE STOCK_CODE = HIS.STOCK_CODE) AS RATE FROM STOCK_IDX_5MIN_HISTORY HIS WHERE DATE='"+search_date_day+"' GROUP BY STOCK_CODE ORDER BY SUM_CNT DESC LIMIT 1;";
query = "SELECT STOCK_NAME, STOCK_CODE,(SELECT MARKET_DIV FROM STOCK_ITEMS WHERE SHORT_CODE=ALLT.STOCK_CODE) AS MARKET_DIV, AVG_VALUE, SUM_CNT, RATE from (SELECT (SELECT STOCK_NAME FROM STEAMSTOCK.STOCK_IDX WHERE STOCK_CODE = HIS.STOCK_CODE) AS STOCK_NAME, STOCK_CODE, format(ROUND(SUM(5MIN_IDX*5MIN_READ_CNT)/COUNT(STOCK_CODE),1),1) AS AVG_VALUE, SUM(5MIN_IDX*5MIN_READ_CNT) AS SUM_CNT, (SELECT SUBSTRING(STOCK_PRICE_RATE_TODAY,INSTR(STOCK_PRICE_RATE_TODAY,'원')+2, length(STOCK_PRICE_RATE_TODAY)) AS RATE FROM STEAMSTOCK.STOCK_IDX WHERE STOCK_CODE = HIS.STOCK_CODE) AS RATE  FROM STOCK_IDX_5MIN_HISTORY HIS  WHERE DATE='"+search_date_day+"' GROUP BY STOCK_CODE  union all SELECT (SELECT STOCK_NAME FROM STEAMSTOCK.KOSDAQ_IDX WHERE STOCK_CODE = KOSDAQ_HIS.STOCK_CODE) AS STOCK_NAME, STOCK_CODE, format(ROUND(SUM(5MIN_IDX*5MIN_READ_CNT)/COUNT(STOCK_CODE),1),1) AS AVG_VALUE, SUM(5MIN_IDX*5MIN_READ_CNT) AS SUM_CNT, (SELECT SUBSTRING(STOCK_PRICE_RATE_TODAY,INSTR(STOCK_PRICE_RATE_TODAY,'원')+2, length(STOCK_PRICE_RATE_TODAY)) AS RATE FROM STEAMSTOCK.KOSDAQ_IDX WHERE STOCK_CODE = KOSDAQ_HIS.STOCK_CODE) AS RATE  FROM KOSDAQ_IDX_5MIN_HISTORY KOSDAQ_HIS  WHERE DATE='"+search_date_day+"' GROUP BY STOCK_CODE  ) ALLT ORDER BY ALLT.SUM_CNT DESC LIMIT 1;";

rs = stmt.executeQuery(query);
String stock_name_best="";
String stock_code_best="";
String rate="";
String avg_st_value="";
String market_div_value="";
String market_target="";


while(rs.next()){	
	stock_name_best=rs.getString("STOCK_NAME");
	stock_code_best=rs.getString("STOCK_CODE");
	rate=rs.getString("RATE");
	avg_st_value=rs.getString("AVG_VALUE");
	market_div_value=rs.getString("MARKET_DIV");
}


if("KOSPI".equals(market_div_value)){
	market_target="idx_5min_history_chart";
}else{
	market_target="idx_kosdaq_5min_history_chart";
}
	
%>		
		<section class="gallery_section">
			<ul class="gallery_list">
				<li>
					<a href="/<%=market_target%>.jsp?stock_code=<%=stock_code_best%>&stock_name=<%=stock_name_best%>">
						<figure>
							<img src="images/p_images/gallery_01.jpg" alt="<%=stock_name_best%>">
							<figcaption>오늘 5분평균 최고는 <P><br><%=stock_name_best%><br><br>  <%=avg_st_value%>(<%=rate%>)</figcaption>
						</figure>
					</a>
				</li>
				<br>
				<li>
					<a href="/what_st_idx.html">
						<figure>
						<img src="images/p_images/gallery_02.jpg" alt="">
						<figcaption>스팀스탁지수 안내</figcaption>
						</figure>
					</a>
				</li>
				<br>
			</ul>				
		</section>
		<section class="rankup_section">
			<h2 class="title"><%=search_date%><br><br>스팀스탁지수 순위</h2>		
			<ul class="rankup_list">
<%

 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 stmt = conn.createStatement();
 
 //////////////////////////////////////
 //query = "SELECT STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 //query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned) desc, cast(idx_now as unsigned) desc limit 10";
 query = "SELECT 'KOSPI' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX, SUBSTRING(STOCK_PRICE_RATE_TODAY,INSTR(STOCK_PRICE_RATE_TODAY,'원')+2,length(STOCK_PRICE_RATE_TODAY)) AS RATE FROM STEAMSTOCK.STOCK_IDX union all SELECT 'KOSDAQ' AS MARKET, STOCK_NAME,STOCK_CODE,IDX_NOW,5MIN_READ_CNT, cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) as ST_IDX, SUBSTRING(STOCK_PRICE_RATE_TODAY,INSTR(STOCK_PRICE_RATE_TODAY,'원')+2,length(STOCK_PRICE_RATE_TODAY)) AS RATE FROM STEAMSTOCK.KOSDAQ_IDX ORDER BY cast(5MIN_READ_CNT as unsigned)*cast(idx_now as unsigned) desc limit 10";
 rs = stmt.executeQuery(query); 
 //////////////////////////////////////
 
%>			
<%
while(rs.next()){	
	if("KOSPI".equals(rs.getString("MARKET"))){
%>			
				<li><a href="/idx_5min_history_chart.jsp?stock_code=<%= rs.getString("STOCK_CODE")%>&stock_name=<%=rs.getString("STOCK_NAME")%>"><%= rs.getString("STOCK_NAME")%> <%= rs.getString("RATE")%></a></li>
<%	
	}else{
%>		
				<li><a href="/idx_kosdaq_5min_history_chart.jsp?stock_code=<%= rs.getString("STOCK_CODE")%>&stock_name=<%=rs.getString("STOCK_NAME")%>"><%= rs.getString("STOCK_NAME")%> <%= rs.getString("RATE")%></a></li>
<%
	}
}
%>	

<%
 rs.close();
 stmt.close();
 conn.close();
} catch(Exception e) {
 out.println(e.getMessage());
}
%>	
			</ul>
		</section>
		<section class="banner_section">
				

			<div class="banner_box_01" align="center">
				<div id="chart_div" style="width: 280px; height: 82px; vertical-align:center;"></div>	
			</div>				
							
				
				
				
				
			<div class="banner_box_02">
				<ul class="banner_list">
					<li><img src="images/s_images/js_logo.png" alt=""></li>
					<li><img src="images/s_images/html_logo.png" alt=""></li>
					<li><img src="images/s_images/css_logo.png" alt=""></li>
				</ul>
			</div>
		</section>
		<section class="social_section">
			<ul class="social_list">
				<!--li><a href="https://twitter.com" target="_blank"><img src="images/s_images/social_icon_01.png" alt=""></a></li-->
<!-- 트위터코드 참고 https://codepen.io/trichter90/pen/jvGXXz -->				
<a alt="Steamstock generates statistics every five minutes by making the number of views multiplied  by the number of posts registered in the portal stock item discussion room.  Based on this, it is a system that provides a ranking of interest." target="_blank" href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fsteamstock.info&text=%EC%A3%BC%EC%8B%9D%20%EC%A2%85%EB%AA%A9%ED%86%A0%EB%A1%A0%EC%8B%A4%EC%9D%98%20%EA%B4%80%EC%8B%AC%EC%A0%95%EB%8F%84(%EB%93%B1%EB%A1%9D%EA%B1%B4%EA%B3%BC%EC%A1%B0%ED%9A%8C%EC%88%98)%EB%A5%BC%20%ED%86%B5%EA%B3%84%EC%99%80%20%EC%A7%80%EC%88%98%EB%A1%9C%20%EB%B3%BC%20%EC%88%98%20%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4.&hashtags=STEAMSTOCK,KOSPI,KOSDAQ"><img src="images/s_images/social_icon_01.png" alt=""></a>				
				
				<!--li><a href="https://www.facebook.com" target="_blank"><img src="images/s_images/social_icon_02.png" alt=""></a></li-->
<!-- facebook코드 참고 https://developers.facebook.com/docs/plugins/share-button?locale=ko_KR -->				
<li><div class="fb-share-button" data-href="https://steamstock.info" data-layout="icon_link" data-size="large"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fsteamstock.info%2F&amp;src=sdkpreparse"><img src="images/s_images/social_icon_02.png" alt=""></a></div></li>				
				
				<li><a href="javascript:sendLinkCustom();"><img src="images/s_images/kakao_icon.png" width="53px" height="53px"  alt=""></a></li>
			</ul>
		</section>
		<footer class="footer">
			<p>copyright&copy; 2021 <a href="http://lucasoft.co.kr">LUCASOFT</a> all rights reserved.  <br><br>장이멈춘순간에도종토는달린다 - SteamStock
			</p>
				
		</footer>
	</div>





</body>
</html>
