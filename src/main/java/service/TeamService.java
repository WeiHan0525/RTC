package service;

import java.net.URISyntaxException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import data.Team;
import db.TeamDBManager;

@Path("team/")
public class TeamService {

	private TeamDBManager dbManager = TeamDBManager.getInstance();

	@POST
	@Path("signUp")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public Response signUp(@FormParam("Leader") String Leader, @FormParam("Phone") String Phone, @FormParam("Email") String Email) throws URISyntaxException {
		Team team = new Team();
		
		team.setLeader(Leader);
		team.setPhone(Phone);
		team.setEmail(Email);
		
		dbManager.addTeam(team);
		
		java.net.URI location = new java.net.URI("../signUpReview.jsp");
		return Response.temporaryRedirect(location).build();
	}
	
	public Response login(@FormParam("InputEmail") String Email, @FormParam("InputPassword") String Password) throws URISyntaxException{
		boolean valid;
		valid = dbManager.validateTeam(Email, Password);
		
		if(!valid){
			java.net.URI location = new java.net.URI("../loginFalse.jsp");
			return Response.temporaryRedirect(location).build();
		}
		
		java.net.URI location = new java.net.URI("../teamSystem.jsp");
		return Response.temporaryRedirect(location).build();		
	}

//
//	@GET
//	@Path("hello")
//	@Produces(MediaType.TEXT_PLAIN)
//	public String hello() {
//		return "hello";
//	}
//
//	@GET
//	@Path("ok/{email}/{password}")
//	@Produces(MediaType.TEXT_PLAIN)
//	public String ok(@PathParam("email") String email, @PathParam("password") String pass) {
//		if (email.equals("a") && pass.equals("b")) {
//			return "true";
//		}
//
//		return "false";
//	}
//
//	@POST
//	@Path("validate")
//	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
//	@Produces(MediaType.APPLICATION_JSON)
//	public String isValidTeam(@FormParam("email") String email, @FormParam("password") String password) {
//		boolean valid = dbManager.validateTeam(email, password);
//		return String.valueOf(valid);
//	}
//
//	@GET
//	@Path("email/{email}")
//	@Produces(MediaType.APPLICATION_JSON)
//	public Team getTeam(@PathParam("email") String email) {
//
//		return dbManager.getTeam(email);
//	}
//	
//	@GET
//	@Path("id/{id}")
//	@Produces(MediaType.APPLICATION_JSON)
//	public Team getTeam(@PathParam("id") int id) {
//
//		return dbManager.getTeam(id);
//	}
//
//	@GET
//	@Path("list")
//	@Produces(MediaType.APPLICATION_JSON)
//	public List<Team> listTeams() {
//		return dbManager.listAllTeams();
//	}

}
