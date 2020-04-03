package com.idea.mmh.model.dto;

// MMH_NOTE
public class NoteDto {
//--INSERT INTO MMH_NOTE VALUES(고유프로젝트번호, 회의록번호, 제목, 작성자(ID), 내용);

	private int opno;

	private int nno;

	private String ntitle;

	private String nwriter;

	private String ncontent;
	
	private String ntoday;
	
	public NoteDto() {
		super();
	}

	public NoteDto(int opno, int nno, String ntitle, String nwriter, String ncontent, String ntoday) {
		super();
		this.opno = opno;
		this.nno = nno;
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.ncontent = ncontent;
		this.ntoday = ntoday;
	}



	public int getOpno() {
		return opno;
	}

	public void setOpno(int opno) {
		this.opno = opno;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	
	public String getNtoday() {
		return ntoday;
	}

	public void setNtoday(String ntoday) {
		this.ntoday = ntoday;
	}

	@Override
	public String toString() {
		return "NoteDto [opno=" + opno + ", nno=" + nno + ", ntitle=" + ntitle + ", nwriter=" + nwriter + ", ncontent="
				+ ncontent + ", ntoday=" + ntoday + "]";
	}

	
	
	
	

}
