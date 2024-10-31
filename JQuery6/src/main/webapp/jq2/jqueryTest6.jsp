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
		
		// json1.jsp에 있는 JSON데이터 정보를 가져오기(ajax)
		$.ajax({
			url : "json1.jsp",
			dataType : "json",
			success : function(data){
				alert(" json1.jsp 데이터 접근 성공! ");
				//alert(data);
				console.log(data);
				$("body").append(data.name);
				$("body").append(data.age);
				$("body").append(data.addr);
			}
		});
		
		// $.getJSON('URL',function(){});
		
		$.getJSON("json1.jsp",function(data){
			
			$.each(data,function(key,value){
				$("body").append(key+"//"+value);
			});
		
		});
		
		
		// json2.json 정보를 가져와서 화면에 출력
		// table태그에 추가
		$.getJSON("json2.json",function(data){
			console.log(data);
			// data 배열에 접근
			$.each(data,function(key,value){
				console.log(key+'//'+value);
				//alert(value.name);
				//table태그에 해당 내용정보 추가
				//$("table").append("<tr><td>"+value.name+"</td><td>"+value.age+"</td><td>"+value.addr+"</td></tr>");
				$("#tbl").append("<tr><td>"+value.name+"</td><td>"+value.age+"</td><td>"+value.addr+"</td></tr>");
			});
		});
		
		
		$("#btnList").click(function(){
			//alert("클릭!");
			// ajax사용 list.jsp 페이지에 실행되는 정보를 가져오기
			$.ajax({
				url : "list.jsp",
				success : function(data){
					console.log(data);
					$.each(data,function(idx,item){
							var tag = "<tr>";
								tag += "<td>"+item.id+"</td>";
								tag += "<td>"+item.name+"</td>";
								tag += "<td>"+item.email"</td>";
								tag += "</tr>";
						$("#tbl_member").append(tag);
							
					});
					
				}			
			});// ajax
			
		});// click
		
	}); //제이쿼리 끝

</script>
</head>
<body>
	<h1>jqueryTest6.jsp</h1>
	
	<h1>JSON(JavaScript Object Notation) : 자바스크립트 객체 표현법
		반드시 자바스크립트에서만 사용X, 자바스크립트의 문법을 따름
		XML/CSV 형태 처럼 표준데이터 포멧		
	</h1>
	
	<h1> 장점 :
	     - 단순 택스트 형태로 저장
	     - 속성:값 데이터 쌍으로 구성
	     - 불필요한 정보가 없음(태그) <name>이름</name>  name:이름
	     - 필요한 데이터 리소스가 적음( 전송속도가 빠름 )
	     - 특정언어/플랫폼에 독립적(어디든 사용가능)
	     - 다른 도메인주소에서도 요청 처리가 가능	
	</h1>
     
     <h1> 단점 :
          - 문법에 예민함(자바스크립트 문법 : 따옴표,콤마,콜론,닷...)
             => 문법 하나가 잘못되어도 데이터 전체를 사용X
          - 데이터안에 악의적인 자바스크립트 코드가 포함 가능하다   
     </h1>
     
     <h1> 
         JSON 문법
         - "속성(key)" : 값(value)  데이터 쌍으로 구성
         - {  }  JSON 객체
         - [  ]  JSON 배열
         
         JSON 데이터타입
         - 정수  (2진수 0b~~~,8진수 0~~~,16진수 0X~~~  지원 X)
         - 실수 (고정 소수점(1.1, -653.541),부동 소수점(1e4,2.5e-6))
         - Boolean (true/false)
         - Null
         - 문자열 ("", 0개이상의 유니코드문자로 표현)
         - 객체 ( {} 안에 속성:값 형태로 저장 )
         - 배열 ( [] 안에 값, 객체,배열 형태로 저장)
         
     </h1>

    <hr>
    
    <table border="1" id="tbl">
    	<tr>
    		<td>이름</td>
    		<td>나이</td>
    		<td>지역</td>
    	</tr>    
    </table>

    <hr>
    
    <table border="1" id="tbl_member">
    	<tr>
    		<td>아이디</td>
    		<td>이름</td>
    		<td>이메일</td>
    	</tr>
    
    </table>
    
    
   <br><br>
   <input type="button" value="리스트정보 불러오기" id="btnList">
   <br><br>
   




	
	
</body>
</html>