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
	
	public static List<resProfile> getQueryList(){
		
		List<resProfile> userList = new ArrayList<resProfile>();
	
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracle�ɐڑ�����
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tuser","pass");
			System.out.println("�ڑ�����");
			
			//select��
			String sql="select username, res_user_name,
			res_date, res_titile,res_text,res_likes
			from res_table";

			//Statement�C���^�[�t�F�C�X����������N���X���C���X�^���X������
			Statement st=cn.createStatement();

			//select�������s��
			//ResultSet�C���^�[�t�F�C�X�����������N���X��
			//�C���X�^���X���Ԃ�
			ResultSet rs=st.executeQuery(sql);

			//�J�[�\������s�����X�N���[�����A�f�[�^���t�F�b�`����
			while(rs.next()){
				resProfile prof = new resProfile();
				
				String threadname = rs.getString(1);	//1��ڂ̃f�[�^���擾
				String name = rs.getString(2);	//1��ڂ̃f�[�^���擾
				String date = rs.getString(3);	//2��ڂ̃f�[�^���擾
				String title = rs.getString(4);	//1��ڂ̃f�[�^���擾
				String text = rs.getString(5);	//2��ڂ̃f�[�^���擾
				String likes = rs.getString(6);	//1��ڂ̃f�[�^���擾
				String pass = rs.getString(7);	//2��ڂ̃f�[�^���擾
				prof.setName(name);
				prof.setPass(pass);
				
				userList.add(prof);
				
				//System.out.println("username"+"\t"+"password"); //�m�F�\��
				//System.out.println(name+"\t"+pass);				//�m�F���̂Q
			}

			
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
		return userList;
		
	}
}











