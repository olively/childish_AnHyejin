package com.bamboo.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://13.124.195.10:53884";
	private static final String USER = "root";
	private static final String PW = "1234";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PW);
			log.info(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
