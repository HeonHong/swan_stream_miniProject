<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- meta og tags -->
    <meta content="왓챠 - 10만 편의 영화, 드라마, 애니, 예능, 웹툰 무제한 감상" property="og:title">
    <meta content="website" property="og:type">
    <meta content="모든 영화, 드라마, 다큐멘터리, 애니메이션, 웹툰을 언제 어디서나 최고의 화질로 무제한 감상하세요." property="og:description">
    <meta content="영화, 드라마, 다큐멘터리, 애니메이션, 웹툰, 영화 보기, 드라마 보기, 애니메이션 보기, 영화 스트리밍, 드라마 스트리밍, 다큐멘터리 스트리밍, 애니메이션 스트리밍" property="og:keywords">
    <meta content="https://do6ll9a75gxk6.cloudfront.net/images/og.e0109e63a33f137ee11b.png" property="og:image">
    <meta content="ko-KR" property="og:locale">
    <meta content="http://jasontesting.shop/" property="og:url">
    <title>Swan Stream</title>

    <!-- style sheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean">
    <link rel="icon" type="image/x-icon" href="/swan_stream/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="/swan_stream/static/normalize.css">
    <link rel="stylesheet" href="/swan_stream/static/login.css">
    
    <!-- javascripts -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script defer src="/swan_stream/js/main.js"></script>
</head>
<body>
<div id="root">
	<div class="main">
		<nav class="navigation">
			<a class="navigation-image" href="#"></a>
			<ul class="navigation-login-area">
				<li>
					<a class="login-button" href="login.jsp">로그인</a>
				</li>
			</ul>
		</nav>
		<main class="main-page-area">
			<div class="main-slider">
				<div class="slider on"></div>
				<div class="slider"></div>
				<div class="slider"></div>
				<div class="slider"></div>
				<div class="slider"></div>
			</div>
			<div id="main-page-wallpaper1">
				<div class="main-page-content">
					<h3><span>영화, 드라마, 예능, 다큐멘터리, 웹툰을 무제한으로<br></span></h3>
					<h4>매주 5백 여편의 신작이 업데이트 되며, 추가 요금은 전혀 없어요.</h4>
					<div class="main-subscription">
						<a href="/swan_stream/login.jsp">2주 무료 이용 시작</a>
					</div>
				</div>
			</div>
			<div id="main-page-wallpaper2">
				<div class="main-page-content">
					<h3><span>여럿이 함께, 하나의 이용권으로<br></span></h3>
					<h4>동시 4개 기기에서 재생이 가능한 프리미엄 이용권을 이용해보세요.</h4>
					<div class="main-subscription">
						<a href="/swan_stream/login.jsp">2주 무료 이용 시작</a>
					</div>
				</div>
			</div>
			<div id="main-page-wallpaper3">
				<div class="main-page-content">
					<h3><span>이제 TV로 최고의 화질을 경험하세요<br></span></h3>
					<h4>최대 Ultra HD 4K 해상도로 생생한 감동을 느껴보세요.</h4>
					<div class="main-subscription">
						<a href="/swan_stream/login.jsp">2주 무료 이용 시작</a>
					</div>
				</div>
			</div>
			<div id="main-page-wallpaper4">
				<div class="main-page-content">
					<h3><span>이동 중에도 감상을 멈추지 마세요<br></span></h3>
					<h4>보고 싶은 콘텐츠를 다운로드하여 오프라인으로 즐기세요.</h4>
					<div class="main-subscription">
						<a href="/swan_stream/login.jsp">2주 무료 이용 시작</a>
					</div>
				</div>
			</div>
			<div id="main-page-wallpaper5">
				<div class="main-page-content">
					<h3><span>스마트폰, 태블릿, TV, PC, 크롬캐스트, Android TV에서<br></span></h3>
					<h4>10만여 편의 콘텐츠를 무제한 스트리밍하세요.</h4>
					<div class="main-subscription">
						<a href="/swan_stream/login.jsp">2주 무료 이용 시작</a>
					</div>
				</div>
				<div class="main-page-arrow-box">
					<button type="button" class="main-page-arrow-reverse"></button>
				</div>
			</div>
		</main>
	</div>
</div>
<script>
let height;
$(function(){
	height = $("#main-page-wallpaper1").offset();
	$("html, body").animate({scrollTop: height.top},300);
});
$(".slider").click(function(){
	$(".slider").removeClass("on");
	if($(this).index() == 0) {
		$(".slider:eq(0)").addClass("on");
		height = $("#main-page-wallpaper1").offset();
	} else if($(this).index() == 1){
		$(".slider:eq(1)").addClass("on");
		height = $("#main-page-wallpaper2").offset();
	} else if($(this).index() == 2){
		$(".slider:eq(2)").addClass("on");
		height = $("#main-page-wallpaper3").offset();
	} else if($(this).index() == 3){
		$(".slider:eq(3)").addClass("on");
		height = $("#main-page-wallpaper4").offset();
	} else if($(this).index() == 4){
		$(".slider:eq(4)").addClass("on");
		height = $("#main-page-wallpaper5").offset();
	}
	$("html, body").animate({scrollTop: height.top},300);
});
$(".main-page-arrow").click(function(){
	console.log($(this).index())
});
$(".main-page-arrow-reverse").click(function(){
	height = $("#main-page-wallpaper1").offset();
	$("html, body").animate({scrollTop: height.top},300);
});
</script>
</body>
</html>