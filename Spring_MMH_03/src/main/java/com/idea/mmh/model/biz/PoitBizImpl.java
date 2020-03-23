package com.idea.mmh.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idea.mmh.model.dao.PoitDao;
import com.idea.mmh.model.dto.PoitDto;

@Service
public class PoitBizImpl implements PoitBiz {
	
	@Autowired
	private PoitDao dao;
	
	@Override
	public List<PoitDto> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public PoitDto selectOne(int opno) {
		// TODO Auto-generated method stub
		return dao.selectOne(opno);
	}

	@Override
	public int insert(PoitDto dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(PoitDto dto) {
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
