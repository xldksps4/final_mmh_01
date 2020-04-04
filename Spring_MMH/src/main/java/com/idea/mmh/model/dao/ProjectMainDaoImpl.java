package com.idea.mmh.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectMainDaoImpl implements ProjectMainDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int project() {
		return sqlSession.selectOne("project_main.selectList");
	}

}
