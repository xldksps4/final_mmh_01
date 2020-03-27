package com.idea.mmh.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.model.dto.PoitDto;

@Repository
public class PoitDaoImpl implements PoitDao {

	@Autowired
	private SqlSessionTemplate sqlSession; // SqlSessionTemplate : SqlSessionFactory.OpenSession ... close ���� �˾Ƽ� ���ݴϴ�.
	
	private static final Logger logger = LoggerFactory.getLogger(PoitDaoImpl.class);
	
	@Override
	public List<PoitDto> selectList() {
		List<PoitDto> list = new ArrayList<PoitDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList");
		} catch (Exception e) {
			logger.info("에러 발생 : PoitDaoImpl.selectlist");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public PoitDto selectOne(int opno) {
		PoitDto rs = null;
		
		rs = sqlSession.selectOne(NAMESPACE+"selectOne",opno);
		
		return rs;
	}

	@Override
	public int insert(PoitDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insert",dto);
		} catch (Exception e) {
			logger.info("asdfsadfasdfasdf 포스트잇 인서트 다오다오");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(PoitDto dto) {
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
