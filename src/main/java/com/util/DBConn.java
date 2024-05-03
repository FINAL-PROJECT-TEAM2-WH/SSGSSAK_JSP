package com.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


// 싱글톤 패턴 ( Singleton ) 
public class DBConn {
	
	private static Connection conn = null;
	
	//new 연산자로 객체 생성 막아 놓음
	private DBConn() {
		
	}
	
	public static Connection getConnection() {
		
		if (conn == null) {
			String className = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe" ;// 연결 정보를 설정해줘야됨 
			String user = "scott"; 
			String password = "tiger"; 
			
			try {
				// 1. 드라이버 로딩 
				Class.forName(className);
				// 2. conn 확인 
				conn = DriverManager.getConnection(url,user,password);
				
				
			} catch (ClassNotFoundException e ) {
				e.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		} // 
		return conn;
	}
	
	
	// 오버로딩 
	public static Connection getConnection(String url, String user, String password) {
		if (conn == null) {
			String className = "oracle.jdbc.driver.OracleDriver";
			try {
				// 1. 드라이버 로딩 
				Class.forName(className);
				// 2. conn 확인 
				conn = DriverManager.getConnection(url,user,password);

			} catch (ClassNotFoundException e ) {
				e.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			} 
		} // 
		return conn;
	}
	
	
	public static void close() {
		try {
			if (conn != null && !conn.isClosed()) conn.close();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		conn = null;
	}
} // Class
