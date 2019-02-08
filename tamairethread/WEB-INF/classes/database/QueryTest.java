package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import info.resProfile;

public class QueryTest{
	
	public static List<resProfile> getQueryList(int id){
		
		List<resProfile> userList = new ArrayList<resProfile>();
	
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tuser","pass");
			System.out.println("接続完了");
			
			//select文
			String sql="select res_identityno, res_user_name,
			res_date, res_titile,res_text,res_likes
			from res_table WHERE res_thread_id = '"+id+"'";

			//Statementインターフェイスを実装するクラスをインスタンス化する
			Statement st=cn.createStatement();

			//select文を実行し
			//ResultSetインターフェイスを実装したクラスの
			//インスタンスが返る
			ResultSet rs=st.executeQuery(sql);

			//カーソルを一行だけスクロールし、データをフェッチする
			while(rs.next()){
				resProfile prof = new resProfile();
				
				String threadno = rs.getString(1);	//1列目のデータを取得
				String name = rs.getString(2);		//2列目のデータを取得
				String date = rs.getString(3);		//3列目のデータを取得
				String title = rs.getString(4);		//4列目のデータを取得
				String text = rs.getString(5);		//5列目のデータを取得
				String likes = rs.getString(6);		//6列目のデータを取得
				prof.setThreadno(threadno);
				prof.setDate(name);
				prof.setThreadno(date);
				prof.setDate(title);
				prof.setThreadno(text);
				prof.setDate(likes);
				
				
				userList.add(prof);
				
				//System.out.println("username"+"\t"+"password"); //確認表示
				//System.out.println(name+"\t"+pass);				//確認その２
			}

			
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
		return userList;
		
	}
}











