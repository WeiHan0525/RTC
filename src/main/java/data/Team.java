package data;
import java.io.Serializable;

@SuppressWarnings("serial")
public class Team implements Serializable {

	private int id;
	
	private String Name;
	
	private String Email;

	//******************************
	
	private String Leader;
	
	private String Phone;
	
	private String LeaderSchool;
	
	private String LeaderDepartment;
	
	private String LeaderGrade;

	//******************************
	
	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	private String FirstMember;
	
	private String FirstMemberSchool;

	private String FirstMemberDepartment;
	
	private String FirstMemberGrade;

	//******************************
	
	private String SecondMember;
	
	private String SecondMemberSchool;

	private String SecondMemberDepartment;
	
	private String SecondMemberGrade;

	//******************************
	
	private String ThirdMember;
	
	private String ThirdMemberSchool;

	private String ThirdMemberDepartment;
	
	private String ThirdMemberGrade;

	//******************************
	
	private String FourthMember;
	
	private String FourthMemberSchool;

	private String FourthMemberDepartment;
	
	private String FourthMemberGrade;

	//******************************
	
	private String FifthMember;
	
	private String FifthMemberSchool;

	private String FifthMemberDepartment;
	
	private String FifthMemberGrade;

	//******************************
	
	private String SixthMember;
	
	private String SixthMemberSchool;

	private String SixthMemberDepartment;
	
	private String SixthMemberGrade;

	//******************************
	
	private String FirstTeacher;
	
	private String FirstTeacherSchool;
	
	private String FirstTeacherDepartment;

	//******************************
	
	private String SecondTeacher;
	
	private String SecondTeacherSchool;
	
	private String SecondTeacherDepartment;

