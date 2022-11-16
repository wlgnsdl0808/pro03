package kr.go.kimpo.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.kimpo.dto.UserDTO;
import kr.go.kimpo.model.UserDAO;

@WebServlet("/GetUserListCtrl.do")
public class GetUserListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserDAO dao = new UserDAO();
		ArrayList<UserDTO> userList = dao.getUserList();

		request.setAttribute("list", userList);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/user/userList.jsp");
		view.forward(request, response);
	}
}
