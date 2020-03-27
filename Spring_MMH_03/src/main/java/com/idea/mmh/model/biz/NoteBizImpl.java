package com.idea.mmh.model.biz;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.idea.mmh.model.dao.NoteDao;
import com.idea.mmh.model.dto.NoteDto;

@Service
@Transactional
public class NoteBizImpl implements NoteBiz{

	private Logger logger = LoggerFactory.getLogger(NoteBizImpl.class);
	
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
//서머노트 인서트
	@Override
	public int insert(NoteDto dto) {
		logger.info("bizimpl입니다.");
		return dao.insert(dto);
	}

	@Override
	public int update(NoteDto dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(int opno) {
		// TODO Auto-generated method stub
		return dao.delete(opno);
	}

	@Override
	public String test() {
		// TODO Auto-generated method stub
		return null;
	}

}
