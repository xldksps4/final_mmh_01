package com.idea.mmh.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idea.mmh.model.dao.NoteDao;
import com.idea.mmh.model.dto.NoteDto;

@Service
public class NoteBizImpl implements NoteBiz{

	@Autowired
	private NoteDao dao;
	
	@Override
	public List<NoteDto> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public NoteDto selectOne(int opno) {
		// TODO Auto-generated method stub
		return dao.selectOne(opno);
	}

	@Override
	public int insert(NoteDto dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(NoteDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delect(int opno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String test() {
		// TODO Auto-generated method stub
		return null;
	}

}
