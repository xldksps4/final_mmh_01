package com.idea.mmh.model.dao;

import java.util.List;

import com.idea.mmh.model.dto.MindDto;

public interface MindDao {

	String NAMESPACE = "mind.";
	
	public List<MindDto> selectList();
	public MindDto selectOne(int opno);
	public int insert(MindDto dto);
	public int update(MindDto dto);
	public int delete(int opno);
	
	public String test();
}
