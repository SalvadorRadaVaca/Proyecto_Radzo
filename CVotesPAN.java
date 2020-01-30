package org.VotingMVCWeb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.VotingMVCWeb.model.AdmonDB;

/**
 * Servlet implementation class CVotesPAN
 */
@WebServlet("/CVotesPAN")
public class CVotesPAN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CVotesPAN() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AdmonDB db;
		try {
			db = new AdmonDB();
            db.vote("PAN");
			//response.getWriter().append("Votes to PRD: " + db.getVotesPRD() + "\nVotes to PAN: " + db.getVotesPAN() + "\nVotes to PRI: " + db.getVotesPRI());
			response.sendRedirect("index.jsp");
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
