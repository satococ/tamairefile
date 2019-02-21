<%@ page pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<title></title>
	<link rel="stylesheet" media="all" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script src="js/script.js"></script>
</head>

<body id="top">
	<style>
		body{
			font: 14px/1.9 'Noto Sans JP', Arial, Verdana, 游ゴシック, YuGothic,'ヒラギノ角ゴ ProN W3', 'Hiragino Kaku Gothic ProN', メイリオ, Meiryo,sans-serif;
			font-weight: 300;
			-webkit-text-size-adjust:100%;
			overflow-x: hidden;
			color: #fff;
			background: #000;
		}
		a{
			color: #0066ff;
			text-decoration: none;
		}
		a:hover, .active{
			  text-decoration: underline;
		}
		a:active, a:focus,input:active, input:focus{outline:0;}
	</style>

	<div id="wrapper">
		<div id="sidebar">
			<div id="sidebarWrap">
				<h1><img src="images/logo.jpg" width="87" height="25" style="left: 20%;" alt="logo"></h1>
					<nav id="mainnav">
						<p id="menuWrap"><a id="menu"><span id="menuBtn"></span></a></p>
						<div class="panel">
							<ul style="list-style: none;">
								<li><a href="#top">TOP</a></li>
								<!--<li><a href="#sec01">ACCOUNT</a></li>-->
								<li><a href="#sec02">SLED</a></li>
								<!--<li><a href="#sec03">ABOUT</a></li>-->
								<li><a href="#sec04">FOOTER</a></li>
							</ul>
							<ul id="sns">
								<li><a href="#" target="_blank"><img src="images/iconFb.png" width="20" height="20" alt="FB"></a></li>
								<li><a href="#" target="_blank"><img src="images/iconTw.png" width="20" height="20" alt="twitter"></a></li>
								<li><a href="#" target="_blank"><img src="images/iconInsta.png" width="20" height="20" alt="Instagram"></a></li>
								<li><a href="#" target="_blank"><img src="images/iconYouTube.png" width="20" height="20" alt="You Tube"></a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		<div id="content">
			<p id="mainImg"><img src="images/001.jpg" alt=""></p>
			<!-- ACCOUNT 
			<section id="sec01">
				<header>
					<h2><span>ACCOUNT</span></h2>
				</header>
				<div class="innerS">
					<div class="col-xs-6 col-xs-offset-3">
						<form method="post">
							<h1>新規会員登録</h1>
						<div class="form-group">
							<br><input type="text" class="form-control" name="username" placeholder="ユーザー名" required />
						</div>
						<div class="form-group">
							<br><input type="email"  class="form-control" name="email" placeholder="メールアドレス" required />
						</div>
						<div class="form-group">
							<br><input type="password" class="form-control" name="password" placeholder="パスワード" required />
						</div>
						<br><button type="submit" class="btn btn-default" name="signup">会員登録する</button>
						<a href="index.php">ログインはこちら</a>
						</form>
					</div>
				</div>
			</section>
			-->
			<!-- SLED -->
			<section id="sec02">
				<header>
					<h2><span>SLED</span></h2>
				</header>
				<ul id="gallery">
					<li><a href="/tama/tlist?theme=0"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo.jpg" alt=""></figure></a></li>
					<li><a href="/tama/tlist?theme=1"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo2.jpg" alt=""></figure></a></li>
					<li><a href="/tama/tlist?theme=2"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo3.jpg" alt=""></figure></a></li>
					<li><a href="/tama/tlist?theme=3"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo4.jpg" alt=""></figure></a></li>
					<li><a href="/tama/tlist?theme=4"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo5.jpg" alt=""></figure></a></li>
					<li><a href="/tama/tlist?theme=5"><figure class="snip1314"><div class="border one"><div></div></div><div class="border two"><div></div></div><img src="images/Spo6.jpg" alt=""></figure></a></li>
				</ul>
				<style>
					figure.snip1384 {
						position:absolute;
					}
						
					figure.snip1384 {
						font-family: 'Raleway', Arial, sans-serif;
						position: relative;
						float: left;
						overflow: hidden;
						margin: 10px 1%;
						min-width: 270px;
						max-width: 400px;
						width: 100%;
						color: #ffffff;
						text-align: left;
						font-size: 16px;
						background-color: #000000;
					}
					figure.snip1384 * {
						-webkit-box-sizing: border-box;
						box-sizing: border-box;
						-webkit-transition: all 0.35s ease;
						transition: all 0.35s ease;
					}
					figure.snip1384 img {
						max-width: 100%;
						backface-visibility: hidden;
						vertical-align: top;
					}
					figure.snip1384:after,figure.snip1384 figcaption {
						position: absolute;
						top: 0;
						bottom: 0;
						left: 0;
						right: 0;
					}
					figure.snip1384:after {
						content: '';
						background-color: rgba(0, 0, 0, 0.65);
						-webkit-transition: all 0.35s ease;
						transition: all 0.35s ease;
						opacity: 0;
					}
					figure.snip1384 figcaption {
						z-index: 1;
						padding: 40px;
					}
					figure.snip1384 h3,figure.snip1384 .links {
						width: 100%;
						margin: 5px 0;
						padding: 0;
					}
					figure.snip1384 h3 {
						line-height: 1.1em;
						font-weight: 700;
						font-size: 1.4em;
						text-transform: uppercase;
						opacity: 0;
					}
					figure.snip1384 p {
						font-size: 0.8em;
						font-weight: 300;
						letter-spacing: 1px;
						opacity: 0;
						top: 50%;
						-webkit-transform: translateY(40px);
						transform: translateY(40px);
					}
					figure.snip1384 i {
						position: absolute;
						bottom: 10px;
						right: 10px;
						padding: 40px 240px;
						font-size: 34px;
						opacity: 0;
						-webkit-transform: translateX(-10px);
						transform: translateX(-10px);
					}
					figure.snip1384 a {
						position: absolute;
						top: 0;
						bottom: 0;
						left: 0;
						right: 0;
						z-index: 1;
					}
					figure.snip1384:hover img,figure.snip1384.hover img {
						zoom: 1;
						filter: alpha(opacity=50);
						-webkit-opacity: 0.5;
						opacity: 0.5;
					}
					figure.snip1384:hover:after,figure.snip1384.hover:after {
						opacity: 1;
						position: absolute;
						top: 10px;
						bottom: 10px;
						left: 10px;
						right: 10px;
					}
					figure.snip1384:hover h3,figure.snip1384.hover h3,
					figure.snip1384:hover p,figure.snip1384.hover p,
					figure.snip1384:hover i,figure.snip1384.hover i {
						-webkit-transform: translate(0px, 0px);
						transform: translate(0px, 0px);
						opacity: 1;
					}
					/* Demo purposes only */

					.main{
						margin: 0;         /* 余白の削除 */
						padding: 0;        /* 余白の削除 */
						width:830;
						height:510;
						position:relative;
						top:35px;
					}
					.snip1314 {
						font-family: 'Muli', Arial, sans-serif;
						position: relative;
						float: left;
						overflow: hidden;
						margin: 10px 1%;
						padding: 6px;
						min-width: 230px;
						max-width: 315px;
						width: 100%;
						box-shadow: none !important;
						-webkit-transform: translateZ(0);
						transform: translateZ(0);
						-webkit-box-sizing: border-box;
						box-sizing: border-box;
						color: #ffffff;
						font-size: 16px;
					}
					.snip1314 * {
						-webkit-transition: all 0.3s ease-out;
						transition: all 0.3s ease-out;
					}
					.snip1314 img {
						max-width: 100%;
						vertical-align: top;
						box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
					}
					.snip1314 .border {
						position: absolute;
						opacity: 5.45;
						z-index: 1;
					}
					.snip1314 .border:before,
					.snip1314 .border:after,
					.snip1314 .border div:before,
					.snip1314 .border div:after {
						background-color: #f5b043;
						position: absolute;
						content: "";
						display: block;
						-webkit-transition: all 0.4s ease-in-out;
						transition: all 0.4s ease-in-out;
					}
					.snip1314 .border:before,
					.snip1314 .border:after {
						width: 0;
						height: 1px;
					}
					.snip1314 .border div:before,
					.snip1314 .border div:after {
						width: 1px;
						height: 0;
					}
					.snip1314 .border.one {
						left: 0;
						top: 0;
						right: 12px;
						bottom: 12px;
					}
					.snip1314 .border.one:before,
					.snip1314 .border.one div:before {
						left: 0;
						top: 0;
					}
					.snip1314 .border.one:after,
					.snip1314 .border.one div:after {
						bottom: 0;
						right: 0;
					}
					.snip1314 .border.two {
						left: 12px;
						top: 12px;
						right: 0;
						bottom: 0;
					}
					.snip1314 .border.two:before,
					.snip1314 .border.two div:before {
						right: 0;
						top: 0;
					}
					.snip1314 .border.two:after,
					.snip1314 .border.two div:after {
						bottom: 0;
						left: 0;
					}
					.snip1314 figcaption {
						left: 6px;
						right: 6px;
						top: 6px;
						bottom: 6px;
						position: absolute;
						padding: 50px;
						background-color: rgba(0, 0, 0, 3.3);
					}
					.snip1314 blockquote {
						font-family: 'Ovo', Arial, sans-serif;
						font-size: 1.1em;
						font-weight: 500;
						line-height: 1.6em;
						font-style: italic;
						letter-spacing: 1px;
						padding: 0;
						margin: 0;
					}
					.snip1314 h5 {
						display: inline-block;
						font-size: 1em;
					}
					.snip1314 h5 span {
						font-weight: normal;
						margin-left: 5px;
						opacity: 0.5;
					}
					.snip1314 h5:before {
						content: '- ';
					}
					.snip1314 a {
						left: 0;
						right: 0;
						top: 0;
						bottom: 0;
						position: absolute;
						z-index: 1;
					}
					.snip1314:hover .border:before,
					.snip1314.hover .border:before,
					.snip1314:hover .border:after,
					.snip1314.hover .border:after {
						width: 100%;
					}
					.snip1314:hover .border div:before,
					.snip1314.hover .border div:before,
					.snip1314:hover .border div:after,
					.snip1314.hover .border div:after {
						height: 100%;
					}
					.snip1314:hover figcaption,
					.snip1314.hover figcaption {
						opacity: 0.9;
						background-color: #000000;
					}
				</style>
			</section>
			<!-- // SLED -->
			<!-- ABOUT --
			<section id="sec03">
				<header>
					<h2><span>ABOUT</span></h2>
				</header>
				<div class="inner">
					<ul class="col4">
						<li>

						</li>
						<li>

						</li>
						<li>

						</li>
						<li>

						</li>
					</ul>
				</div>
			</section>
			!-- // ABOUT -->
			<!-- 注意事項 -->
			<section id="sec04">
				<header>
					<h2><span>使用時の注意事項</span></h2>
				</header>
				<div class="inner">
					<div class="article">
						<img src="images/tyui0.jpg" width="370" height="224" alt="">
						<p>サイド利用にあたる注意事項</p>
						<p>非合法な目的や、違法な活動を促進させるためにLead Onのサービスを利用することを禁じます。
						Lead Onの利用にあたり、オンライン上での行為やコンテンツに関して、利用者はすべての適用法令を遵守することに同意するものとします。
						Lead Onのサービスを利用して、一般に市販されていない（処方薬を含む）医薬品を販売もしくは取引すること、
						または意図されていない用途で使用する医薬品の販売を促進することを禁じます。
						Lead Onに事前の報告なく、プレロールビデオ広告やスポンサーシップ画像など、サードパーティーの広告を含む動画コンテンツを送信、投稿、表示することは禁じられています。</p>
					</div>
					<div class="article">
						<img src="images/tyui.png" width="370" height="224" alt="">
						<p>権利侵害などの注意事項</p>
						<p>Lead Onでは利用者が安心してさまざまな意見や信念を表現できるよう、嫌がらせや脅し、または恐怖を与えて他の利用者が発言できないようにするといった、攻撃的な行為を禁じています。
						攻撃的な行為の判断や適切な強制執行措置の対象となるかどうかについては、前後関係を考慮します。その判断にあたっては以下の点が考慮されますが、これらに限定されません。
						「行為が個人または特定の集団を標的としているかどうか」
						「攻撃的な行為の対象者や第三者によって報告が行われたかどうか」
						「行為のニュース性が高く公共の利益にかなっているかどうか」</p>
					</div>
				</div>
			</section>
			<!-- // PROJECT -->
			<!-- FOOTER -->
			<footer id="footer">

			</footer>
		</div>
	</div>
	<style>
		div.example {
		width: 100px;
		height: 100px;
		background-color: red;
		overflow: scroll;
		}
		
		/* ヘッダー------------------------------------------------------------*/
		#mainnav a{
			color: #fff;
			font-family: 'Modern Antiqua', 'Noto Sans JP',serif;
			list-style: none;
		}
		
		/* フッター------------------------------------------------------------*/
		#footer{
			clear: both;
			padding: 50px 10px 50px 0;
			text-align: center;
			font-size: 12px;
			list-style: none;
		}
		
		/* 共通------------------------------------------------------------*/
		h1, h2{
			font-family: 'Modern Antiqua', 'Noto Sans JP',serif;
			list-style: none;
		}
		img{
			max-width: 100%;
			height: auto;
			list-style: none;
			}
		section{
			clear: both;
			list-style: none;
		}
		section h2{
			width: 60%;
			margin: 70px auto;
			font-size: 22px;
			font-weight:normal;
			text-align: center;
			list-style: none;
		}
		section h2 span {
			padding-bottom: 20px;
			border-bottom: 3px solid #fff;
			list-style: none;
		}
		.inner{
			width: 80%;
			margin: 0 auto;
			padding-bottom: 50px;
			list-style: none;
		}
		#sec03 .inner, #sec04 .inner{
			border-bottom: 1px solid #fff;
			list-style: none;
		}
		.innerS{
			width: 60%;
			margin: 0 auto;
			padding-bottom: 80px;
			list-style: none;
		}
		/* SEC02 Gallery------------------------------------------------------------*/
		#sec02{
			padding: 0 !important;
			list-style: none;
		}
		#sec02 header{
			display: none;
			list-style: none;
		}
		#gallery{
			overflow: hidden;
			list-style: none;
		}
		#gallery li{
			float: left;
			width: calc(100%/3);
			line-height: 0;
			list-style: none;
		}
		#gallery li.full{
			width: 100%;
			list-style: none;
		}
		#gallery img{
			display: block;
			width: 100%;
			height: auto;
		}
		
		/* SEC03 BRAND------------------------------------------------------------*/
		.col4 .img{
			margin: 0 auto;
		}
		
		/* SEC04 PROJECT------------------------------------------------------------*/
		#sec04{
			padding-bottom: 0 !important;
		}
		.article{
			clear: both;
			overflow: hidden;
			padding-bottom: 50px;
		}
		.article img{
			float: left;
			margin: 5px 20px 20px;
		}
		.article p{
			margin-bottom: 20px;
		}
		
		/* RESPONSIVE 設定------------------------------------------------------------*/
		@media only screen and (min-width: 800px){
			body{
				font-size:14px;
			}
			#wrapper{
				width: 100%;
			}
			#content{
				width: 80%;
			}
			#sidebar{
				width: 12%;
				position: fixed;
				top: 0;
				right: 4%;
				background: #000;
			}
			a#menu{
				display:none;
			}	
			.panel{
				display:block !important;
			}
			#sidebar h1{
				padding: 30px 0;
			}
			#mainnav li{
				font-size: 14px;
				padding: 10px 0;
			}
			#sns{
				margin-top: 50px;
			}
			#sns li{
				display: inline-block;
				padding-right: 10px;
			}
			#sns a:hover img{
				opacity: .8;
			}
			
			/* SEC03 BRAND---------------------------------------------------------*/
			.col4{
				text-align: center;
			}
			.col4 li{
				display: inline-block;
				width: 18%;
				padding: 0 3%;
				vertical-align: top;
				text-align: left;
			}
			#footer{
				padding: 30px 10px 70px 0;
			}
		}

		@media only screen and (max-width: 640px){
			.innerS{
				width: 94%;
				padding-bottom: 30px;
			}
			#gallery li{
				float: none;
				width: 100%;
			}
			.article img{
				float: none;
				display: block;
				margin: 0 auto 20px;
			}
		}
		@media only screen and (max-width: 799px){
			#sidebar{
				position: fixed;
				width: 100%;
				z-index:500;
			}
			#sidebarWrap{
				position: relative;
				width: 100%;
				height: 60px;
				background: #000;
				border-bottom: 1px solid #333;
			}
			#sidebar h1{
				text-align: center;
				padding-top: 15px;
			}
			#sidebar h1 img{
				width: auto !important;
				max-height: 25px;
			}
			a#menu{
				display: inline-block;
				position: relative;
				width: 40px;
				height: 40px;
				margin: 10px;
			}
			#menuBtn{
				display: block;
				position: absolute;
				top: 50%;
				left: 50%;
				width: 18px;
				height: 2px;
				margin: -1px 0 0 -7px;
				background: #fff;
				transition: .2s;
			}
			#menuBtn:before, #menuBtn:after{
				display: block;
				content: "";
				position: absolute;
				top: 50%;
				left: 0;
				width: 18px;
				height: 2px;
				background: #fff;
				transition: .3s;
			}
			#menuBtn:before{
				margin-top: -7px;
			}
			#menuBtn:after{
				margin-top: 5px;
			}
			a#menu .close{
				background: transparent;
			}
			a#menu .close:before, a#menu .close:after{
				margin-top: 0;
			}
			a#menu .close:before{
				transform: rotate(-45deg);
				-webkit-transform: rotate(-45deg);
			}
			a#menu .close:after{
				transform: rotate(-135deg);
				-webkit-transform: rotate(-135deg);
			}
			.panel{
				width: 100%;
				display: none;
				overflow: hidden;
				position: relative;
				left: 0;
				top: -10px;
				z-index: 100;
			}
			#mainnav{
				position: absolute;
				top: 0;
				width: 100%;
				text-align: right;
			}
			#mainnav ul{
				border-bottom: 1px solid #ccc;
				background: #000;
				text-align: left;
			}
			#mainnav li a{
				position: relative;
				display: block;
				padding: 15px 25px;
				border-bottom: 1px solid #ccc;
				color: #fff;
				font-weight: 400;
			}
			#mainnav li a:before{
				display: block;
				content: "";
				position: absolute;
				top: 50%;
				left: 5px;
				width: 6px;
				height: 6px;
				margin: -4px 0 0 0;
				border-top: solid 2px #fff;
				border-right: solid 2px #fff;
				-webkit-transform: rotate(45deg);
				transform: rotate(45deg);
			}
			#mainnav #sns li{
				display: inline-block;
			}
			#mainnav #sns li a{
				position: relative;
				display: inline-block;
				padding: 15px 10px 0;
				border: 0;
			}
			#mainnav #sns li a:before{
				border: 0;
			}
			.col4 li{
				margin: 0 auto 50px;
				display: block;
				text-align: center;
			}
			section h2{
				margin: 55px auto;
			}
		}
		/*テキスト---------------------------------------------------------*/
		.msr_text_02 {
			padding-bottom: 20px;
			width: 460px;
		}
		.msr_text_02  label {
			display: block;
			font-size: 14px;
			padding-bottom: 5px;
		}
		.msr_text_02 input[type=text] {
			border: 1px solid #1B73BA;
			box-sizing: border-box;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
			color: #333;
			font-size: 13px;
			padding: 10px;
			height: 40px;
			width: 460px;
		}
		/*チェックボックス-------------------------------------------*/
		.msr_chack_02 {
			  padding-bottom: 20px;
		}
		.msr_chack_02 p {
			font-size: 14px;
			padding-bottom: 5px;
		}
		.msr_chack_02 input[type=checkbox] {
			display: none;
			margin: 0;
		}
		.msr_chack_02 input[type=checkbox] + label {
			cursor: pointer;
			display: inline-block;
			font-size: 13px;
			line-height: 1.5px;
			margin-right: 12px;
			padding: 0 0 0 24px;
			position: relative;
		}
		.msr_chack_02 input[type=checkbox] + label::before {
			background: #1B73BA;
			box-sizing: border-box;
			-moz-box-sizing: border-box;
			content: "";
			display: block;
			margin-top: -9px;
			position: absolute;
			left: 0;
			top: 50%;
			height: 14px;
			width: 14px;
		}
		.msr_chack_02 input[type=checkbox]:checked + label::after {
			box-sizing: border-box;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
			content: "";
			display: block;
			position: absolute;
			top: 50%;
		}
		.msr_chack_02 input[type=checkbox]:checked + label::after {
			border-bottom: 2px solid #fff;
			border-left: 2px solid #fff;
			left: 3px;
			margin-top: -7px;
			transform: rotate(-45deg);
			-webkit-transform: rotate(-45deg);
			height: 6px;
			width: 9px;
		}
	</style>
</body>
</html>