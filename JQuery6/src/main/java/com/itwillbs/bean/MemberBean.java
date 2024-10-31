package com.itwillbs.bean;

import java.sql.Timestamp;

/**
 * 	회원가입에 필요한 정보를 저장객체
 *   => itwill_member 테이블의 정보를 저장
 */
public class MemberBean {
	
	private String id;
	private String pass;
	private String name;
	private String gender;
	private int age;
	private String email;
	private Timestamp regdate;
	
	// alt shfit s  + r  
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	// alt shfit s + s
	// 객체안에 있는 모든요소(변수)의 값을 한번에 출력
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender + ", age=" + age
				+ ", email=" + email + ", regdate=" + regdate + "]";
	}

	
}// class
