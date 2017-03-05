<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%
String email = (String) session.getAttribute("email");
if (email == null || email.equals("")) {
	response.sendRedirect("login.jsp");
}
%>

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
				<li class="page-scroll"><a href="logout.jsp">登出</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	<div class="border-bottom"></div>
	</nav>

	<section id="upload" style="padding-top: 100px">
	<div class="container" style="padding-bottom: 100px">
		<div class="col-lg-12 text-center">
			<h2>競賽日程</h2>
		</div>
		<div class="col-lg-10 col-lg-offset-1" style="margin-top: 30px">
			<table style="width: 100%;"  class="text-center">
                        <tr>
                            <th class="text-center"><p>時間</p></th>
                            <th class="text-center"><p>項目</p></th>
                            <th class="text-center"><p>內容</p></th>
                            <th class="text-center" style="color: #760000"><p><strong>繳交</strong></p></th>
                        </tr>
                        <tr>
                            <td><p>2017/3/3 ~ 2017/4/7</p></td>
                            <td><p>報名日期</p></td>
                            <td><p>繳交報名文件</p></td>
                            <td><p style="color: #760000">附件一</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/4/8 ~ 2017/5/8</p></td>
                            <td><p>書面企劃案提交</p></td>
                            <td><p>參賽作品交件</p></td>
                            <td><p style="color: #760000">附件二</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/9 ~ 2017/5/22</p></td>
                            <td><p>初賽評選</p></td>
                            <td><p>評選出20隊作品進入決賽</p></td>
                            <td><p style="color: #760000"> </p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/24</p></td>
                            <td><p>初選結果公布</p></td>
                            <td><p>初選結果公布</p></td>
                            <td><p style="color: #760000"> </p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/27</p></td>
                            <td><p>交流討論會</p></td>
                            <td><p>於逢甲⼤學進⾏Workshop交流討論會，凡進⼊決賽的參賽隊伍皆可⾃由參加。 </p></td>
                            <td><p style="color: #760000"> </p></td>
                        </tr>
                        <tr>
                            <td><p>2017/6/1 ~ 2017/6/30</p></td>
                            <td><p>實作APP作品提交</p></td>
                            <td><p>進⼊決賽的參賽隊伍對參賽作品進⾏修改提交，決賽現場的提案簡報檔、<br>SOURCE CODE、APP宣傳資料，以及APP操作過程的影⽚檔。</p></td>
                            <td class="col-md-3 text-left">
                            	<ol>
                            		<li><p style="color: #760000">操作影⽚：請依照企劃書內容撰寫出適⽤可攜式移動裝置之 APP ，操作過程需拍攝成影⽚，影⽚⾧度180秒，限MP4格式，解析度1280*720 dpi 以上，須上傳⾄ YouTube設定為公開播放，並將影⽚播放網址填⾄現場簡報檔中；視頻內容必須與APP應⽤相關，任何含暴⼒、⾊情等的內容均將被駁回。</p></li>
                            		<li><p style="color: #760000">現場簡報檔，提報時間以10分鐘為限。</p></li>
                            		<li><p style="color: #760000">SOURCE CODE ⽂字檔案。</p></li>
                            		<li><p style="color: #760000">APP宣傳資料( 如附件三)。</p></li>
                            	</ol>
                            </td>
                        </tr>
                        <tr>
                            <td><p>2017/7/8</p></td>
                            <td><p>決賽現場</p></td>
                            <td><p>於逢甲⼤學進⾏決賽，現場展演、答辯及評選，<br>現場必須使⽤Apple硬體為載具進⾏展演，設備需⾃⾏攜帶。</p></td>
                            <td><p style="color: #760000"> </p></td>
                        </tr>
            </table>
            <br>
            <a href="附件.pdf" class="btn btn-default" target = "_blank">全部附件下載</a>
		</div>
		<div class="col-md-2 col-md-offset-5" style="margin-top: 50px">
			<form method="post" action="webapi/team/upload"
				enctype="multipart/form-data">
				<div class="form-group">
					<h4>上傳檔案</h4>
					<input type="file" name="file" size="50" /> <br>
					<h4 style="color: #760000">※請上傳pdf檔</h4>
				</div>
				<div class="col-md-3 col-md-offset-3" style="margin-top: 50px">
					<button type="submit" class="btn btn-primary">送出</button>
				</div>
			</form>
		</div>
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
                    <p>聯繫信箱：rtc@mail.fcu.edu.tw</p>
                    <p>聯繫地址：台中市西屯區⽂華路100號 逢甲⼤學 Apple RTC 授權區域培訓中⼼ </p>
                    <p>聯繫電話：Straight A客服專線（02）6608-1000</p>
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