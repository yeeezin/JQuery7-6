<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.bean.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// => DB 처리결과(JSP)를 JSON형태로 변경

// 2) 관리자 일때, 회원정보를 모두 가져와서 화면에 출력

// 디비연결에 필요한 정보
final String DRIVER = "com.mysql.cj.jdbc.Driver";
final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
final String DBID = "root";
final String DBPW = "0011";

// 1. 드라이버 로드
Class.forName(DRIVER);
System.out.println(" 드라이버 로드 성공! ");
// 2. 디비 연결
Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
System.out.println(" 디비연결 성공! ");
System.out.println(" con : " + con);

// 3. SQL 구문(select) & pstmt객체
String sql = "select * from itwill_member";
PreparedStatement pstmt = con.prepareStatement(sql);

// 4. SQL 실행
ResultSet rs = pstmt.executeQuery();

// 5. 데이터처리
//ArrayList memberList = new ArrayList();
JSONArray memberList = new JSONArray();
while (rs.next()) {
	//rs -> DTO -> ArrayList
	//MemberBean mb = new MemberBean();
	JSONObject mb = new JSONObject();
	
	// 아이디,이름,이메일
	// 	mb.setId(rs.getString("id"));
	// 	mb.setName(rs.getString("name"));
	// 	mb.setEmail(rs.getString("email"));
	mb.put("id", rs.getString("id")); // { "id":"admin" }
	mb.put("name", rs.getString("name")); // { "id":"admin" }
	mb.put("email", rs.getString("email")); // { "id":"admin" }
	
	//... 나머지
	memberList.add(mb);
}
%>
<%=memberList%>