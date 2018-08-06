package com.bs.dao;

import javax.servlet.http.HttpSession;

import com.bs.vo.LoginInfo;
 
public interface MemberDAO {
    
	public boolean loginChk(LoginInfo info);
    public LoginInfo viewMember(LoginInfo info);
    public void logout(HttpSession session);
    
}
