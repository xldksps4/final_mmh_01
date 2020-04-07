package com.idea.mmh.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.model.dto.NoteDto;



@Repository
public class NoteDaoImpl implements NoteDao {

	@Autowired
	private SqlSessionTemplate sqlSession; // SqlSessionTemplate : SqlSessionFactory.OpenSession ... close등을 알아서 처리해줍니다. 
	
	private static final Logger logger = LoggerFactory.getLogger(NoteDaoImpl.class);
	
	@Override
	public List<NoteDto> selectList() {
		List<NoteDto> list = new ArrayList<NoteDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList");
		} catch (Exception e) {
			logger.info("에러 발생 : NoteDaoImpl.selectlist");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public NoteDto selectOne(NoteDto dto) {
		NoteDto rs = null;
		
		try {
			rs = sqlSession.selectOne(NAMESPACE+"selectOne",dto);
		} catch (Exception e) {
			logger.info("에러 발생 : NoteDaoImpl.selectOne");
			e.printStackTrace();
		}
		
		return rs;
	}

	@Override
	public int insert(NoteDto dto) {
		int res = 0;
		int nno = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"insert",dto); 	//0or1
			nno = dto.getNno();		//nno번호
		} catch (Exception e) {
			logger.info("서머노트 저장중 에러 발생");
			e.printStackTrace();
		}
		
		return nno;
	}

	@Override
	public int update(NoteDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"update",dto);
		} catch (Exception e) {
			logger.info("에러 발생 : NoteDaoImpl.update");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int delete(int nno) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"delete",nno);
		} catch (Exception e) {
			logger.info("에러 발생 : NoteDaoImpl.delete");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public String test() {
		// TODO Auto-generated method stub
		return null;
	}

}
