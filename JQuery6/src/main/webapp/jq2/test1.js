/**
 *  test.js 파일
 *  직접 실행 못함. 
 */
// javascript 실행 가능 
// alert("hello");

// jquery 실행 가능
 $(document).ready(function(){
	alert("hello jquery , 외부 JS파일 실행!");
	
	// 이벤트 : 사용자가 브라우저에 와서 수행하는 모든 동작
	// => 이벤트핸들러 : 이벤트를 처리하기 위한 도구 
	
	// input 태그가 클릭했을때 
	$('input').click(function(){
		alert("제이쿼리 이벤트!");
	});
	
	$('input').on("click", function(){
		alert("제이쿼리 이벤트on")
	});
	
	//  h2 태그를 클릭 할때 해당 h2 태그에 + 를 추가하기
	$('h2').click(function(){
//		$(this).html(function(idx,oldHtml){
//			return oldHtml+"+";
//		});
	
		$(this).append(function(){
			return "+";
		});
		
	});
	
	// 마우스 이벤트 : 마우스를 올렸을때 다른 그림으로 변경
	//	$('img').mouseover(function(){
	//		// alert("마우스 이벤트!");
	//		$('img').attr('src',"../jq1/2.jpg");
	//	});
	//	
	//	// 마우스를 내릴때 원래 그림으로 변경
	//	$('img').mouseout(function(){
	//		$('img').attr('src',"../jq1/1.jpg");
	//	});
	
	
	$('img').mouseover(function(){
			// alert("마우스 이벤트!");
			$('img').attr('src',"../jq1/2.jpg");
		}).mouseout(function(){
				$('img').attr('src',"../jq1/1.jpg");
			});
	
}); // jquery1.jsp 끝



$(function(){
	// 키보드 이벤트 처리
	
	// textarea 태그에 키보드 입력 이벤트가 발생했을때
	$('textarea').keyup(function(){
		// alert('키보드 입력!');
		
		// 입력된 정보를 가져오기 
		var t = $('textarea').val();
		// alert(t.length);
		
		
		// 키보드로 입력된 글자수를 측정
		// h3 태그(아이디가 txtlength) 정보에 200에서 입력된 글자수를
		// 뺀 나머지 숫자를 표시
		$('#txtlength').html(200 - t.length);

		
	});
	
}); //jquery2.jsp 끝



/* 효과 - jQuery */
$(document).ready(function(){
	
	$('h1').click(function(){
		$('h2').show(); // 보여주기
		
	});
	
	
	// h2 클릭시 이벤트 발생
	$('h2').click(function(){
		
		// $('h2').hide(); // 닫기(숨기기)
		// $('h2').toggle();
		
		// 다음 내용이 숨겨짐.
		// $('h2').next().toggle(); 
		
		// slideToggle / fadeToggle
		$(this).next().slideToggle('slow',function(){
			// 콜백함수 - 적용하는 효과가 완전히(100%) 실행 후 동작하는 함수 
			alert("토글 끝!");
		});
		
		
	});
	
	//  == $('h2').on('click',function(){});
	
	// div #aniDiv를 클릭 할때 마다 사이즈를 50씩 증가
		 
		$("#aniDiv").click(function(){
			//alert("#aniDiv 클릭!");
			
			// 기존의 요소의 가로,세로 길이 측정
			var width = $(this).css("width");
			var height = $(this).css("height");
			//alert(width+"/"+height);
			
			// 기존의 값 + 50 
	//		$(this).css({
	//			"width" : parseInt(width) + 50,
	//			"height" : parseInt(height) + 50			
	//		});
			$(this).animate({
				"width" : parseInt(width) + 50,
				"height" : parseInt(height) + 50			
			});
		});
		

	
	
	
}); //jquery3.jsp 끝

$(document).ready(function(){
     $(".slider").bxSlider();
});





