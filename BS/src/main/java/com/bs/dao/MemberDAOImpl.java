package com.bs.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bs.vo.LoginInfo;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public boolean loginChk(LoginInfo info) {
		// TODO Auto-generated method stub
		String account = sqlSession.selectOne("loginChk", info);
		return (account == null) ? false : true;
	}

	@Override
	public LoginInfo viewMember(LoginInfo info) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("viewMember", info);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub

	}

}
