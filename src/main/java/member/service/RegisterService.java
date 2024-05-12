package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class RegisterService {
	private static RegisterService instance = null;
	Connection conn = null;
	
	private MemberDAO dao = null;
	
	public RegisterService() {}
	
	public RegisterService(MemberDAO dao) {
		this.dao = dao;
	}

	public static RegisterService getInstance() {
		if ( instance == null) {
			instance = new RegisterService();
		}
		return instance;
	}
	
	
	public int register(MemberDTO dto) {
		int rowCount = 0;
		try {	
			
			if ( dto != null ) {
				rowCount = dao.registerMbr(dto);
				if ( rowCount == 1) {
					System.out.println("회원가입성공");
				}		
			} else {
				System.out.println("회원가입실패");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
	
	
	
	
}
