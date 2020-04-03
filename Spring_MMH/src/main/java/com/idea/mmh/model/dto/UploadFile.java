package com.idea.mmh.model.dto;

import org.springframework.web.multipart.MultipartFile;
//미사용
public class UploadFile {

	private String name;
	private String desc;
	private MultipartFile mpfile;
	
	public UploadFile() {
	}
	public UploadFile(String name, String desc, MultipartFile mpfile) {
		this.name = name;
		this.desc = desc;
		this.mpfile = mpfile;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public MultipartFile getMpfile() {
		return mpfile;
	}
	public void setMpfile(MultipartFile mpfile) {
		this.mpfile = mpfile;
	}
	
	
	
}
