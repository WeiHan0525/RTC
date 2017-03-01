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
	public Response signUp(
			@FormParam("Name") String Name, @FormParam("Email") String Email,
			@FormParam("Leader") String Leader, @FormParam("Phone") String Phone, 
			@FormParam("LeaderSchool") String LeaderSchool, @FormParam("LeaderDepartment") String LeaderDepartment,
			@FormParam("LeaderGrade") String LraderGrade, 
			@FormParam("FirstMember") String FirstMember, @FormParam("FirstMemberSchool") String FirstMemberSchool,
			@FormParam("FirstMemberDepartment") String FirstMemberDepartment, @FormParam("FirstMemberGrade") String FirstMemberGrade,
			@FormParam("SecondMember") String SecondMember, @FormParam("SecondMemberSchool") String SecondMemberSchool,
			@FormParam("SecondMemberDepartment") String SecondMemberDepartment, @FormParam("SecondMemberGrade") String SecondMemberGrade,
			@FormParam("ThirdMember") String ThirdMember, @FormParam("ThirdMemberSchool") String ThirdMemberSchool,
			@FormParam("ThirdMemberDepartment") String ThirdMemberDepartment, @FormParam("ThirdMemberGrade") String ThirdMemberGrade,
			@FormParam("FourthMember") String FourthMember, @FormParam("FourthMemberSchool") String FourthMemberSchool,
			@FormParam("FourthMemberDepartment") String FourthMemberDepartment, @FormParam("FourthMemberGrade") String FourthMemberGrade,
			@FormParam("FifthMember") String FifthMember, @FormParam("FifthMemberSchool") String FifthMemberSchool,
			@FormParam("FifthMemberDepartment") String FifthMemberDepartment, @FormParam("FifthMemberGrade") String FifthMemberGrade,
			@FormParam("SixthMember") String SixthMember, @FormParam("SixthMemberSchool") String SixthMemberSchool,
			@FormParam("SixthMemberDepartment") String SixthMemberDepartment, @FormParam("SixthMemberGrade") String SixthMemberGrade,
			@FormParam("FirstTeacher") String FirstTeacher, @FormParam("FirstTeacherSchool") String FirstTeacherSchool,
			@FormParam("FirstTeacherDepartment") String FirstTeacherDepartment,
			@FormParam("SecondTeacher") String SecondTeacher, @FormParam("SecondTeacherSchool") String SecondTeacherSchool,
			@FormParam("SecondTeacherDepartment") String SecondTeacherDepartment) throws URISyntaxException {
		Team team = new Team();
		team.setName(Name);
		team.setEmail(Email);
		
		team.setLeader(Leader);
		team.setPhone(Phone);
		team.setLeaderSchool(LeaderSchool);
		team.setLeaderDepartment(LeaderDepartment);
		team.setLeaderGrade(LraderGrade);
		
		team.setFirstMember(FirstMember);
		team.setFirstMemberSchool(FirstMemberSchool);
		team.setFirstMemberDepartment(FirstMemberDepartment);
		team.setFirstMemberGrade(FirstMemberGrade);
		
		team.setSecondMember(SecondMember);
		team.setSecondMemberSchool(SecondMemberSchool);
		team.setSecondMemberDepartment(SecondMemberDepartment);
		team.setSecondMemberGrade(SecondMemberGrade);
		
		team.setThirdMember(ThirdMember);
		team.setThirdMemberSchool(ThirdMemberSchool);
		team.setThirdMemberDepartment(ThirdMemberDepartment);
		team.setThirdMemberGrade(ThirdMemberGrade);
		
		team.setFourthMember(FourthMember);
		team.setFourthMemberSchool(FourthMemberSchool);
		team.setFourthMemberDepartment(FourthMemberDepartment);
		team.setFourthMemberGrade(FourthMemberGrade);
		
		team.setFifthMember(FifthMember);
		team.setFifthMemberSchool(FifthMemberSchool);
		team.setFifthMemberDepartment(FifthMemberDepartment);
		team.setFifthMemberGrade(FifthMemberGrade);
		
		team.setSixthMember(SixthMember);
		team.setSixthMemberSchool(SixthMemberSchool);
		team.setSixthMemberDepartment(SixthMemberDepartment);
		team.setSixthMemberGrade(SixthMemberGrade);
		
		team.setFirstTeacher(FirstTeacher);
		team.setFirstTeacherSchool(FirstTeacherSchool);
		team.setFirstTeacherDepartment(FirstTeacherDepartment);
		
		team.setSecondTeacher(SecondTeacher);
		team.setSecondTeacherSchool(SecondTeacherSchool);
		team.setSecondTeacherDepartment(SecondTeacherDepartment);
		
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
