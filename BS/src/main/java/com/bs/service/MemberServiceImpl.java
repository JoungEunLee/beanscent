package com.bs.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.bs.dao.MemberDAO;
import com.bs.vo.LoginInfo;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;

	@Override
	public boolean loginChk(LoginInfo info, HttpSession session) {
		// TODO Auto-generated method stub
		boolean result = dao.loginChk(info);
		if (result) {
			LoginInfo info2 = viewMember(info);
			session.setAttribute("account", info2.getAccount());
		}
		return result;
	}

	@Override
	public LoginInfo viewMember(LoginInfo info) {
		// TODO Auto-generated method stub
		return dao.viewMember(info);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}

}
