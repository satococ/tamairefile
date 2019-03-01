package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import info.ThreadListProfile;

public class listQuery{
	public static void main(String[] args){
			List<ThreadListProfile> al = getQueryList("恋愛");
		
		for(int i = 0; i < al.size();i++){
			ThreadListProfile prof = al.get(i);
			System.out.println(prof.getThreadid()+"\t"+prof.getName()+"\t"+prof.getUpdate()+"\t"+prof.getDescription()+"\t"+prof.getCount());
		
		}
	
	}
	public static List<ThreadListProfile> getQueryList(String theme){
		
		List<ThreadListProfile> userList = new ArrayList<ThreadListProfile>();
	
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			System.out.println("接続完了");
			
			//select文
			String sql="select thread_id,thread_name,thread_last_updated,thread_description,thread_count FROM THREAD_TABLE WHERE thread_theme = '"+theme+"' order by thread_id desc";

			//Statementインターフェイスを実装するクラスをインスタンス化する
			Statement st=cn.createStatement();

			//select文を実行し
			//ResultSetインターフェイスを実装したクラスの
			//インスタンスが返る
			ResultSet rs=st.executeQuery(sql);

			//カーソルを一行だけスクロールし、データをフェッチする
			while(rs.next()){
				ThreadListProfile prof = new ThreadListProfile();
				
				String threadid = rs.getString(1);		//1列目のデータを取得
				String name = rs.getString(2);			//2列目のデータを取得
				String update = rs.getString(3);		//3列目のデータを取得
				String description = rs.getString(4);	//4列目のデータを取得
				String count = rs.getString(5);			//5列目のデータを取得
				prof.setThreadid(threadid);
				prof.setName(name);
				prof.setUpdate(update);
				prof.setDescription(description);
				prof.setCount(count);
				
				
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
