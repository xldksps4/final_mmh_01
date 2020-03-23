package com.idea.mmh.model.dao;

import java.util.List;

import com.idea.mmh.model.dto.NoteDto;

public interface NoteDao {

String NAMESPACE = "note.";
	
	public List<NoteDto> selectList();
	public NoteDto selectOne(int opno);
	public int insert(NoteDto dto);
	public int update(NoteDto dto);
	public int delete(int opno);
	
	public String test();
}
