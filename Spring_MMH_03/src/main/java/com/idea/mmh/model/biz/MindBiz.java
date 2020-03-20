package com.idea.mmh.model.biz;

import java.util.List;

import com.idea.mmh.model.dto.MindDto;

public interface MindBiz {

	public List<MindDto> selectList();
	public MindDto selectOne(int opno);
	public int insert(MindDto dto);
	public int update(MindDto dto);
	public int delect(int opno);
	
	public String test();
}
