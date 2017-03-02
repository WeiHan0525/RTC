<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom pull-left">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
<!--
                <a class="navbar-brand" href="http://www.fcu.edu.tw" style="padding: 0px;margin-right: 15px">
                    <img src="img/logo.png" style="background: none" alt="logo">
                </a>
-->
                <a class="navbar-brand" href="#page-top">2017 APP移動應用創新賽</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <!-- Single button -->
                    <li>
                        <div class="dropdown">
                            <button type="button" class="btn btn-lg btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> 競賽 </button>
                            <ul class="dropdown-menu" role="menu">
<!--                                <li class="page-scroll"> <a href="#portfolio">競賽說明</a> </li>-->
                                <li class="page-scroll"> <a href="#schedule">競賽日程</a> </li>
                                <li class="page-scroll"> <a href="#award">得獎者獎項</a> </li>
                            </ul>
                        </div>
                    </li>
                    
                    <li>
                        <div class="dropdown">
                            <button type="button" class="btn btn-lg btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> 報名 </button>
                            <ul class="dropdown-menu" role="menu">
                                <li class="page-scroll"> <a href="#signUp">大賽報名</a> </li>
                                <li class="page-scroll"> <a href="#require">參賽要求</a> </li>
                                <li class="page-scroll"> <a href="#product">作品要求</a> </li>
                            </ul>
                        </div>
                    </li>
                    
                    <li>
                        <div class="dropdown">
                            <button type="button" class="btn btn-lg btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> 評審 </button>
                            <ul class="dropdown-menu" role="menu">
                                <li class="page-scroll"> <a href="#selection">評審及評獎</a> </li>
                                <li class="page-scroll"> <a href="#review">競賽評審</a> </li>
                            </ul>
                    </div>
<!--
                    <li class="page-scroll">
                        <a type="button" href="#about">主辦及協辦</a>
                    </li>
