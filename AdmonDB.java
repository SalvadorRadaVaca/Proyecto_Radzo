package Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdmonDB {
	
	private String message = "";
	private Connection connection = null;
	
	public AdmonDB() {
		try {
			String server = "jdbc:mysql://localhost:3306/voting_booth";
			String user = "Sal565";
		    String password = "12177";
		    connection = DriverManager.getConnection(server, user, password);
		    System.out.println("Connection established!");
		} catch(SQLException ex) {
			System.out.println("Connection failed!");
		}
	}
	
	public void vote(String politic_party) {
		if(politic_party != null) switch (politic_party) {
		   case "PRD":
			   PRD();
			   break;
		   case "PAN":
			   PAN();
			   break;
		   case "PRI":
			   PRI();
			   break;
		}
	}
	
	private void PRD() {
		try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 1";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			votes_ing = votes_ing + 1;
			String update = "UPDATE votes SET numvote = " + votes_ing + " WHERE id = '1'";
			stm.execute(update);
			message = "\nVote to PRD";
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
	}
	
    private void PAN() {
    	try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 2";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			votes_ing = votes_ing + 1;
			String update = "UPDATE votes SET numvote = " + votes_ing + " WHERE id = '2'";
			stm.execute(update);
			message = "\nVote to PAN";
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
	}
    
    private void PRI() {
    	try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 3";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			votes_ing = votes_ing + 1;
			String update = "UPDATE votes SET numvote = " + votes_ing + " WHERE id = '3'";
			stm.execute(update);
			message = "\nVote to PRI";
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
	}
    
    public int getVotesPRD() {
		try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 1";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			return votes_ing;
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
		return 0;
	}
	
    public int getVotesPAN() {
    	try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 2";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			return votes_ing;
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
    	return 0;
	}
    
    public int getVotesPRI() {
    	try {
			Statement stm;
			stm = connection.createStatement();
			String get = "SELECT numvote FROM votes WHERE id = 3";
			ResultSet rs = stm.executeQuery(get);
			rs.next();
			int votes_ing = rs.getInt(1);
			return votes_ing;
		} catch(SQLException ex) {
			System.out.println("Error: " + ex.getMessage());
		}
    	return 0;
	}
    
    public String getMessage() {
    	return this.message;
    }
}
