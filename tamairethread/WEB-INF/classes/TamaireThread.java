import java.io.PrintWriter;
import java.util.List;
import info.Profile;
import database.InsertTest;
import database.QueryTest;
import ex.nocontentException;

public class TamaireThread extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		//�p�����[�^���󂯎��
		//�����R�[�h�Œ�
		req.setCharacterEncoding("Windows-31J");
		
		String name = req.getParameter("name");
		String pass = req.getParameter("pass");
			//�f�[�^�x�[�X�ɏ�������
		InsertTest.insertUser_Table(name,pass);
	
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<Profile> pLIst = getList();
		
		
	//�p�����[�^��JSP�ɓ��e����

		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	
	}


}