-->
                    <li class="page-scroll"> <a href="declare.jsp">報名入口</a> </li>
                    <li class="page-scroll">
                        <a href="#footer">聯絡我們</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
        <div class="border-bottom"></div>
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                    <img class="img-responsive" src="img/photo.png">
            </div>
        </div>
    </header>
    
    <!-- #schedule Grid Section -->
    <section id="schedule">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>競賽日程</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <!--<div class="col-lg-8 col-lg-offset-2">-->
                    <div class="col-lg-10 col-lg-offset-1">
                    <table style="width: 100%;"  class="text-center">
                        <tr>
                            <th class="text-center"><p>時間</p></th>
                            <th class="text-center"><p>項目</p></th>
                            <th class="text-center"><p>內容</p></th>
                        </tr>
                        <tr>
                            <td><p>2017/3/3 ~ 2017/4/7</p></td>
                            <td><p>報名日期</p></td>
                            <td><p>繳交報名文件</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/4/8 ~ 2017/5/8</p></td>
                            <td><p>書面企劃案提交</p></td>
                            <td><p>參賽作品交件</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/9 ~ 2017/5/22</p></td>
                            <td><p>初賽評選</p></td>
                            <td><p>評選出20隊作品進入決賽</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/24</p></td>
                            <td><p>初選結果公布</p></td>
                            <td><p>初選結果公布</p></td>
                        </tr>
                        <tr>
                            <td><p>2017/5/27</p></td>
                            <td><p>交流討論會</p></td>
                            <td><p>於逢甲⼤學進⾏Workshop交流討論會，凡進⼊決賽的參賽隊伍皆可⾃由參加。 </p></td>
                        </tr>
                        <tr>
                            <td><p>2017/6/1 ~ 2017/6/30</p></td>
                            <td><p>實作APP作品提交</p></td>
                            <td><p>進⼊決賽的參賽隊伍對參賽作品進⾏修改提交，決賽現場的提案簡報檔、<br>SOURCE CODE、APP宣傳資料，以及APP操作過程的影⽚檔。</p></td>
                        </tr><tr>
                            <td><p>2017/7/8</p></td>
                            <td><p>決賽現場</p></td>
                            <td><p>於逢甲⼤學進⾏決賽，現場展演、答辯及評選，<br>現場必須使⽤Apple硬體為載具進⾏展演，設備需⾃⾏攜帶。</p></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <!-- #award Grid Section -->
    <section id="award">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>得獎者獎項</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
               <div class="col-lg-10 col-lg-offset-1">
                    <table style="width: 100%"  class="text-center">
                        <tr>
                            <th class="text-center"><p>名次</p></th>
                            <th class="text-center"><p>隊數</p></th>
                            <th class="text-center"><p>獎品</p></th>
                        </tr>
                        <tr>
                            <td><p>特獎</p></td>
                            <td><p>1隊</p></td>
                            <td><p>Apple商品</p></td>
                        </tr>
                        <tr>
                            <td><p>一獎～三獎</p></td>
                            <td><p>各1隊</p></td>
                            <td><p>Apple或智能商品視贊助廠商提供</p></td>
                        </tr>
                        <tr>
                            <td><p>佳作</p></td>
                            <td><p>1隊</p></td>
                            <td><p>Apple或智能商品視贊助廠商提供</p></td>
                        </tr>
                    </table>
                    <br>
                    <p>決賽證明：經主辦單位審核進入決賽之隊伍，隊伍成員每人皆可獲得決賽證明書乙份。</p>
                    <p>參賽證明：經主辦單位審核進入初賽之隊伍，隊伍成員每人皆可獲得參賽證明書乙份。</p>
                    <p style="color: #760000"><strong>※ 評審委員遴選小組得視參賽作品之品質優劣，決定得獎隊伍是否從缺。</strong></p>
                </div>
            </div>
        </div>
    </section>

    <!-- #signUp Grid Section -->
    <section id="signUp">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>大賽報名</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="col-lg-4">
                        <table>
                            <tr><td><img src="img/letter.png" class="img-responsive"></td></tr>
                            <tr><td><strong><p class="text-center" style="font-size: 22px;margin-top: 10px">報名</p></strong></td></tr>
                            <tr><td><p style="padding-left: 40px;padding-right: 40px">參賽隊伍通過大賽網站報名註冊，同時須提交用印報名表，每支參賽隊伍，含指導老師，最多不得超過9名成員。</p></td></tr>
                            </table>
                    </div>
                            
<!--
                    <div class="col-lg-2">
                        <img src="img/arrow.png" class="arrow">
                    </div>
-->
                    
                    <div class="col-lg-4">   
                        <table>
                            <tr><td><img src="img/text.png" class="img-responsive"></td></tr>
                            <tr><td><strong><p class="text-center" style="font-size: 22px;margin-top: 10px">文件</p></strong></td></tr>
                            <tr><td><p style="padding-left: 40px;padding-right: 40px">只有當競賽主辦單位收到，參賽隊伍所在學校系所用印的報名表後，才能獲得參賽資格。</p></td></tr>
                        </table>
                    </div>
                    
<!--
                    <div class="col-lg-1">
                        <img src="img/arrow.png" class="arrow">
                    </div>
