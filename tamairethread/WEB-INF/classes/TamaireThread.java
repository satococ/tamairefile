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
import database.NameQuery;
import other.kaigyou;

public class TamaireThread extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		
		//�p�����[�^���󂯎��
		//�����R�[�h�Œ�
		req.setCharacterEncoding("UTF-8");
		
		
		//String threadid = req.getParameter("threadid");
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
		String id = req.getParameter("id");
		
		String theme = req.getParameter("theme");
		
		if(username==null||username.length()==0){
			throw new ServletException("���O�ɓ��͓��e������܂���",null);
		}
		if(title==null||title.length()==0){
			throw new ServletException("�^�C�g���ɓ��͓��e������܂���",null);
		}
		if(title==null||title.length()==0){
			throw new ServletException("�^�C�g���ɓ��͓��e������܂���",null);
		}
			//�f�[�^�x�[�X�ɏ�������
		
		
		String altertext = kaigyou.Kaigyou(text);
		
		InsertTest.insertUser_Table(id,username, title,altertext);
	
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<resProfile> pLIst = QueryTest.getQueryList(id);
		
		
		String threadname = NameQuery.getQueryName(id);
		
		
		req.setAttribute("themeA",theme);
		req.setAttribute("name",threadname);
		
	//�p�����[�^��JSP�ɓ��e����
		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/res");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		res.setContentType("text/html; charset=UTF-8");
		//�����R�[�h�Œ�
		//�p�����[�^���󂯎��
		req.setCharacterEncoding("UTF-8");
		
		String rno = req.getParameter("rno");
		
		String theme = req.getParameter("theme");
		
	//�f�[�^�x�[�X���烊�X�g�����炤
		List<resProfile> pLIst = QueryTest.getQueryList(rno);
		
		
		String threadname = NameQuery.getQueryName(rno);
		
		
		req.setAttribute("themeA",theme);
		req.setAttribute("name",threadname);
		
	//�p�����[�^��JSP�ɓ��e����
		
		req.setAttribute("users",pLIst);
		
	//�]�����JSP���w��
		RequestDispatcher dis= req.getRequestDispatcher("/res");
	
		//JSP�ɓ]��
		dis.forward(req,res);
	}
}