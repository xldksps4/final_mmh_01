package com.idea.mmh.model.biz;

import java.util.List;

import com.idea.mmh.model.dto.NoteDto;

public interface NoteBiz {

	public List<NoteDto> selectList();
	public NoteDto selectOne(int opno);
	public int insert(NoteDto dto);
	public int update(NoteDto dto);
	public int delete(int opno);
	
	public String test();
}
