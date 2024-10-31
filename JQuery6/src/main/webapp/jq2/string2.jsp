<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	// string2.jsp 페이지
    	System.out.println("string2.jsp 페이지 실행");
    
    	// 비동기방식(ajax)로 전달된 정보를 저장
    	String name = request.getParameter("name");
    	System.out.println(name);
    
    	int age = Integer.parseInt(request.getParameter("age"));
    	System.out.println(age);
    	
    	// ajax 처리 결과는 화면(HTML) 코드 형태의 정보를 가져감
    
    %>
    
    <h3> 전달된 정보 (name) : <%=name %>, (age) : <%=age %></h3>
    