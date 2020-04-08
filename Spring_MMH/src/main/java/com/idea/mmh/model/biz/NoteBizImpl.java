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
public class NoteBizImpl implements NoteBiz{

	private Logger logger = LoggerFactory.getLogger(NoteBizImpl.class);
	
	@Autowired
	private NoteDao dao;
	
	@Override
	public List<NoteDto> selectList(int M_no) {
		logger.info("노트 리스트 관련 bizimpl입니다.");
		return dao.selectList(M_no);
	}

	@Override
	public NoteDto selectOne(NoteDto dto) {
		// TODO Auto-generated method stub
		return dao.selectOne(dto);
	}
//서머노트 인서트
	@Override
	public int insert(NoteDto dto) {
		logger.info("bizimpl입니다.");
		//parseInt로 형변환 어떻게 하지
//		Integer.parseInt(dto.getNheight());
		return dao.insert(dto);
	}

	@Override
	public int update(NoteDto dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(int nno) {
		// TODO Auto-generated method stub
		return dao.delete(nno);
	}

	@Override
	public List<NoteDto> calList(String m_id) {
		// TODO Auto-generated method stub
		return dao.calList(m_id);
	}
	
	@Override
	public String test() {
		// TODO Auto-generated method stub
		dao.insert(new NoteDto(450, 0,"transaction","developer","test_test", "sysdate")); //정상적인 코드
		
		String test = dao.test();	//오류나는 코드
		test.length();				//오류가 나야하는 코드
		return null;
	}

}
