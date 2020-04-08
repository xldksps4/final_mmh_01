package com.idea.mmh.model.biz;

import java.util.List;

import com.idea.mmh.model.dto.NoteDto;



public interface NoteBiz {

	public List<NoteDto> selectList(int M_no);
	public NoteDto selectOne(NoteDto dto);
	public int insert(NoteDto dto);
	public int update(NoteDto dto);
	public int delete(int nno);
	public List<NoteDto> calList(String m_id);
	public String test();
}
