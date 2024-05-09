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

public class LoginService {
	private static LoginService instance = null;
	
	private MemberDAO dao = null;
	
	public LoginService() {}
	
	public LoginService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LoginService getInstance() {
		if ( instance == null) {
			instance = new LoginService();
		}
		return instance;
	}
	
	
	public MemberDTO idcheck(String id, String passwd) {
		Connection conn = null;
		MemberDTO dto = null;
		try {
			conn = ConnectionProvider.getConnection();
			
			MemberDAO dao = new MemberDAOImpl(conn);
			dto = dao.login(id, passwd);
			int rowCount = 0;
			
			if ( dto != null ) {
				rowCount = dao.updateLoginYN(id);
				if ( rowCount == 1) {
					System.out.println("로그인성공");
				}		
			} else {
				System.out.println("로그인실패");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			JdbcUtil.close(conn);
		}
		
		return dto;
	}
	
	public String idCheck(String id) {

		try (Connection conn = ConnectionProvider.getConnection()) {
			String idCheckJson = dao.idCheck(conn, id); 
			System.out.println("> LoginService.idCheck : idCheckJson = " + idCheckJson);
			return idCheckJson;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} 

	}
	
	
	
}
