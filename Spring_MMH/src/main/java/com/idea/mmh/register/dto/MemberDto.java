package com.idea.mmh.register.dto;

public class MemberDto {

	private int m_no;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_address;
	private String m_address2;
	private String m_join;
	private String m_grade;
	private String m_payment;
	
	
	public MemberDto() {
	}

	

	public MemberDto(int m_no, String m_id, String m_pw, String m_name, String m_email, String m_address,
			String m_address2, String m_join, String m_grade, String m_payment) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_address = m_address;
		this.m_address2 = m_address2;
		this.m_join = m_join;
		this.m_grade = m_grade;
		this.m_payment = m_payment;
	}



	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_address2() {
		return m_address2;
	}

	public void setM_address2(String m_address2) {
		this.m_address2 = m_address2;
	}

	public String getM_join() {
		return m_join;
	}

	public void setM_join(String m_join) {
		this.m_join = m_join;
	}

	public String getM_grade() {
		return m_grade;
	}

	public void setM_grade(String m_grade) {
		this.m_grade = m_grade;
	}
	
	public String getM_payment() {
		return m_payment;
	}

	public void setM_payment(String m_payment) {
		this.m_payment = m_payment;
	}



	@Override
	public String toString() {
		return "MemberDto [m_no=" + m_no + ", m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_email="
				+ m_email + ", m_address=" + m_address + ", m_address2=" + m_address2 + ", m_join=" + m_join
				+ ", m_grade=" + m_grade + ", m_payment=" + m_payment + "]";
	}

}
