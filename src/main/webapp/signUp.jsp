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
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css"> 
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
			<div class="col-md-6 col-md-offset-3">
				<h4>必填欄位</h4>
				<ul>
					<li>
						<label for="Leader">隊長姓名：</label>
						<input id="Leader" maxlength="50" name="Leader" size="50" type="text" required>
					</li>
					<li>
						<label for="Phone" class="control-label">聯絡電話：</label>
						<input id="Phone" maxlength="50" name="Phone" size="50" type="text" placeholder="e.g., 04-24517250, 0912-345678" required>
					</li>
					<li>
						<label for="Email">聯絡信箱：</label>
						<input id="Email" maxlength="50" name="Email" size="50" type="email" placeholder="e.g., example@example.com" required>
						<p style="border: none; color: #760000">※信箱將做為<u>登入帳號</u>且不得重複
					</li>
				</ul>
				<div class="col-md-2 col-md-offset-5" style="margin-bottom: 30px">
					<button type="submit" class="btn btn-block">送出</button>
				</div>
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
							<p><a href="index.jsp">Apple RTC (Taiwan) 授權區域培訓中⼼-逢甲⼤學</a></p>
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