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
		
		
		//String threadid = req.getParameter("threadid");
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
			//�f�[�^�x�[�X�ɏ�������
		InsertTest.insertUser_Table(0,username, title, text);
	
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<Profile> pLIst = QueryTest.getQueryList(0);
		
		
	//�p�����[�^��JSP�ɓ��e����
		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	
	}


}