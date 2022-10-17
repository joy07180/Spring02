package javaTest;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class Ex02_DBConnection {
	
	// 1) static, return 값 있는 경우 Test
	// => Test 메서드를 작성해거 Test
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
			// => allowPublicKeyRetrieval=true : local DB open 하지 않아도 connection 허용
			System.out.println("===> JDBC Connection 성공  ===");
			return DriverManager.getConnection(url,"root","9556koki");
		}catch(Exception e) {
			System.out.println("===> JDBC Connection 실패  ==="+e.toString());
			return null;
		}
	} //getConnection
	//@Test
	public void connecionTest() {
		//System.out.println("** Connection => "+getConnection());
		// => 연결성공 :주소(Not_null) 	,	연결실패:null
		assertNotNull(getConnection());
	}
	
	@Test
	// @) non static, void 로 정의
	// => 그러나 아래 코드로만 Test 하면 항상 그린라인 이고, console 메시지로 확인 가능
	public void getConnectionVoid() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
			// => allowPublicKeyRetrieval=true : local DB open 하지 않아도 connection 허용
			Connection cn = DriverManager.getConnection(url,"root","9556koki");
			System.out.println("===> JDBC Connection 성공 , cn => "+cn);
		}catch(Exception e) {
			System.out.println("===> JDBC Connection 실패  ==="+e.toString());
		}
	} //getConnection

}//class
