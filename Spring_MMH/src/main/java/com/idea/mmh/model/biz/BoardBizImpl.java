package com.idea.mmh.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.idea.mmh.model.dao.BoardDao;
import com.idea.mmh.model.dto.BoardDto;



@Service
public class BoardBizImpl implements BoardBiz {

	@Autowired
	private BoardDao dao;

	@Override
	public List<BoardDto> selectList() {
		return dao.selectList();
	}

	@Override
	public BoardDto selectOne(int myno) {
		return dao.selectOne(myno);
	}

	@Override
	public int insert(BoardDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(BoardDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int myno) {
		return dao.delete(myno);
	}

	@Override
	@Transactional
	public String test() {
		dao.insert(new BoardDto(0, "transaction", "test", "!!!", null));
		
		String test = dao.test();
		test.length();
		
		return test;
	}

}










