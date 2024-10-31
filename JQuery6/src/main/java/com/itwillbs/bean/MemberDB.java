package com.itwillbs.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * 회원(itwill_member)에 관련된 모든 디비에 관한 처리동작을 수행
 */
public class MemberDB {

	// 2) 전달받은 정보를 mysql(DB)에 저장 => 메서드로 변경

	public void insertMember(MemberBean mb) throws Exception {
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
		System.out.println(" 디비 연결 성공! ");
		System.out.println(" con : " + con);

		// 3. SQL 구문 & pstmt 객체
		String sql = "insert into itwill_member (id,pass,name,gender,age,email,regdate) values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);

		// 3-1. ???
		pstmt.setString(1, mb.getId());
		pstmt.setString(2, mb.getPass());
		pstmt.setString(3, mb.getName());
		pstmt.setString(4, mb.getGender());
		pstmt.setInt(5, mb.getAge());
		pstmt.setString(6, mb.getEmail());
		pstmt.setTimestamp(7, mb.getRegdate());

		// 4. SQL 구문 실행
		pstmt.executeUpdate();

		System.out.println(" 회원가입 성공! ");
	}

	// 로그인체크 메서드
	public int loginCheck(MemberBean mb) throws Exception {
		int result = -1;
		// 로그인 처리결과를 저장 (1 로그인성공,0 비밀번호 오류,-1 회원정보 없음)

		// 디비연결에 필요한 정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "0011";

		// 1. 드라이버 로드
		Class.forName(DRIVER);
		System.out.println(" DB : 드라이버로드 성공! ");

		// 2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println(" DB : 디비 연결 성공! ");

		// 3. SQL구문 & pstmt 객체
		String sql = "select pass from itwill_member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		// 3-1
		pstmt.setString(1, mb.getId());

		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();

		// 5. 데이터 처리
		if (rs.next()) {
			if (mb.getPass().equals(rs.getString("pass"))) {
				result = 1;
			} else {
				result = 0;
			}
		} else {
			// 회원정보가 없음 => loginPro.jsp전달
			result = -1;
		}

		System.out.println(" DB : 로그인 체크 완료! ");
		System.out.println(" DB : " + result);

		return result;
	}

	// 회원정보 조회 - getMember(id)
	public MemberBean getMember(String id) throws Exception {
		// 회원정보를 저장하는 객체 생성
		MemberBean mb = new MemberBean();

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

		// 3. SQL 구문(select) & pstmt 객체
		String sql = "select * from itwill_member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, id);

		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();

		// 5. 데이터 처리
		if (rs.next()) {
			// 사용자가 필요한 정보(rs)를 MemberBean객체에 저장
			// rs -> MemberBean 옮겨담기

			mb.setId(rs.getString("id"));
			mb.setPass(rs.getString("pass"));
			mb.setName(rs.getString("name"));
			mb.setGender(rs.getString("gender"));
			mb.setAge(rs.getInt("age"));
			mb.setEmail(rs.getString("email"));
			mb.setRegdate(rs.getTimestamp("regdate"));

		}

		return mb;
	}
	// 회원정보 조회 - getMember(id)

	// 회원정보 수정 - updateMember(mb)
	public int updateMember(MemberBean mb) throws Exception {
		int result = -1;

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

		// 3. SQL 구문 & pstmt 객체
		// => 본인 여부를 체크해서 정보 수정
		String sql = "select pass from itwill_member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);

		// 3-1 ???
		pstmt.setString(1, mb.getId());

		// 4. SQL 구문 실행
		ResultSet rs = pstmt.executeQuery();

		// 5. 데이터 처리
		if (rs.next()) {
			if (mb.getPass().equals(rs.getString("pass"))) {
				// 3. SQL 작성(update) & pstmt 객체
				sql = "update itwill_member set name=?,age=?,gender=? where id=?";
				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, mb.getName());
				pstmt.setInt(2, mb.getAge());
				pstmt.setString(3, mb.getGender());
				pstmt.setString(4, mb.getId());

				// 4. SQL 실행
				pstmt.executeUpdate();

				result = 1;

			} else {
				result = 0;
			}
		} else {
			result = -1;
		}

		System.out.println(" DB : 회원정보 수정완료 (" + result + ")");

		return result;
	}
	// 회원정보 수정 - updateMember(mb)

	// 회원정보 삭제 - deleteMember(mb)
	public int deleteMember(MemberBean mb) throws Exception {
		int result = -1;

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

		// 3. SQL 구문 & pstmt 객체
		// => 본인 여부를 체크해서 정보 수정
		String sql = "select pass from itwill_member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);

		// 3-1 ???
		pstmt.setString(1, mb.getId());

		// 4. SQL 구문 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5. 데이터 처리
		if(rs.next()){
			if(mb.getPass().equals(rs.getString("pass"))){
				// 3. SQL 작성(delete) & pstmt 객체
				sql = "delete from itwill_member where id=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, mb.getId());
				
				// 4. SQL 실행
				result = pstmt.executeUpdate();
				//result = 1;
				
			}else{
				result = 0;
			}
		}else{
			result = -1;
		}

		System.out.println(" DB : 회원정보 삭제 완료! ("+result+")");		

		return result;
	}
	// 회원정보 삭제 - deleteMember(mb)
	
	
	// int[] arr = new int[6];
	// MemberBean[] mb = new MemberBean[?];(x)
	// => 고정길이 배열
	
	// ArrayList
	// =>  가변길이 배열
	// 회원정보 목록 - getMemberList()
	public ArrayList getMemberList() throws Exception{
		
		ArrayList memberList = new ArrayList();
		
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
//	 	String sql = "select * from itwill_member where id != 'admin'";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5. 데이터 처리
		while(rs.next()){
			//   ( rs -> MemberBean -> 배열(ArrayList) ) 
			
			// MemberBean 객체
			MemberBean mb = new MemberBean();
			
			mb.setId(rs.getString("id"));
			mb.setPass(rs.getString("pass"));
			mb.setName(rs.getString("name"));
			mb.setAge(rs.getInt("age"));
			mb.setGender(rs.getString("gender"));
			mb.setEmail(rs.getString("email"));
			mb.setRegdate(rs.getTimestamp("regdate"));
			
			// MemberBean객체에 저장된 정보를 배열(ArrayList)에 저장
			//memberList[0] = mb; (x,일반 배열)
			memberList.add(mb);
		}//while
		
		System.out.println(" DB : 회원목록정보 저장완료!");
		System.out.println(" DB : "+memberList.size());
		
		return memberList;
	}
	// 회원정보 목록 - getMemberList()
	
	
	
	

} // MemberDB 클래스
