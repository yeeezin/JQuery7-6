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
		
		// 동기 방식으로 string1.jsp 페이지를 다녀오기
		//location.href="string1.jsp";
		
		// 비동기 방식으로 string1.jsp 페이지를 다녀오기
		// ajax() 메서드 사용
		
		/*
			 $.ajax({
				 url : "전송할 페이지(이동할 페이지)",
				 type : "전송방식(GET/POST)"
				 data : "전송할 데이터",
				 dataType : "응답결과 데이터타입(html,xml,text,json)",
				 success : function(result){ // result - 성공시 받아오는 정보
					비동기 방식 처리가 성공했을때 실행하는 코드 
				 },
				 error : function(){
					 비동기 방식 처리가 실패했을때 실행하는 코드 
				 }
				 
			 });
		*/
		
		 // 비동기 방식은 페이지에 갔다가 돌아오는 동작
		 // $.ajax("string1.jsp");	
		
		$.ajax({
			url : "string1.jsp",
			// data : " html(기본값) ",
			success : function(result){
				alert("string1.jsp 페이지를 다녀옴!");
				alert(result);
				$('body').append(result);
			} // success 끝
			
		});
		
		
		
	});

</script>
</head>
<body>
	<h1>/jq2/jqueryTest4.jsp</h1>
	
	<!-- 
		동기 방식 : 사용자의 요청을 처리하고, 서버의 응답을 받아서 페이지 출력
		            (페이지 이동(화면전화) 필요O)
		비동기 방식 : 사용자의 요청을 처리, 서버의 응답결과와 상관없이 처리
		            (페이지 이동(화면전환) 필요X)
		 	
	 -->
	
	<h1> 비동기방식 : Ajax(Asynchronous JavaScirpt And Xml) </h1>
	    => 비동기방식의 JavaScript 와 XML 형태
	    
	    
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>