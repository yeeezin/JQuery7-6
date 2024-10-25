<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.7.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		alert("제이쿼리 실행!");
		
		// $("h1").css('color', 'red'); // 속성에 값을 설정
		// 1) 속성의 정보를 가져오기(확인)
		// ex) $("table").attr("border");
		
		var c = $("h2").css('color'); // 속성의 값을 가져오기
		alert(c);
		
		// 2) 속성의 정보를 특정 값으로 변경
		// h2태그의 글자색을 blue로 변경 
		$("h2").css("color","blue");
		
		// 3) 속성의 정보를 특정 값으로 각각 변경
		//		red,orange,yellow
		$(".h1").css('color','red');
		$("#h2").css('color','orange');
		$(".h3").css('color','yellow');
		
		// 배열로 값을 바꿔보기
		var cArr = ["yellow","orange","red"];
		$(".h1").css("color",cArr[0]);
		
		$("h2").css("color",function(index,value){
			alert(index+"/"+value);
			// h2태그의 인덱스 번호  / 태그의 color 속성값
			return cArr[index];
			
		});
		
		// 4) 여러가지 속성을 적용
		//   	글자색 -> 전부 노란색으로 
		// 		배경색 -> 전부 검정색으로 
		
		$("h2").css('color','yellow');
		$("h2").css('backgroundColor','black');
		
		// => 한번에 여러가지 속상을 적용
		$("h2").css({
			'color':'yellow',
			'backgroundColor' : 'pink'
		});
		
		// h2 - 배경색 검정, 글자색 : red,orange,yellow
		var arr = ["red","orange","yellow"];
		$("h2").css({
			"color" : function(index){
				return arr[index];
			},
			'backgroundColor' : 'black'
		});
		
		
	});
		
	
</script>
</head>
<body>

	<h1>/jq1/jqueryTest3.jsp</h1>
	
	<h2 class="h1">head - 1</h2>
	<h2 id="h2">head - 2</h2>
	<h2 class="h3">head - 3</h2>
	

</body>
</html>