	//*****************************************

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String Name) {
		this.Name = Name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	//******************************************

	public String getLeader() {
		return Leader;
	}

	public void setLeader(String leader) {
		Leader = leader;
	}

	public String getLeaderSchool() {
		return LeaderSchool;
	}

	public void setLeaderSchool(String leaderSchool) {
		LeaderSchool = leaderSchool;
	}

	public String getLeaderDepartment() {
		return LeaderDepartment;
	}

	public void setLeaderDepartment(String leaderDepartment) {
		LeaderDepartment = leaderDepartment;
	}

	public String getLeaderGrade() {
		return LeaderGrade;
	}

	public void setLeaderGrade(String leaderGrade) {
		LeaderGrade = leaderGrade;
	}
	
	//***************************************************************

	public String getFirstMember() {
		return FirstMember;
	}

	public void setFirstMember(String firstMember) {
		FirstMember = firstMember;
	}

	public String getFirstMemberSchool() {
		return FirstMemberSchool;
	}

	public void setFirstMemberSchool(String firstMemberSchool) {
		FirstMemberSchool = firstMemberSchool;
	}

	public String getFirstMemberDepartment() {
		return FirstMemberDepartment;
	}

	public void setFirstMemberDepartment(String firstMemberDepartment) {
		FirstMemberDepartment = firstMemberDepartment;
	}

	public String getFirstMemberGrade() {
		return FirstMemberGrade;
	}

	public void setFirstMemberGrade(String firstMemberGrade) {
		FirstMemberGrade = firstMemberGrade;
	}
	
	//******************************************************************

	public String getSecondMember() {
		return SecondMember;
	}

	public void setSecondMember(String secondMember) {
		SecondMember = secondMember;
	}

	public String getSecondMemberSchool() {
		return SecondMemberSchool;
	}

	public void setSecondMemberSchool(String secondMemberSchool) {
		SecondMemberSchool = secondMemberSchool;
	}

	public String getSecondMemberDepartment() {
		return SecondMemberDepartment;
	}

	public void setSecondMemberDepartment(String secondMemberDepartment) {
		SecondMemberDepartment = secondMemberDepartment;
	}

	public String getSecondMemberGrade() {
		return SecondMemberGrade;
	}

	public void setSecondMemberGrade(String secondMemberGrade) {
		SecondMemberGrade = secondMemberGrade;
	}
	
	//****************************************************************************

	public String getThirdMember() {
		return ThirdMember;
	}

	public void setThirdMember(String thirdMember) {
		ThirdMember = thirdMember;
	}

	public String getThirdMemberSchool() {
		return ThirdMemberSchool;
	}

	public void setThirdMemberSchool(String thirdMemberSchool) {
		ThirdMemberSchool = thirdMemberSchool;
	}

	public String getThirdMemberDepartment() {
		return ThirdMemberDepartment;
	}

	public void setThirdMemberDepartment(String thirdMemberDepartment) {
		ThirdMemberDepartment = thirdMemberDepartment;
	}

	public String getThirdMemberGrade() {
		return ThirdMemberGrade;
	}

	public void setThirdMemberGrade(String thirdMemberGrade) {
		ThirdMemberGrade = thirdMemberGrade;
	}
	
	//*************************************************************************

	public String getFourthMember() {
		return FourthMember;
	}

	public void setFourthMember(String fourthMember) {
		FourthMember = fourthMember;
	}

	public String getFourthMemberSchool() {
		return FourthMemberSchool;
	}

	public void setFourthMemberSchool(String fourthMemberSchool) {
		FourthMemberSchool = fourthMemberSchool;
	}

	public String getFourthMemberDepartment() {
		return FourthMemberDepartment;
	}

	public void setFourthMemberDepartment(String fourthMemberDepartment) {
		FourthMemberDepartment = fourthMemberDepartment;
	}

	public String getFourthMemberGrade() {
		return FourthMemberGrade;
	}

	public void setFourthMemberGrade(String fourthMemberGrade) {
		FourthMemberGrade = fourthMemberGrade;
	}
	
	//*********************************************************************

	public String getFifthMember() {
		return FifthMember;
	}

	public void setFifthMember(String fifthMember) {
		FifthMember = fifthMember;
	}

	public String getFifthMemberSchool() {
		return FifthMemberSchool;
	}

	public void setFifthMemberSchool(String fifthMemberSchool) {
		FifthMemberSchool = fifthMemberSchool;
	}

	public String getFifthMemberDepartment() {
		return FifthMemberDepartment;
	}

	public void setFifthMemberDepartment(String fifthMemberDepartment) {
		FifthMemberDepartment = fifthMemberDepartment;
	}

	public String getFifthMemberGrade() {
		return FifthMemberGrade;
	}

	public void setFifthMemberGrade(String fifthMemberGrade) {
		FifthMemberGrade = fifthMemberGrade;
	}
	
	//*********************************************************************

	public String getSixthMember() {
		return SixthMember;
	}

	public void setSixthMember(String sixthMember) {
		SixthMember = sixthMember;
	}

	public String getSixthMemberSchool() {
		return SixthMemberSchool;
	}

	public void setSixthMemberSchool(String sixthMemberSchool) {
		SixthMemberSchool = sixthMemberSchool;
	}

	public String getSixthMemberDepartment() {
		return SixthMemberDepartment;
	}

	public void setSixthMemberDepartment(String sixthMemberDepartment) {
		SixthMemberDepartment = sixthMemberDepartment;
	}

	public String getSixthMemberGrade() {
		return SixthMemberGrade;
	}

	public void setSixthMemberGrade(String sixthMemberGrade) {
		SixthMemberGrade = sixthMemberGrade;
	}
	
	//************************************************************************

	public String getFirstTeacher() {
		return FirstTeacher;
	}

	public void setFirstTeacher(String firstTeacher) {
		FirstTeacher = firstTeacher;
	}

	public String getFirstTeacherSchool() {
		return FirstTeacherSchool;
	}

	public void setFirstTeacherSchool(String firstTeacherSchool) {
		FirstTeacherSchool = firstTeacherSchool;
	}

	public String getFirstTeacherDepartment() {
		return FirstTeacherDepartment;
	}

	public void setFirstTeacherDepartment(String firstTeacherDepartment) {
		FirstTeacherDepartment = firstTeacherDepartment;
	}
	
	//**************************************************************************

	public String getSecondTeacher() {
		return SecondTeacher;
	}

	public void setSecondTeacher(String secondTeacher) {
		SecondTeacher = secondTeacher;
	}

	public String getSecondTeacherSchool() {
		return SecondTeacherSchool;
	}

	public void setSecondTeacherSchool(String secondTeacherSchool) {
		SecondTeacherSchool = secondTeacherSchool;
	}

	public String getSecondTeacherDepartment() {
		return SecondTeacherDepartment;
	}

	public void setSecondTeacherDepartment(String secondTeacherDepartment) {
		SecondTeacherDepartment = secondTeacherDepartment;
	}
}