-->
                    
                    <div class="col-lg-4">    
                        <table>
                            <tr><td><img src="img/clock.png" class="img-responsive"></td></tr>
                            <tr><td><strong><p class="text-center" style="font-size: 22px;margin-top: 10px">截止</p></strong></td></tr>
                            <tr><td><p style="padding-left: 40px;padding-right: 40px">提交用印報名表的截止日期以上傳的時間為準，逾期將不再受理。</p></td></tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-5" style="margin-top: 30px; margin-bottom: 20px">
                	<button type="submit" class="btn btn-block">
							<a href="declare.jsp" style="font-size: 20px">報名入口</a>
					</button>
                </div>
            </div>
        </div>
    </section>

    <!-- #require Grid Section -->
    <section id="require">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>參賽要求</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="col-lg-4">
                        <table>
                            <tr>
                                <th class="text-center"><p>學生</p></th>
                            </tr>
                            <tr>
                                <td>
                                    <ol>
                                        <li><p>參賽者必須是大專院校的在學學生，包括大專生、碩士和博士生 (含港澳和海外學生)。</p></li>
                                        <li><p>學生報名以小組為單位，每組成員含指導老師不得超過9人。</p></li>
                                        <li><p>每隊均需推派隊長1名，代表該隊負責比賽聯繫、接洽入圍、得獎權利義務之一切相關事宜。</p></li>
                                    </ol>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-4">
                        <table>
                            <tr>
                                <th class="text-center"><p>指導老師</p></th>
                            </tr>
                            <tr>
                                <td>
                                    <ol>
                                        <li><p>每隊需一名或兩名指導老師，且列入該隊報名人數上限。</p></li>
                                        <li><p>為全國各級公、私立學校專任教師。</p></li>
                                        <li><p>具備參賽作品相關領域專業資格。</p></li>
                                    </ol>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-4">
                        <table>
                            <tr>
                                <th class="text-center"><p>其他</p></th>
                            </tr>
                            <tr>
                                <td>
                                    <ol>
                                        <li><p>團隊成員於報名截止日後，不得更換。</p></li>
                                        <li><p>參賽者必須是蘋果註冊開發者 ( Registered Apple Developer，可在蘋果網站免費註冊 ) 。</p></li>
                                        <li><p>參賽者需要如實提供參賽報名表需要的資料以作備查。</p></li>
                                        <li><p style="color: #760000"><strong>決賽所選出隊伍將由主辦單位贊助機票、住宿，參加「2017年中國高校計算機大賽 移動應用創新賽」之決賽，出賽時每隊限1名指導老師、3名學生出席，並須配合繳交此活動相關資料。</strong></p></li>
                                    </ol>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- #product Grid Section -->
    <section id="product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>作品要求</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <ol>
                        <li><p>本次大賽參賽作品須為具有一定功能的應用程式，該應用程式應為於iOS / MacOS / WatchOS / TVOS系統設計開發，並以蘋果公司的產品及開發工具為基礎。鼓勵參賽隊伍下載Xcode工具以及使用Swift 3語言進行開發。</p></li>
                        <li><p>作品主題須緊扣競賽推薦的應用領域，及社會關注的議題，包括工業、農業、健康醫療、環境保護、教育、養老、行政管理、安全及大數據應用等，恕不受理遊戲類領域作品報名。參賽者可自由命名，自行蒐集，獲得相關數據，提供解決方案並能在移動裝置上實際運行，由專家評審進行排名。參賽隊伍要在上傳參賽作品時，各參賽隊需按第八點競賽文件的要求，提交參賽作品相關說明資料。</p></li>
                        <li><p>企劃案提交截止日期之前，各參賽隊伍可隨時修改、優化、更新已提交的競賽文件資料。</p></li>
                        <li><p>首次提交參賽作品時，作品形式包括APP簡介、APP程式流程圖、宣傳物、影片介紹等；進入決賽的參賽隊伍提交參賽作品時，作品應包含設計文檔、SOURCE CODE及可在移動裝置中運行的應用程式；進入決賽公布後，參賽隊伍可對作品進行優化，但不能變更作品主題和內容，並根據決賽要求提供最終作品，參賽作品以作品提交截止日期前提交的最後一版為準。</p></li>
                        <li><p>進入決賽的參賽隊伍，在準決賽現場前，主辦單位將提供必要的技術支援。</p></li>
                        <li><p>參賽作品若需申請在App Store上架，請作品所有權人自行按照App Store正常流程進行申請，主辦單位將提供與此類申請相關的諮詢。</p></li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <!-- #selection Grid Section -->
    <section id="selection">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>評審及評獎</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <ol>
                        <li><p>參賽作品篩選及初賽階段作品評審，均採取區域之間評委交叉評審的方式(即參賽學校學生的作品，不會由來自其本校的評委進行評審)，決賽階段評委會，將對決賽參賽作品進行現場打分。</p></li>
                        <li><p>初賽成績不作為決賽階段評審的依據。</p></li>
                        <li><p>本次競賽的評審結果由評審團審定，並在比賽官方網站公佈。獲獎證書由主辦單位統一印製、頒發。頒獎典禮在決賽評審結束後進行。</p></li>
                        <li><p>獲獎結果公佈後，對獲獎作品保留10天的質疑投訴期，投訴者應提供真實姓名、單位、聯繫方式及詳細證據以證明獲獎作品參賽隊伍存在違規行為，主辦單位將在收到實名投訴後進行調查，如確認參賽隊違規，主辦單位將取消該參賽隊伍所獲獎項並重新調整獎項的授予，主辦單位將依法保護投訴人的隱私權益。</p></li>
                        <li><p>任何涉嫌作弊行為，一經查出，參賽者將被取消參賽資格。</p></li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <!-- #review Grid Section -->
    <section id="review">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>競賽評審</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <ol>
                        <li><p>提交的參賽作品將由大賽評委評審，評審委員將由主辦單位選定，人員包括學校教師（不超過1/3）以及Apple、贊助企業人員共同構成（人數總數為奇數）。</p></li>
                        <li><p>決賽階段，評審委員將由主辦單位在大賽評審委員團隊中抽籤選出，至決賽現場評分。評審將基於以下5個標準評分，滿分共計100分。</p></li>
                    </ol>
                    <br>
                    <table style="width: 100%"  class="text-center">
                        <tr>
                            <th class="text-center"><p>項目</p></th>
                            <th class="text-center"><p>說明</p></th>
                            <th class="text-center"><p>比重</p></th>
                        </tr>
                        <tr>
                            <td><p>新穎性</p></td>
                            <td class="text-left"><p>獨特的設計理念，是否能夠為用戶「創造全新的體驗」</p></td>
                            <td><p>30分</p></td>
                        </tr>
                        <tr>
                            <td><p>有效利用 iOS / MacOS /<br>WatchOS / TVOS 平台</p></td>
                            <td class="text-left">
                                <ol>
                                    <li><p>設計/程式適合在 iOS / MacOS / WatchOS / TVOS 平台上運行</p></li>
                                    <li><p>充分的利用iOS / MacOS / WatchOS / TVOS用戶介面 ( UI )</p></li>
                                    <li><p>開發工具有效的沿用 iOS / MacOS / WatchOS / TVOS 的設計理念和最佳做法等</p></li>
                                </ol>
                                </td>
                            <td><p>20分</p></td>
                        </tr>
                        <tr>
                            <td><p>精緻、美觀、易於使用</p></td>
                            <td class="text-left">
                                <ol>
                                    <li><p>設計/程序的用戶介面美觀，在移動設備上吸引</p></li>
                                    <li><p>在用戶互動、速度和可操作性方面提升用戶體驗</p></li>
                                    <li><p>用戶易懂，使用起來簡便直覺性</p></li>
                                    <li><p>開發工具考慮電源、安全等因素</p></li>
                                </ol>
                                </td>
                            <td><p>20分</p></td>
                        </tr>
                        <tr>
                            <td><p>商業化的可能性</p></td>
                            <td class="text-left"><p>是否可結合產業應用，使其做商業化的應用，造福更多廣大用戶</p></td>
                            <td><p>20分</p></td>
                        </tr>
                        <tr>
                            <td><p>技術複雜度</p></td>
                            <td class="text-left"><p>設計／程式具有一定的技術水準等</p></td>
                            <td><p>10分</p></td>
                        </tr>
                    </table>
                </div>
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
                                <p><a href="http://www.straighta.com.tw/">晶盛科技股份有限公司</a></p>
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
                        <p><a href="http://www.fcu.edu.tw">逢甲大學</a></p>
                        <p><a href="http://www.apple.com/tw/">Apple</a></p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>聯絡我們</h3>
                        <p>聯繫人員： </p>
                        <p>聯繫地址： </p>
                        <p>聯繫電話：（02）6608-1000 </p>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</body>

</html>