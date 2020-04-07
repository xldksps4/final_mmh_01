package com.idea.mmh.register.dao;

import java.util.List;

import com.idea.mmh.register.dto.MemberDto;

public interface MemberDao {
	String NAMESPACE = "sample.";
//형님은 mmh_member. 였음
	public List<MemberDto> selectList();

	public MemberDto selectOne(int m_no);

	public int insert(MemberDto dto);

	public int update(MemberDto dto);

	public int delete(int myno);
	/*아이디 중복*/
	public MemberDto idCheck(String m_id);
	
	public MemberDto login(MemberDto dto);
	
	public MemberDto selectMember(String id);
	
	public int updateMember(MemberDto dto);
	
	public int updatePay(String m_id);
}
