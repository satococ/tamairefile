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
			List<ThreadListProfile> al = getQueryList("����");
		
		for(int i = 0; i < al.size();i++){
			ThreadListProfile prof = al.get(i);
			System.out.println(prof.getThreadid()+"\t"+prof.getName()+"\t"+prof.getUpdate()+"\t"+prof.getDescription()+"\t"+prof.getCount());
		
		}
	
	}
	public static List<ThreadListProfile> getQueryList(String theme){
		
		List<ThreadListProfile> userList = new ArrayList<ThreadListProfile>();
	
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracle�ɐڑ�����
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","tamaireuser","pass");
			System.out.println("�ڑ�����");
			
			//select��
			String sql="select thread_id,thread_name,thread_last_updated,thread_description,thread_count FROM THREAD_TABLE WHERE thread_theme = '"+theme+"' order by thread_id desc";

			//Statement�C���^�[�t�F�C�X����������N���X���C���X�^���X������
			Statement st=cn.createStatement();

			//select�������s��
			//ResultSet�C���^�[�t�F�C�X�����������N���X��
			//�C���X�^���X���Ԃ�
			ResultSet rs=st.executeQuery(sql);

			//�J�[�\������s�����X�N���[�����A�f�[�^���t�F�b�`����
			while(rs.next()){
				ThreadListProfile prof = new ThreadListProfile();
				
				String threadid = rs.getString(1);		//1��ڂ̃f�[�^���擾
				String name = rs.getString(2);			//2��ڂ̃f�[�^���擾
				String update = rs.getString(3);		//3��ڂ̃f�[�^���擾
				String description = rs.getString(4);	//4��ڂ̃f�[�^���擾
				String count = rs.getString(5);			//5��ڂ̃f�[�^���擾
				prof.setThreadid(threadid);
				prof.setName(name);
				prof.setUpdate(update);
				prof.setDescription(description);
				prof.setCount(count);
				
				
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
