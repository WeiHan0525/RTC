package service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

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
		boolean check;
		
		team.setLeader(Leader);
		team.setPhone(Phone);
		team.setEmail(Email);

		check = dbManager.addTeam(team);
		
		if(check){
			dbManager.sendEmail(Email);
			
			java.net.URI location = new java.net.URI("../signUpReview.jsp");
			return Response.temporaryRedirect(location).build();
		}
		
		java.net.URI location = new java.net.URI("../signUpFalse.jsp");
		return Response.temporaryRedirect(location).build();
	}
	
//	public Response login(@FormParam("InputEmail") String Email, @FormParam("InputPassword") String Password) throws URISyntaxException{
//		boolean valid;
//		valid = dbManager.validateTeam(Email, Password);
//		
//		if(!valid){
//			java.net.URI location = new java.net.URI("../loginFalse.jsp");
//			return Response.temporaryRedirect(location).build();
//		}
//		
//		java.net.URI location = new java.net.URI("../teamSystem.jsp");
//		return Response.temporaryRedirect(location).build();		
//	}
	
	@POST
	@Path("upload")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Response upload(@FormDataParam("file") InputStream uploadedInputStream,
			@FormDataParam("file") FormDataContentDisposition fileDetail) throws URISyntaxException {
		String tempDir = System.getProperty("java.io.tmpdir");

		String uploadDir = tempDir + "uploads/";

		File fUploadDir = new File(uploadDir);
		if (!fUploadDir.exists()) {
			fUploadDir.mkdirs();
		}
		String fileName = fileDetail.getFileName();
		System.out.println("fileName :" + fileName);
		String uploadedFileLocation = uploadDir + fileName;
		System.out.println("File successfully uploaded to : " + uploadedFileLocation);

		try {
			FileOutputStream out = new FileOutputStream(new File(uploadedFileLocation));
			int read = 0;
			byte[] bytes = new byte[1024];
			out = new FileOutputStream(new File(uploadedFileLocation));
			while ((read = uploadedInputStream.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("fileName :" + fileName);
		java.net.URI location = new java.net.URI("../uploadSuccess.jsp");
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
	@POST
	@Path("validate")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public boolean isValidTeam(@FormParam("email") String email, @FormParam("password") String password) {
		boolean valid = dbManager.validateTeam(email, password);
		return valid;
	}
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
