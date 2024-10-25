<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery 라이브러리 CDN 추가 (필수)  -->
<!-- https://flukeout.github.io/ -->
<script src=https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		// alert("제이쿼리 사용준비!");
		$("*").css('color','blue'); // 모든요소 (ALL)
		$("h2").css('color','red'); // 특정요소(태그) - 속성한 태그에만 영향을 줌
		$("#one").css('color', 'green');  // id 속성
		$(".two").css('color','brown');   // class 속성
		
		// input 태그의 글자색을 변경
		$("input").css('color','black');
		
		// 속성탐색 선택자 
		// 아이디 -red 
		$("input[type=text]").css('color','red');
		//비밀번호 -blue
		$("input[type^=p]").css('color','blue'); 
		// type^=앞글자 : ~로 시작하는 
		
		// 위치 탐색 선택자
		// tr 맨 첫줄 배경색 입히기
		$("tr:first").css('background','yellow');
		
		// 홀수 
		$("tr:odd").css('background','green');
		// 짝수
		$("tr:even").css('background','blue');
		// 홀,짝 색이 바뀐 이유는 index가 0으로 시작하기 때문!
		
		
		

	})
	
</script>

<!-- <style type="text/css">
	h2{ color : red; }
</style> -->

</head>
<body>

<!-- jQuery(JavaScript) : HTML/CSS 코드  -->
	<h1>/jq1/jqueryTest2.jsp</h1>
	
	<h2 id="one">제목 1</h2>
	<h2 class="two">제목 2</h2>
	
	<hr>
	
	아이디 : <input type="text"> <br>
	비밀번호 : <input type="password"> <br>
	
	<hr>
	
	<table>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
	</table>
	

</body>
</html>