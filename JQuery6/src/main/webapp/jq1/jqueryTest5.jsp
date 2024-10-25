<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// html() : 요소의 내용을 가져오기 (해당요소중 첫번째 요소만)
		// text() : 요소의 내용을 가져오기 (해당요소 전부)
			
		var h = $("h2").html();
		alert(h);
		
		var t = $("h2").text();
		alert(t);
		
		// h2 태그에 작성된 내용을 'itwill'으로 변경
		// html(값)/text(값) : 태그 요소의 내용을 변경
		
		 // $('h2').html('itwill');
		 // $('h2').text('itwill');
		 // $('h2').html('<h3>itwill</h3>'); // 태그가 적용
			$('h2').text('<h3>itwill</h3>'); // 글자 적은 그대로 적용, 태그 적용X 
			
		 // div 태그에 각각의 요소에 값 변경하기 
// 			<div>00</div> <!-- 0 - itwill - 00 -->
// 			<div>11</div> <!-- 1 - itwill - 11 -->
// 			<div>22</div> <!-- 2 - itwill - 22 -->

			$('div').html(function(idx,oldHtml) {
				// (idx+'/'+oldHtml);
				return idx+"- itwill - "+oldHtml;	
			});
			
			$("div").click(function(){
				$("div").html("itwill!");
			});
		 
		 
		
		
		
		
	});
</script>
</head>
<body>

	<h1>/jq1/jqueryTest5.jsp</h1>
	
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	
	<hr>
	
	<div>00</div> <!-- 0 - itwill - 00 -->
	<div>11</div> <!-- 1 - itwill - 11 -->
	<div>22</div> <!-- 2 - itwill - 22 -->

</body>
</html>