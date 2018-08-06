package com.bs.service;

import javax.servlet.http.HttpSession;
import com.bs.vo.LoginInfo;

public interface MemberService {
    public boolean loginChk(LoginInfo info,HttpSession session);
    public LoginInfo viewMember(LoginInfo info);
    public void logout(HttpSession session);
    
}