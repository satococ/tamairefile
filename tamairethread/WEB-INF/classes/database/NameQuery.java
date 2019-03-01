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

			//Oracle�ɐڑ�����
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			System.out.println("�ڑ�����");
			
			//select��
			String sql="select thread_name FROM THREAD_TABLE WHERE thread_id = '"+id+"'";

			//Statement�C���^�[�t�F�C�X����������N���X���C���X�^���X������
			Statement st=cn.createStatement();

			//select�������s��
			//ResultSet�C���^�[�t�F�C�X�����������N���X��
			//�C���X�^���X���Ԃ�
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				threadname = rs.getString(1);
			}
			//�J�[�\������s�����X�N���[�����A�f�[�^���t�F�b�`����
			

			
			//Oracle����ؒf����
			cn.close();

			System.out.println("�ؒf����");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("�N���X���Ȃ��݂����B");
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("SQL�֘A�̗�O�݂����B");
		}catch(Exception e){
			e.printStackTrace();
		}
		return threadname;
		
	}
	


}
