package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import data.Team;

public class TeamDBManager {

	private static TeamDBManager DB_MANAGER = new TeamDBManager();

	public static TeamDBManager getInstance() {
		return DB_MANAGER;
	}

	private IDatabase database = DatabaseFactory.getDatabase(DatabaseFactory.DatabaseType.MySql);

	private TeamDBManager() {

	}

	public boolean addTeam(Team team) {
		Connection conn = database.getConnection();
		PreparedStatement preStmt = null;
		Statement stmt = null;
		String sql = "INSERT INTO Team(Leader, Phone, Email, Password) VALUES(?, ?, ?, ?)";
		String query = "SELECT * FROM Team";
		try {
				preStmt = conn.prepareStatement(sql);
				preStmt.setString(1, team.getLeader());
				preStmt.setString(2, team.getPhone());
				preStmt.setString(3, team.getEmail());
				preStmt.setString(4, generate());
				
				preStmt.executeUpdate();
				preStmt.close();

				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				System.out.println("List All Teams");
				while (rs.next()) {
					System.out.println("Team Leader: " + rs.getString("Leader") + ", Email: " + rs.getString("Email"));
				}
				stmt.close();
				conn.commit();
				return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	public String generate(){
		int z;
	    StringBuilder sb = new StringBuilder();
	    int i;
	    for (i = 0; i < 8; i++) {
	      z = (int) ((Math.random() * 7) % 3);
	 
	      if (z == 1) { // ��Ʀr
	        sb.append((int) ((Math.random() * 10) + 48));
	      } else if (z == 2) { // ��j�g�^��
	        sb.append((char) (((Math.random() * 26) + 65)));
	      } else {// ��p�g�^��
	        sb.append(((char) ((Math.random() * 26) + 97)));
	      }
	    }
	    return sb.toString();
	}
	
	public boolean validateTeam(String email, String password) {
		Connection conn = database.getConnection();
		PreparedStatement stmt = null;
		String query = "SELECT * FROM Team WHERE email = ? and password = ?";
		try {
			stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			boolean valid = rs.first();
			stmt.close();
			conn.commit();
			return valid;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
//	
	public boolean CheckaddTeam(String email) {
		Connection conn = database.getConnection();
		PreparedStatement stmt = null;
		String query = "SELECT * FROM Team WHERE email = ?";
		try {
			stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			boolean valid = rs.first();
			stmt.close();
			conn.commit();
			return valid;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
//
//	public Team getTeam(String email) {
//		Connection conn = database.getConnection();
//		PreparedStatement stmt = null;
//		String query = "select * from Team where email = ?";
//		try {
//			stmt = conn.prepareStatement(query);
//			stmt.setString(1, email);
//			ResultSet rs = stmt.executeQuery();
//			Team Team = new Team();
//			if (rs.next()) {
//				Team.setID(rs.getInt("ID"));
//				Team.setTeamName(rs.getString("TeamName"));
//				Team.setPassword(rs.getString("password"));
//				Team.setEmail(rs.getString("email"));
//				Team.setPhone(rs.getString("phone"));
//			}
//			stmt.close();
//			conn.commit();
//			return Team;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return new Team();
//	}
//	
//	public Team getTeam(int id) {
//		Connection conn = database.getConnection();
//		PreparedStatement stmt = null;
//		String query = "select * from Team where ID = ?";
//		try {
//			stmt = conn.prepareStatement(query);
//			stmt.setInt(1, id);
//			ResultSet rs = stmt.executeQuery();
//			Team Team = new Team();
//			if (rs.next()) {
//				Team.setTeamName(rs.getString("TeamName"));
//				Team.setPassword(rs.getString("password"));
//				Team.setEmail(rs.getString("email"));
//				Team.setPhone(rs.getString("phone"));
//			}
//			stmt.close();
//			conn.commit();
//			return Team;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return new Team();
//	}
//
//	public List<Team> listAllTeams() {
//		List<Team> lsTeams = new ArrayList<Team>();
//
//		Connection conn = database.getConnection();
//		String sql = "SELECT * FROM Team";
//		Statement stmt = null;
//
//		try {
//			stmt = conn.createStatement();
//			ResultSet rs = stmt.executeQuery(sql);
//			while (rs.next()) {
//				int id = rs.getInt("ID");
//				String name = rs.getString("TeamName");
//				String password = rs.getString("password");
//				String email = rs.getString("email");
//				String phone = rs.getString("phone");
//
//				Team Team = new Team();
//				Team.setID(id);
//				Team.setTeamName(name);
//				Team.setPassword(password);
//				Team.setEmail(email);
//				Team.setPhone(phone);
//				lsTeams.add(Team);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return lsTeams;
//	}
//	
}
