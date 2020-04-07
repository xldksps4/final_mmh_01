package com.idea.mmh.register.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.register.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public List<MemberDto> selectList() {
		List<MemberDto> list = new ArrayList<MemberDto>();

		try {
			list = sqlSession.selectList(NAMESPACE + "selectList");
		} catch (Exception e) {
			System.out.println("[MemeberDaoImpl ERROR] : selectList");
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public MemberDto selectOne(int m_no) {
		MemberDto rs = null;
		
		try {
			rs = sqlSession.selectOne(NAMESPACE+ "selectOne");
		} catch (Exception e) {
			logger.info("[MemeberDaoImpl ERROR] : selectOne");
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int insert(MemberDto dto) {
		int res = 0;
		try {
			System.out.println(dto);
			res = sqlSession.insert(NAMESPACE + "insert", dto);

			System.out.println("[DaoImpl - res ] : " + res);
		} catch (Exception e) {
			System.out.println("[ERROR - DaoImpl] : insert");
			e.printStackTrace();
		}
		return res;
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
		System.out.println("===> Mybatis로 idCheck");
		MemberDto result = sqlSession.selectOne(NAMESPACE+"idCheck",m_id);
		System.out.println(result);
		
		return result;
	}

	
	
	
	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto res = null;
		System.out.println("dao"+dto);
		try {
			res = sqlSession.selectOne(NAMESPACE + "login", dto);
		} catch (Exception e) {
			System.out.println("[error] : login");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public MemberDto selectMember(String id) {
		MemberDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectmember", id);
		} catch (Exception e) {
			System.out.println("[error] : selectmember");
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public int updateMember(MemberDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE + "updatemember", dto);
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		
		return res;
	}
	@Override
	public int updatePay(String m_id) {
		return sqlSession.update(NAMESPACE+"updatePay", m_id);
	}
}
