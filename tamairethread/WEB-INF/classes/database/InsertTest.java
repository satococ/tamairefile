package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

public class InsertTest{
	
	public static void main(String[] args){
		InsertTest.insertUser_Table(args[0],args[1],args[2],args[3]);
	}
	
	
	public static int insertUser_Table(String resid,String userName,String title, String text){
		int count = 0; //処理した行数を入れるための変数
		try{
			//Driverインターフェイスを実装するクラスをロードする
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//Connectionインターフェイスを実装するクラスの
			//インスタンスを返す
			Connection cn=
				DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl","tuser","pass");
			
			//自動コミットをOFFにする
			cn.setAutoCommit(false);
			
			System.out.println("接続完了");
			
			String today=null;
			Calendar cal=Calendar.getInstance();
			Date date=cal.getTime();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			today=formatter.format(date);

			
			//SQL文を変数に格納する
			//String sql="insert into user_table(username,password) values('"+userName+"','"+passWord+"')";
			
			String sql ="insert into res_table(res_no,res_identityno,res_thread_id,res_user_name,res_date,res_titile,res_text,res_likes) values(SELECT MAX(res_no)+1 from res_table,SELECT MAX(res_identityno)+1 from res_table where res_thread_id ="+resid+",'"+userName+"','"+today+"','"+title+"','"+text+"',0)";

			
			//Statementインターフェイスを実装するクラスの
			//インスタンスを取得する
			Statement st=cn.createStatement();
			
			//SQLを実行しトランザクションが開始される。処理件数が返される
			count=st.executeUpdate(sql);
			
			System.out.println(count+"件処理完了");
			
			//トランザクションをコミットする
			cn.commit();
			
			//ステートメントをクローズする
			st.close();
			
			//RDBMSから切断する
			cn.close();
			
			System.out.println("切断完了");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return count;
	}
}

