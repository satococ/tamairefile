package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


import java.sql.ResultSet;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

public class CreateThread{
	
	public static void main(String[] args){
		String mainid = DoCreateThread(args[0],args[1],args[2],args[3],args[4],args[4]);
	}
	
	
	public static String DoCreateThread(String threadname,String theme,String description, String username,String title,String text){
		int count = 0; //処理した行数を入れるための変数
		String threadid = null;
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
			
			//threadのno
			String sqlthread1="SELECT MAX(thread_id)+1 FROM thread_table";
			Statement stt1=cn.createStatement();
			ResultSet rst1=stt1.executeQuery(sqlthread1);
			
			while(rst1.next()){
				threadid =rst1.getString(1);
			}
			stt1.close();
			
			String sqlthread ="insert into THREAD_TABLE values('"+threadid+"','"+threadname+"','"+today+"','"+theme+"','"+description+"','0')";
			
			Statement sttt=cn.createStatement();


			count=sttt.executeUpdate(sqlthread);
			
			//トランザクションをコミットする
			cn.commit();
			
			//ステートメントをクローズする
			sttt.close();
			
			//RDBMSから切断する
			
			
			
			
			//no用
			String sql1="SELECT MAX(res_no)+1 from res_table";
			Statement st1=cn.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			String no = null;
			while(rs1.next()){
				no =rs1.getString(1);
			}
			st1.close();
			
			//SQL文を変数に格納する
			//String sql="insert into user_table(username,password) values('"+userName+"','"+passWord+"')";
			
			String sql ="insert into res_table values('"+no+"','1','"+threadid+"','"+username+"','"+today+"','"+title+"','"+text+"','0')";
			
			//Statementインターフェイスを実装するクラスの
			//インスタンスを取得する
			Statement st=cn.createStatement();


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
		return threadid;
	}
}

