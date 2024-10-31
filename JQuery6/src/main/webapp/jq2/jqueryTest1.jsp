<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- 외부 JS 파일을 실행 (jQuery 실행)-->
<script src="test1.js"></script>

<!-- 내부 JS 코드를 실행해서 (jQuery 실행) -->
<script type="text/javascript">
	$(document).ready(function(){
		
		
	}); // 제이쿼리 끝
</script>
</head>
<body>

	<h1>/jq2/jqueryTest1.jsp</h1>
	
	<input type="button" value="버튼1" onclick=" alert('버튼1 클릭!'); ">
	
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	
	<hr>
	
	<img src="../jq1/1.jpg">

</body>
</html>