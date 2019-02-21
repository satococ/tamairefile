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
		int count = 0; //���������s�������邽�߂̕ϐ�
		String threadid = null;
		try{
			//Driver�C���^�[�t�F�C�X����������N���X�����[�h����
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//Connection�C���^�[�t�F�C�X����������N���X��
			//�C���X�^���X��Ԃ�
			Connection cn=
				DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			
			//�����R�~�b�g��OFF�ɂ���
			cn.setAutoCommit(false);
			
			System.out.println("�ڑ�����");
			
			//���Ԏ擾
			String today=null;
			Calendar cal=Calendar.getInstance();
			Date date=cal.getTime();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			today=formatter.format(date);
			
			//thread��no
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
			
			//�g�����U�N�V�������R�~�b�g����
			cn.commit();
			
			//�X�e�[�g�����g���N���[�Y����
			sttt.close();
			
			//RDBMS����ؒf����
			
			
			
			
			//no�p
			String sql1="SELECT MAX(res_no)+1 from res_table";
			Statement st1=cn.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			String no = null;
			while(rs1.next()){
				no =rs1.getString(1);
			}
			st1.close();
			
			//SQL����ϐ��Ɋi�[����
			//String sql="insert into user_table(username,password) values('"+userName+"','"+passWord+"')";
			
			String sql ="insert into res_table values('"+no+"','1','"+threadid+"','"+username+"','"+today+"','"+title+"','"+text+"','0')";
			
			//Statement�C���^�[�t�F�C�X����������N���X��
			//�C���X�^���X���擾����
			Statement st=cn.createStatement();


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
		return threadid;
	}
}

