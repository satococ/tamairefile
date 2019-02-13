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
		int count = 0; //���������s�������邽�߂̕ϐ�
		try{
			//Driver�C���^�[�t�F�C�X����������N���X�����[�h����
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//Connection�C���^�[�t�F�C�X����������N���X��
			//�C���X�^���X��Ԃ�
			Connection cn=
				DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl","tuser","pass");
			
			//�����R�~�b�g��OFF�ɂ���
			cn.setAutoCommit(false);
			
			System.out.println("�ڑ�����");
			
			String today=null;
			Calendar cal=Calendar.getInstance();
			Date date=cal.getTime();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			today=formatter.format(date);

			
			//SQL����ϐ��Ɋi�[����
			//String sql="insert into user_table(username,password) values('"+userName+"','"+passWord+"')";
			
			String sql ="insert into res_table(res_no,res_identityno,res_thread_id,res_user_name,res_date,res_titile,res_text,res_likes) values(SELECT MAX(res_no)+1 from res_table,SELECT MAX(res_identityno)+1 from res_table where res_thread_id ="+resid+",'"+userName+"','"+today+"','"+title+"','"+text+"',0)";

			
			//Statement�C���^�[�t�F�C�X����������N���X��
			//�C���X�^���X���擾����
			Statement st=cn.createStatement();
			
			//SQL�����s���g�����U�N�V�������J�n�����B�����������Ԃ����
			count=st.executeUpdate(sql);
			
			System.out.println(count+"����������");
			
			//�g�����U�N�V�������R�~�b�g����
			cn.commit();
			
			//�X�e�[�g�����g���N���[�Y����
			st.close();
			
			//RDBMS����ؒf����
			cn.close();
			
			System.out.println("�ؒf����");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return count;
	}
}

