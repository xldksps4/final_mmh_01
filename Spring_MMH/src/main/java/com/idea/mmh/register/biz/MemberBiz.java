package com.idea.mmh.register.biz;

import java.util.List;

import com.idea.mmh.register.dto.MemberDto;

public interface MemberBiz {
	public List<MemberDto> selectList();

	public MemberDto selectOne(int m_no);

	public int insert(MemberDto dto);

	public int update(MemberDto dto);

	public int delete(int myno);
	
	/*아이디 중복*/
	public MemberDto idCheck(String m_id);
//아래는 형님	
	public MemberDto login(MemberDto dto);
	
	public MemberDto selectMember(String id);
	
	public int updateMember(MemberDto dto);
	
}
