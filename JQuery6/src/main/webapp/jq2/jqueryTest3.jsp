<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<script src="test1.js"></script>
	
   <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>
    
    

<style type="text/css">
	#aniDiv {
		width: 50px;
		height: 50px;
		background: orange;
	}

</style>

</head>
<body>
	<h1>/jq2/jqueryTest3.jsp</h1>
	<h1> 효과 & 애니메이션 </h1>
	
	<h2> 열기/닫기1 </h2>
	<div>
		<h2>제목1</h2>
		<p>내용1</p>
	</div>
	
	<h2> 열기/닫기2 </h2>
	<div>
		<h2>제목2</h2>
		<p>내용2</p>
	</div>
	
	
	<hr>
	
	<h1> 버튼 클릭시 div 태그의 크기를 조금씩(50)증가 </h1>
	<div id="aniDiv"></div>
	
	
	<hr>
	
    <div class="slider">
    
       <div>
      		<img alt="" src="11.jpg">
       </div>
      
       <div>
      		<img alt="" src="22.jpg">
       </div>
    
    </div>
	
	
	
	
	
	
	
	
	
</body>
</html>