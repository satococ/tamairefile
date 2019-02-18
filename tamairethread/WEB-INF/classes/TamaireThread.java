import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import info.resProfile;
import database.InsertTest;
import database.QueryTest;

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
		InsertTest.insertUser_Table("0",username, title, text);
	
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<resProfile> pLIst = QueryTest.getQueryList("0");
		
		
	//�p�����[�^��JSP�ɓ��e����
		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		res.setContentType("text/html; charset=UTF-8");
		//�p�����[�^���󂯎��
		//�����R�[�h�Œ�
		req.setCharacterEncoding("Windows-31J");
		
		String rno = req.getParameter("rno");
		
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<resProfile> pLIst = QueryTest.getQueryList(rno);
		
		
	//�p�����[�^��JSP�ɓ��e����
		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	}
}