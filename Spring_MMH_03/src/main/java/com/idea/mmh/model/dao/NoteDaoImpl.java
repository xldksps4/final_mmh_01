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
	private SqlSessionTemplate sqlSession; // SqlSessionTemplate : SqlSessionFactory.OpenSession ... close ���� �˾Ƽ� ���ݴϴ�.
	
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
	public NoteDto selectOne(int opno) {
		NoteDto rs = null;
		
		rs = sqlSession.selectOne(NAMESPACE+"selectOne",opno);
		
		return rs;
	}

	@Override
	public int insert(NoteDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insert",dto);
		} catch (Exception e) {
			logger.info("서머노드 저장중 에러 발생");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(NoteDto dto) {
		int res = 0;
		
		res = sqlSession.update(NAMESPACE+"update",dto);
		
		return res;
	}

	@Override
	public int delete(int opno) {
		int res = 0;
		
		res = sqlSession.delete(NAMESPACE+"delete",opno);
		
		return res;
	}

	@Override
	public String test() {
		// TODO Auto-generated method stub
		return null;
	}

}
