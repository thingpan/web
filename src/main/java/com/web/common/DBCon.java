package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
			private static final String URL ="jdbc:mariadb://localhost:3306/kd";
			private static final String DRIVER_NAME ="org.mariadb.jdbc.Driver";
			private static final String USER="root";
			private static final String PASSWORD="kd1824java";
			static {
				
			}
		 static {
			 try {
				Class.forName(DRIVER_NAME);
				System.out.println("나 나오면 잘 되는겨");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 try {
				Connection con =DriverManager.getConnection(URL,USER,PASSWORD);
				System.out.println("  나 나오묜 커넥션 잘 나오는 겨");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 public static Connection getCon() {
			 Connection con=null;
			 try {
				 con =DriverManager.getConnection(URL,USER,PASSWORD);
			 } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			 }
			return con;
			 
		 }
		 public static void main(String[] args) {
		
		}
}
