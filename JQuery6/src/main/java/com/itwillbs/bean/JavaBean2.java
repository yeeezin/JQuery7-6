package com.itwillbs.bean;

/**
 *   아이디,비밀번호,생년월일 정보를 저장하는 객체(자바빈)
 *   
 */
public class JavaBean2 {
	
	private String id;
	private String pw;
	private String birth;
	
	public JavaBean2() {	}
	
	//alt shift s + r
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

	// alt shift s + s
	
	@Override
	public String toString() {
		return "JavaBean2 [id=" + id + ", pw=" + pw + ", birth=" + birth + "]";
	}
	
	
}
