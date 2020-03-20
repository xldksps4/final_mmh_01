package com.idea.mmh.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.idea.mmh.model.dao.MindDao;
import com.idea.mmh.model.dto.MindDto;

@Service
public class MindBizImpl implements MindBiz {
	
	@Autowired
	private MindDao dao;

	@Override
	public List<MindDto> selectList() {
		// TODO Auto-generated method stub
		return dao.selecList();
	}

	@Override
	public MindDto selectOne(int opno) {
		// TODO Auto-generated method stub
		return dao.selectOne(opno);
	}

	@Override
	public int insert(MindDto dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(MindDto dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delect(int opno) {
		// TODO Auto-generated method stub
		return dao.delete(opno);
	}

	@Override
	@Transactional
	public String test() {
		dao.insert(new MindDto());
		
		String test = dao.test(); //오류나는 코드
		test.length(); 			  //오류가 나야 하는 코드
		return null;
	}

}
