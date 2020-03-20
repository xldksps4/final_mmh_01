package com.idea.mmh.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.model.dto.MindDto;

@Repository
public class MindDaoImpl implements MindDao{

	@Autowired
	private SqlSessionTemplate sqlSession; // SqlSessionTemplate : SqlSessionFactory.OpenSession ... close 등을 알아서 해줍니다.
	
	@Override
	public List<MindDto> selecList() {
		List<MindDto> list = new ArrayList<MindDto>();
		
		list = sqlSession.selectList(NAMESPACE+"selectList");
		return list;
	}

	@Override
	public MindDto selectOne(int opno) {
		MindDto rs = null;
		
		rs = sqlSession.selectOne(NAMESPACE+"selectOne",opno);
		
		return rs;
	}

	@Override
	public int insert(MindDto dto) {
		int res = 0;
		
		res = sqlSession.insert(NAMESPACE+"insert",dto);
		
		return res;
	}

	@Override
	public int update(MindDto dto) {
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
