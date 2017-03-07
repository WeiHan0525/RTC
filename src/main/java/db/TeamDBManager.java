package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import data.Team;

public class TeamDBManager {

	private static TeamDBManager DB_MANAGER = new TeamDBManager();
	
	private static final String EMAIL_ACCOUNT="";
	
	private static final String EMAIL_PASS="";

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
		String sql = "INSERT INTO team(Leader, Phone, Email, Password) VALUES(?, ?, ?, ?)";
		String query = "SELECT * FROM team";
		try {
			if (checkaddTeam(team.getEmail())) {
				return false;
			}
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

	public String generate() {
		int z;
		StringBuilder sb = new StringBuilder();
		int i;
		for (i = 0; i < 8; i++) {
			z = (int) ((Math.random() * 7) % 3);

			if (z == 1) { // ï¿½ï¿½Æ¦r
				sb.append((int) ((Math.random() * 10) + 48));
			} else if (z == 2) { // ï¿½ï¿½jï¿½gï¿½^ï¿½ï¿½
				sb.append((char) (((Math.random() * 26) + 65)));
			} else {// ï¿½ï¿½pï¿½gï¿½^ï¿½ï¿½
				sb.append(((char) ((Math.random() * 26) + 97)));
			}
		}
		return sb.toString();
	}

	public void sendEmail(String Email) {

		final String username = "rtc@mail.fcu.edu.tw";
		final String password = "xrjiuuiityofurzi";// your password

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			String pwd = getTeam(Email).getPassword();
			// String url = "140.134.26.64:7870/2017/verify.jsp";
			String url = "http://rtc.fcu.edu.tw/login.jsp";
			String content = "±zªº±b¸¹¡G" + Email + "<br>±zªº±K½X¡G" + pwd + "<br>½Ð³z¹Lºô§}µn¤J¡G" + url;
			// Message message = new MimeMessage(session);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("rtc@mail.fcu.edu.tw"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(Email));
			message.setSubject("2017APP³Ð·sÀ³¥ÎÄvÁÉ³ø¦WÅçÃÒ", "utf-8");
			message.setContent(content, "text/html;charset=utf-8");

			Transport.send(message);

			System.out.println("Mail sent succesfully!");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public boolean validateTeam(String email, String password) {
		Connection conn = database.getConnection();
		PreparedStatement stmt = null;
		String query = "SELECT * FROM team WHERE email = ? and password = ?";
		try {
			stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			boolean valid = rs.first();
			stmt.close();
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
	public boolean checkaddTeam(String email) {
		Connection conn = database.getConnection();
		PreparedStatement stmt = null;
		String query = "SELECT * FROM team WHERE email = ?";
		try {
			stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			boolean valid = rs.first();
			stmt.close();
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

	public Team getTeam(String email) {
		Connection conn = database.getConnection();
		PreparedStatement stmt = null;
		String query = "select * from team where email = ?";
		try {
			stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			Team Team = new Team();
			if (rs.next()) {
				Team.setPassword(rs.getString("password"));
			}
			stmt.close();
			return Team;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return new Team();
	}
	//
	// public Team getTeam(int id) {
	// Connection conn = database.getConnection();
	// PreparedStatement stmt = null;
	// String query = "select * from Team where ID = ?";
	// try {
	// stmt = conn.prepareStatement(query);
	// stmt.setInt(1, id);
	// ResultSet rs = stmt.executeQuery();
	// Team Team = new Team();
	// if (rs.next()) {
	// Team.setTeamName(rs.getString("TeamName"));
	// Team.setPassword(rs.getString("password"));
	// Team.setEmail(rs.getString("email"));
	// Team.setPhone(rs.getString("phone"));
	// }
	// stmt.close();
	// conn.commit();
	// return Team;
	// } catch (SQLException e) {
	// e.printStackTrace();
	// } finally {
	// try {
	// conn.close();
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// }
	// return new Team();
	// }
	//
	// public List<Team> listAllTeams() {
	// List<Team> lsTeams = new ArrayList<Team>();
	//
	// Connection conn = database.getConnection();
	// String sql = "SELECT * FROM Team";
	// Statement stmt = null;
	//
	// try {
	// stmt = conn.createStatement();
	// ResultSet rs = stmt.executeQuery(sql);
	// while (rs.next()) {
	// int id = rs.getInt("ID");
	// String name = rs.getString("TeamName");
	// String password = rs.getString("password");
	// String email = rs.getString("email");
	// String phone = rs.getString("phone");
	//
	// Team Team = new Team();
	// Team.setID(id);
	// Team.setTeamName(name);
	// Team.setPassword(password);
	// Team.setEmail(email);
	// Team.setPhone(phone);
	// lsTeams.add(Team);
	// }
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// return lsTeams;
	// }
	//
}
