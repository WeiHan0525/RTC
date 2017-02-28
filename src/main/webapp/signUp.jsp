<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>2017 APP移動應用創新賽</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/freelancer.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="page-top" class="index">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom pull-left">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="#page-top">2017 APP移動應用創新賽</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<!-- Single button -->
				<li class="page-scroll"><a href="index.jsp">回首頁</a></li>
				<li class="page-scroll"><a href="#footer">聯絡我們</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	<div class="border-bottom"></div>
	</nav>

	<section id="sheet" style="padding-top: 100px">
	<div class="container">
	<form class="form-signin" method="post" action="webapi/team/signUp">
		<h4>必填欄位</h4>
		<ul>
			<li>
				<label for="Name">隊伍名稱：</label>
				<input id="Name" maxlength="50" name="Name" size="50" type="text" placeholder="e.g., 逢甲代表隊" required>
			</li>
			<li>
				<label for="Email">連絡信箱：</label>
				<input id="Email" maxlength="50" name="Email" size="50" type="email" placeholder="e.g., example@example.com" required>
				<span>(信箱將做為登入帳號)</span>
			</li>
		</ul>

		<h4>隊長</h4>
		<ul>
			<li>
				<label for="Leader">姓名：</label>
				<input id="Leader" maxlength="50" name="Leader" size="50" type="text" required>
			</li>
			<li>
				<label for="Phone" class="control-label">聯絡電話：</label>
				<input id="Phone" maxlength="50" name="Phone" size="50" type="text" placeholder="e.g., 04-24517250" required>
			</li>
			<li>
				<label for="LeaderSchool">就讀學校：</label>
				<input id="LeaderSchool" maxlength="50" name="LeaderSchool" size="50" type="text" placeholder="e.g., 逢甲大學" required>
			</li>
			<li>
				<label for="LeaderDepartment">就讀學系：</label>
				<input id="LeaderDepartment" maxlength="50" name="LeaderDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系" required>
			</li>
			<li>
				<label for="LeaderGrade">年級：</label>
				<input id="LeaderGrade" maxlength="50" name="LeaderGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三" required>
			</li>
		</ul>
		<h4>其他隊員</h4>
		<ul>
			<li>
				<p><strong>隊員一</strong></p>
			</li>
			<li>
				<label for="FirstMember"">姓名：</label>
				<input id="FirstMember" maxlength="50" name="FirstMember" size="50" type="text">
			</li>
			<li>
				<label for="FirstMemberSchool">就讀學校：</label>
				<input id="FirstMemberSchool" maxlength="50" name="FirstMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="FirstMemberDepartment">就讀學系：</label>
				<input id="FirstMemberDepartment" maxlength="50" name="FirstMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="FirstMemberGrade">年級：</label>
				<input id="FirstMemberGrade" maxlength="50" name="FirstMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<ul>
			<li>
				<p><strong>隊員二</strong></p>
			</li>
			<li>
				<label for="SecondMember">姓名：</label>
				<input id="SecondMember" maxlength="50" name="SecondMember" size="50" type="text">
			</li>
			<li>
				<label for="SecondMemberSchool">就讀學校：</label>
				<input id="SecondMemberSchool" maxlength="50" name="SecondMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="SecondMemberDepartment">就讀學系：</label>
				<input id="SecondMemberDepartment" maxlength="50" name="SecondMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="SecondMemberGrade">年級：</label>
				<input id="SecondMemberGrade" maxlength="50" name="SecondMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<ul>
			<li>
				<p><strong>隊員三</strong></p>
			</li>
			<li>
				<label for="ThirdMember">姓名：</label>
				<input id="ThirdMember" maxlength="50" name="ThirdMember" size="50" type="text">
			</li>
			<li>
				<label for="ThirdMemberSchool">就讀學校：</label>
				<input id="ThirdMemberSchool" maxlength="50" name="ThirdMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="ThirdMemberDepartment">就讀學系：</label>
				<input id="ThirdMemberDepartment" maxlength="50" name="ThirdMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="ThirdMemberGrade">年級：</label>
				<input id="ThirdMemberGrade" maxlength="50" name="ThirdMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<ul>
			<li>
				<p><strong>隊員四</strong></p>
			</li>
			<li>
				<label for="FourthMember">姓名：</label>
				<input id="FourthMember" maxlength="50" name="FourthMember" size="50" type="text">
			</li>
			<li>
				<label for="FourthMemberSchool">就讀學校：</label>
				<input id="FourthMemberSchool" maxlength="50" name="FourthMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="FourthMemberDepartment">就讀學系：</label>
				<input id="FourthMemberDepartment" maxlength="50" name="FourthMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="FourthMemberGrade">年級：</label>
				<input id="FourthMemberGrade" maxlength="50" name="FourthMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<ul>
			<li>
				<p><strong>隊員五</strong></p>
			</li>
			<li>
				<label for="FifthMember">姓名：</label>
				<input id="FifthMember" maxlength="50" name="FifthMember" size="50" type="text">
			</li>
			<li>
				<label for="FifthMemberSchool">就讀學校：</label>
				<input id="FifthMemberSchool" maxlength="50" name="FifthMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="FifthMemberDepartment">就讀學系：</label>
				<input id="FifthMemberDepartment" maxlength="50" name="FifthMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="FifthMemberGrade">年級：</label>
				<input id="FifthMemberGrade" maxlength="50" name="FifthMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<ul>
			<li>
				<p><strong>隊員六</strong></p>
			</li>
			<li>
				<label for="SixthMember">姓名：</label>
				<input id="SixthMember" maxlength="50" name="SixthMember" size="50" type="text">
			</li>
			<li>
				<label for="SixthMemberSchool">就讀學校：</label>
				<input id="SixthMemberSchool" maxlength="50" name="SixthMemberSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="SixthMemberDepartment">就讀學系：</label>
				<input id="SixthMemberDepartment" maxlength="50" name="SixthMemberDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
			<li>
				<label for="SixthMemberGrade">年級：</label>
				<input id="SixthMemberGrade" maxlength="50" name="SixthMemberGrade" size="50" type="text" placeholder="e.g., 大一, 碩二, 博三">
			</li>
		</ul>
		<h4>指導老師</h4>
		<ul>
			<li>
				<p>第一指導老師</p>
			</li>
			<li>
				<label for="FirstTeacher">姓名：</label>
				<input id="FirstTeacher" maxlength="50" name="FirstTeacher" size="50" type="text">
			</li>
			<li>
				<label for="FirstTeacherSchool">任教學校：</label>
				<input id="FirstTeacherSchool" maxlength="50" name="FirstTeacherSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="FirstTeacherDepartment">任教學系：</label>
				<input id="FirstTeacherDepartment" maxlength="50" name="FirstTeacherDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
		</ul>
		<ul>
			<li>
				<p>第二指導老師</p>
			</li>
			<li>
				<label for="SecondTeacher">姓名：</label>
				<input id="SecondTeacher" maxlength="50" name="SecondTeacher" size="50" type="text">
			</li>
			<li>
				<label for="SecondTeacherSchool">任教學校：</label>
				<input id="SecondTeacherSchool" maxlength="50" name="SecondTeacherSchool" size="50" type="text" placeholder="e.g., 逢甲大學">
			</li>
			<li>
				<label for="SecondTeacherDepartment">任教學系：</label>
				<input id="SecondTeacherDepartment" maxlength="50" name="SecondTeacherDepartment" size="50" type="text" placeholder="e.g., 資訊工程學系">
			</li>
		</ul>
		<div class="col-md-2 col-md-offset-5" style="margin-bottom: 30px">
			<button type="submit" class="btn btn-block">送出</button>
		</div>
	</form>
	</div>
	</section>

	<!-- Footer -->
	<footer class="text-center" id="footer">
	<div class="footer-above">
		<div class="container">
			<div class="row">
				<div class="footer-col col-md-4">
					<h3>主辦單位</h3>
					<ul class="list-inline">
						<li>
							<p>
								<a href="http://www.fcu.edu.tw">逢甲大學Apple授權區域教育培訓中心</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.straighta.com.tw/">晶盛科技股份有限公司</a>
							</p>
						</li>
						<!--
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
-->
					</ul>
				</div>
				<div class="footer-col col-md-4">
					<h3>協辦單位</h3>
					<p>
						<a href="http://www.fcu.edu.tw">逢甲大學</a>
					</p>
					<p>
						<a href="http://www.apple.com/tw/">Apple</a>
					</p>
				</div>
				<div class="footer-col col-md-4">
					<h3>聯絡我們</h3>
					<p>聯繫人員：</p>
					<p>聯繫地址：</p>
					<p>聯繫電話：（02）6608-1000</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-below">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy APP移動應用創新賽. Design by FCU</p>
				</div>
			</div>
		</div>
	</div>
	</footer>



	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="js/freelancer.min.js"></script>

</body>
</html>