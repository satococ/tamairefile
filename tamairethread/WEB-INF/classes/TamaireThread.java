import java.io.PrintWriter;
import java.util.List;
import info.Profile;
import database.InsertTest;
import database.QueryTest;
import ex.nocontentException;

public class TamaireThread extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		//パラメータを受け取る
		//文字コード固定
		req.setCharacterEncoding("Windows-31J");
		
		
		//String threadid = req.getParameter("threadid");
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
			//データベースに書き込む
		InsertTest.insertUser_Table(0,username, title, text);
	
	//データベースからリストをもらう
		List<Profile> pLIst = QueryTest.getQueryList(0);
		
		
	//パラメータをJSPに投稿する
		
		req.setAttribute("users",pLIst);
		
	//転送先のJSPを指定
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSPに転送
		dis.forward(req,res);
	
	}


}