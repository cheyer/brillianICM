package org.dhbw.imbit11.backend;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

/**
 * Servlet implementation class SendCertificate
 */
@WebServlet("/SendCertificate")
public class SendCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendCertificate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * Philipp K.
	 * 6.3.16
	 * Sends an certificate of the current progress to each member of a specific group 
	 * handed in by the request
	 * @param request - contains the request of a user (reset of game progress)
	 * @param response - contains the response of the servlet
	 * @exception IOException - shows line of code where the exception is thrown
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	
		String url;		
		String group_id = request.getParameter("group_id");
		String group_name = request.getParameter("group_name");

		String data = "";
		ArrayList<Object> list = null;
		
		UserRealm realm = new UserRealm();
		
		try{ 
			ArrayList<String> users = realm.getUserIdsByGroupId(group_id);
			for(String userid:users){
				String email = realm.getUserEmailByID(userid);
				list = realm.getUserProgress(userid);
				
				System.out.println("Certificate is send to User with Email " +email);
				System.out.println("Firstname: " + list.get(1));
				System.out.println("Lastname: " + list.get(0));
				System.out.println("Gender: " + list.get(2));
				System.out.println("cost: " + list.get(3));
				System.out.println("quality: " + list.get(4));
				System.out.println("time: " + list.get(5));
			
			}
			request.setAttribute("status", "Certificate Send to group: " + group_name);
			}
		catch(SQLException e){
			e.printStackTrace();
		}			
		
			
				
			
		url = "/Professor";
		
		 RequestDispatcher dispatcher =
	             getServletContext().getRequestDispatcher(url);
	        
	        dispatcher.forward(request, response);
		}

}
