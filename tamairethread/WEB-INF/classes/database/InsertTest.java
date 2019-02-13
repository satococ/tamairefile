package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


import java.sql.ResultSet;

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
					"jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			
			//自動コミットをOFFにする
			cn.setAutoCommit(false);
			
			System.out.println("接続完了");
			
			//時間取得
			String today=null;
			Calendar cal=Calendar.getInstance();
			Date date=cal.getTime();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			today=formatter.format(date);
			
			//no用
			String sql1="SELECT MAX(res_no)+1 from res_table";
			Statement st1=cn.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			
			while(rs1.next()){
				String no =rs1.getString(1);
			}
			st1.close();
			
			String sql2="SELECT MAX(res_identityno)+1 from res_table where res_thread_id ="+resid+"";
			Statement st2=cn.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			
			while(rs2.next()){
				String idno =rs2.getString(1);
			}
			st2.close();
			//SQL文を変数に格納する
			//String sql="insert into user_table(username,password) values('"+userName+"','"+passWord+"')";
			
			String sql ="insert into res_table(res_no,res_identityno,res_thread_id,res_user_name,res_date,res_titile,res_text,res_likes) values("+no+","+idno+"','"+userName+"','"+today+"','"+title+"','"+text+"',0)";

			
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

