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

public class TamaireThread extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		
		//パラメータを受け取る
		//文字コード固定
		req.setCharacterEncoding("UTF-8");
		
		
		//String threadid = req.getParameter("threadid");
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
		String id = req.getParameter("id");
			//データベースに書き込む
		InsertTest.insertUser_Table(id,username, title, text);
	
	//データベースからリストをもらう
		List<resProfile> pLIst = QueryTest.getQueryList(id);
		
		
		String threadname = NameQuery.getQueryName(id);
		
		req.setAttribute("name",threadname);
		
	//パラメータをJSPに投稿する
		
		req.setAttribute("users",pLIst);
		
	//転送先のJSPを指定
		RequestDispatcher dis= req.getRequestDispatcher("/res");
	
		//JSPに転送
		dis.forward(req,res);
	
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		res.setContentType("text/html; charset=UTF-8");
		//文字コード固定
		//パラメータを受け取る
		req.setCharacterEncoding("UTF-8");
		
		String rno = req.getParameter("rno");
		
	//データベースからリストをもらう
		List<resProfile> pLIst = QueryTest.getQueryList(rno);
		
		
		String threadname = NameQuery.getQueryName(rno);
		
		req.setAttribute("name",threadname);
		
	//パラメータをJSPに投稿する
		
		req.setAttribute("users",pLIst);
		
	//転送先のJSPを指定
		RequestDispatcher dis= req.getRequestDispatcher("/res");
	
		//JSPに転送
		dis.forward(req,res);
	}
}