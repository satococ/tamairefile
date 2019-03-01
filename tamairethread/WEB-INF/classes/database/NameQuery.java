package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import info.ThreadListProfile;

public class NameQuery{
	public static void main(String[] args){
		
				String NameTitle = getQueryName("10");
			System.out.println(NameTitle);
	
	}
	public static String getQueryName(String id){
	
		String threadname="";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			System.out.println("接続完了");
			
			//select文
			String sql="select thread_name FROM THREAD_TABLE WHERE thread_id = '"+id+"'";

			//Statementインターフェイスを実装するクラスをインスタンス化する
			Statement st=cn.createStatement();

			//select文を実行し
			//ResultSetインターフェイスを実装したクラスの
			//インスタンスが返る
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				threadname = rs.getString(1);
			}
			//カーソルを一行だけスクロールし、データをフェッチする
			

			
			//Oracleから切断する
			cn.close();

			System.out.println("切断完了");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("クラスがないみたい。");
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("SQL関連の例外みたい。");
		}catch(Exception e){
			e.printStackTrace();
		}
		return threadname;
		
	}
	


}
