<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		// h2 태그에 각각 클래스명을 설정
		
		// $("h2").attr("class","high_0");
// 		$('h2').attr('class',function(idx){
// 			return "high_"+idx;
// 		});
		
		// each() 사용
// 		$.each('h2',function(){
// 			console.log('h2 each()');
// 		});
		
		$('h2').each(function(idx){
			// console.log('h2 each()');
			// $('h2').addClass("high_"+idx);
			$(this).addClass("high_"+idx);
			// this : 나를 나타내는 레퍼런스 
			// 		=> 이벤트가 발생한 대상/요소를 나타내는 레퍼런스
		});
		
		// 이미지 제어
		$('img').css('width','250');
		
		// 일정 주기별로 반복 실행하는 메서드 
		setInterval(function(){
			// console.log("hello!");
			$('#imgDiv').append($('img').first());
		},1000); // 1000 = 1초
		
	
		
		
	}); // 제이쿼리 끝
</script>

<style type="text/css">
	/* h2{
		background : pink;
	} */
	
	.high_0 { background : red; }
	.high_1 { background : orange; }
	.high_2 { background : yellow; }
	.high_3 { background : green; }
	.high_4 { background : blue; }
	
</style>

</head>
<body>

	<h1>/jq1/jqueryTest7.jsp</h1>
	
	<!-- h2 태그의 배경색을 'css'로 변경 -->
	
<!-- 	<h2 class="high_0">head - 0</h2> -->
<!-- 	<h2 class="high_1">head - 1</h2> -->
<!-- 	<h2 class="high_2">head - 2</h2> -->
<!-- 	<h2 class="high_3">head - 3</h2> -->
<!-- 	<h2 class="high_4">head - 4</h2> -->
	
	<h2 class="">head - 0</h2>
	<h2 class="">head - 1</h2>
	<h2 class="">head - 2</h2>
	<h2 class="">head - 3</h2>
	<h2 class="">head - 4</h2>
	
	<hr>
	
	<div id="imgDiv">
		<img src="1.jpg">
		<img src="2.jpg">
		<img src="3.jpg">
	</div>
	
	
	

</body>
</html>