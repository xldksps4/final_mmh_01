package com.idea.mmh.register.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idea.mmh.register.dao.MemberDao;
import com.idea.mmh.register.dto.MemberDto;

@Service
public class MemberBizImpl implements MemberBiz {

	@Autowired
	private MemberDao dao;

	@Override
	public List<MemberDto> selectList() {
		return dao.selectList();
	}

	@Override
	public MemberDto selectOne(int m_no) {
		return dao.selectOne(m_no);
	}

	@Override
	public int insert(MemberDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(MemberDto dto) {
		return 0;
	}

	@Override
	public int delete(int myno) {
		return 0;
	}
	/*아이디 중복*/
	@Override
	public MemberDto idCheck(String m_id) {
		return dao.idCheck(m_id);
	}
//아래는 형님코드들
	@Override
	public MemberDto login(MemberDto dto) {
		return dao.login(dto);
	}

	@Override
	public MemberDto selectMember(String id) {
		return dao.selectMember(id);
	
	}

	@Override
	public int updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		return dao.updateMember(dto);
	}
	
	@Override
	public int updatePay(String m_id) {
		return dao.updatePay(m_id);
	}
}
