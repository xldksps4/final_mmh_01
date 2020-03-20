package com.idea.mmh.model.dto;

public class MindDto {

	// 고유프로젝트넘버
	private int opno;

	// 마인드맵파일이름
	private String miname;

	// 마인드맵파일경로
	private String miaddr;

	// 마인드맵너비
	private Float miwidth;

	// 마인드맵높이
	private Float miheight;

	// 마인드맵위치(위쪽)
	private Float mitop;

	// 마인드맵위치(왼쪽)
	private Float mileft;

	// 마인드맵위치('Z')
	private Float miz;

	public MindDto() {
		super();
	}

	public MindDto(int opno, String miname, String miaddr, Float miwidth, Float miheight, Float mitop, Float mileft,
			Float miz) {
		super();
		this.opno = opno;
		this.miname = miname;
		this.miaddr = miaddr;
		this.miwidth = miwidth;
		this.miheight = miheight;
		this.mitop = mitop;
		this.mileft = mileft;
		this.miz = miz;
	}

	public int getOpno() {
		return opno;
	}

	public void setOpno(int opno) {
		this.opno = opno;
	}

	public String getMiname() {
		return miname;
	}

	public void setMiname(String miname) {
		this.miname = miname;
	}

	public String getMiaddr() {
		return miaddr;
	}

	public void setMiaddr(String miaddr) {
		this.miaddr = miaddr;
	}

	public Float getMiwidth() {
		return miwidth;
	}

	public void setMiwidth(Float miwidth) {
		this.miwidth = miwidth;
	}

	public Float getMiheight() {
		return miheight;
	}

	public void setMiheight(Float miheight) {
		this.miheight = miheight;
	}

	public Float getMitop() {
		return mitop;
	}

	public void setMitop(Float mitop) {
		this.mitop = mitop;
	}

	public Float getMileft() {
		return mileft;
	}

	public void setMileft(Float mileft) {
		this.mileft = mileft;
	}

	public Float getMiz() {
		return miz;
	}

	public void setMiz(Float miz) {
		this.miz = miz;
	}

	// 마인드맵 모델 복사
	public void CopyData(MindDto param) {
		this.opno = param.getOpno();
		this.miname = param.getMiname();
		this.miaddr = param.getMiaddr();
		this.miwidth = param.getMiwidth();
		this.miheight = param.getMiheight();
		this.mitop = param.getMitop();
		this.mileft = param.getMileft();
		this.miz = param.getMiz();
	}

	@Override
	public String toString() {
		return "MindDto [opno=" + opno + ", miname=" + miname + ", miaddr=" + miaddr + ", miwidth=" + miwidth
				+ ", miheight=" + miheight + ", mitop=" + mitop + ", mileft=" + mileft + ", miz=" + miz + "]";
	}

}
