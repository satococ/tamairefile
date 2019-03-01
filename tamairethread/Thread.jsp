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
		<!--投稿画面のタイムライン-->
		<div class="container">
			<header class="clearfix">
				<span><a href="index.jsp" style="color: #ff69b4;">←TOP</a></span>
				<h1>THREAD LIST</h1>
				<nav>
					<a href="" class="icon-arrow-left" data-info="previous Blueprint">Previous Blueprint</a>
					<a href="" class="icon-drop" data-info="back to the Codrops article">back to the Codrops article</a>
				</nav>
			</header>	
			<div class="main" style="margin: 0px;">
				<ul class="cbp_tmtimeline">
					<li>
						<time class="cbp_tmtime" datetime="2013-04-10 18:30"><span>4/10/13</span> <span>18:30</span></time>
						<div class="cbp_tmicon cbp_tmicon-phone"></div>
						<div class="cbp_tmlabel">
							<h2>作成者：THREAD名</h2>
							<p>詳細</p>
						</div>
					</li>
					<li>
						<time class="cbp_tmtime" datetime="2013-04-11T12:04"><span>4/11/13</span> <span>12:04</span></time>
						<div class="cbp_tmicon cbp_tmicon-screen"></div>
						<div class="cbp_tmlabel">
							<h2>作成者：THREAD名</h2>
							<p>詳細</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<style>
		font-face {
				font-family: 'ecoico';
				src:url('../fonts/timelineicons/ecoico.eot');
				src:url('../fonts/timelineicons/ecoico.eot?#iefix') format('embedded-opentype'),
					url('../fonts/timelineicons/ecoico.woff') format('woff'),
					url('../fonts/timelineicons/ecoico.ttf') format('truetype'),
					url('../fonts/timelineicons/ecoico.svg#ecoico') format('svg');
				font-weight: normal;
				font-style: normal;
			} /* Made with http://icomoon.io/ */

			.cbp_tmtimeline {
				margin: 0px;
				padding: 0;
				left: 2%;
				list-style: none;
				position: relative;
			} 

			/* The line */
			.cbp_tmtimeline:before {
				content: '';
				position: absolute;
				top: 0;
				bottom: 0;
				width: 10px;
				background: #afdcf8;
				left: 20%;
				margin-left: -10px;
			}

			/* The date/time */
			.cbp_tmtimeline > li .cbp_tmtime {
				display: block;
				width: 5%;
				padding-right: 100px;
				position: absolute;
			}

			.cbp_tmtimeline > li .cbp_tmtime span {
				display: block;
				text-align: right;
			}

			.cbp_tmtimeline > li .cbp_tmtime span:first-child {
				font-size: 0.9em;
				color: #bdd0db;
			}

			.cbp_tmtimeline > li .cbp_tmtime span:last-child {
				font-size: 2.9em;
				color: #3594cb;
			}

			.cbp_tmtimeline > li:nth-child(odd) .cbp_tmtime span:last-child {
				color: #6cbfee;
			}

			/* Right content */
			.cbp_tmtimeline > li .cbp_tmlabel {
				margin: 0 0 15px 25%;
				background: #3594cb;
				color: #fff;
				padding: 2em;
				font-size: 1.2em;
				font-weight: 300;
				line-height: 1.4;
				position: relative;
				border-radius: 5px;
			}

			.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel {
				background: #6cbfee;
			}

			.cbp_tmtimeline > li .cbp_tmlabel h2 { 
				margin-top: 0px;
				padding: 0 0 10px 0;
				border-bottom: 1px solid rgba(255,255,255,0.4);
			}

			/* The triangle */
			.cbp_tmtimeline > li .cbp_tmlabel:after {
				right: 100%;
				border: solid transparent;
				content: " ";
				height: 0;
				width: 0;
				position: absolute;
				pointer-events: none;
				border-right-color: #3594cb;
				border-width: 10px;
				top: 10px;
			}

			.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel:after {
				border-right-color: #6cbfee;
			}

			/* The icons */
			.cbp_tmtimeline > li .cbp_tmicon {
				width: 40px;
				height: 40px;
				font-family: 'ecoico';
				speak: none;
				font-style: normal;
				font-weight: normal;
				font-variant: normal;
				text-transform: none;
				font-size: 1.4em;
				line-height: 40px;
				-webkit-font-smoothing: antialiased;
				position: absolute;
				color: #fff;
				background: #46a4da;
				border-radius: 50%;
				box-shadow: 0 0 0 8px #afdcf8;
				text-align: center;
				left: 20%;
				top: 0;
				margin: 0 0 0 -25px;
			}

			.cbp_tmicon-phone:before {
				content: "\e000";
			}

			.cbp_tmicon-screen:before {
				content: "\e001";
			}

			.cbp_tmicon-mail:before {
				content: "\e002";
			}

			.cbp_tmicon-earth:before {
				content: "\e003";
			}

			/* Example Media Queries */
			@media screen and (max-width: 65.375em) {

				.cbp_tmtimeline > li .cbp_tmtime span:last-child {
					font-size: 1.5em;
				}
			}

			@media screen and (max-width: 47.2em) {
				.cbp_tmtimeline:before {
					display: none;
				}

				.cbp_tmtimeline > li .cbp_tmtime {
					width: 100%;
					position: relative;
					padding: 0 0 20px 0;
				}

				.cbp_tmtimeline > li .cbp_tmtime span {
					text-align: left;
				}

				.cbp_tmtimeline > li .cbp_tmlabel {
					margin: 0 0 30px 0;
					padding: 1em;
					font-weight: 400;
					font-size: 95%;
				}

				.cbp_tmtimeline > li .cbp_tmlabel:after {
					right: auto;
					left: 20px;
					border-right-color: transparent;
					border-bottom-color: #3594cb;
					top: -20px;
				}

				.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel:after {
					border-right-color: transparent;
					border-bottom-color: #6cbfee;
				}

				.cbp_tmtimeline > li .cbp_tmicon {
					position: relative;
					float: right;
					left: auto;
					margin: -55px 5px 0 0px;
				}	
			}
		</style>
		<style>
			/* General Blueprint Style */
			@import url(http://fonts.googleapis.com/css?family=Lato:300,400,700);
			@font-face {
				font-family: 'fontawesome';
				src:url('../fonts/fontawesome.eot');
				src:url('../fonts/fontawesome.eot?#iefix') format('embedded-opentype'),
					url('../fonts/fontawesome.svg#fontawesome') format('svg'),
					url('../fonts/fontawesome.woff') format('woff'),
					url('../fonts/fontawesome.ttf') format('truetype');
				font-weight: normal;
				font-style: normal;
			}

			*, *:after, *:before { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }
			body, html { font-size: 100%; padding: 0; margin: 0;}

			/* Clearfix hack by Nicolas Gallagher: http://nicolasgallagher.com/micro-clearfix-hack/ */
			.clearfix:before, .clearfix:after { content: " "; display: table; }
			.clearfix:after { clear: both; }

			body {
			    font-family: 'Lato', Calibri, Arial, sans-serif;
			    color: #47a3da;
			}

			a {
				color: #f0f0f0;
				text-decoration: none;
			}

			a:hover {
				color: #000;
			}

			.main,
			.container > header {
				width: 95%;
				max-width: 69em;
				margin: 0 auto;
				padding: 0 1.875em 3.125em;
			}

			.container > header {
				padding: 2.875em 1.875em 1.875em;
			}

			.container > header h1 {
				font-size: 2.125em;
				line-height: 1.3;
				margin: 0;
				float: left;
				font-weight: 400;
			}

			.container > header span {
				display: block;
				font-weight: 700;
				text-transform: uppercase;
				letter-spacing: 0.5em;
				padding: 0 0 0.6em 0.1em;
			}

			.container > header nav {
				float: right;
			}

			.container > header nav a {
				display: block;
				float: left;
				position: relative;
				width: 2.5em;
				height: 2.5em;
				background: #fff;
				border-radius: 50%;
				color: transparent;
				margin: 0 0.1em;
				border: 4px solid #47a3da;
				text-indent: -8000px;
			}

			.container > header nav a:after {
				content: attr(data-info);
				color: #47a3da;
				position: absolute;
				width: 600%;
				top: 120%;
				text-align: right;
				right: 0;
				opacity: 0;
				pointer-events: none;
			}

			.container > header nav a:hover:after {
				opacity: 1;
			}

			.container > header nav a:hover {
				background: #47a3da;
			}

			.icon-drop:before, 
			.icon-arrow-left:before {
				font-family: 'fontawesome';
				position: absolute;
				top: 0;
				width: 100%;
				height: 100%;
				speak: none;
				font-style: normal;
				font-weight: normal;
				line-height: 2;
				text-align: center;
				color: #47a3da;
				-webkit-font-smoothing: antialiased;
				text-indent: 8000px;
				padding-left: 8px;
			}

			.container > header nav a:hover:before {
				color: #fff;
			}

			.icon-drop:before {
				content: "\e000";
			}

			.icon-arrow-left:before {
				content: "\f060";
			}
		</style>
		<!--投稿画面・TL投稿編集-->
		<div class="Toukou" style="width: 350px; height: 350px;">
			<form method='post' action='' style="width: 300px; height: 300px; ">		<!--formのJava参照パスを指定-->
				名前:<br><input type="text" name="name"  value=""><br>
				タイトル:<br><input type="text" name="name"  value=""><br>
			    本文:<br><textarea name="message" class="honbun" name="honbun" cols="30" rows="10" minlength="" wrap="hard" placeholder="300字以内で入力してください。"></textarea><br>
				<br><a class="button" input type="submit" href="#">つぶやく！</a>
			</form>
		</div>
	</div>

		<style>
			.Rog{	/* ーーータイムライン範囲指定ーーー */
			top: 100px;
			left: 2%;
			width: 50%;
			height: 500px;
			position: relative;
			margin: 0;
			}
		
			.Toukou{	/* ーーー投稿の範囲指定ーーー */
			top: 40%;
			left: 80%;
			float:left;
			position: absolute;
			margin: 0;
			}
			.button {
			  position: relative;
			  display: inline-block;
			  padding: .65em 4em;
			  border: 2px solid #333;
			  color: #333;
			  text-decoration: none;
			  text-align: center;
			  -webkit-transition: .3s ease-in-out;
			  transition: .3s ease-in-out;
			  margin: 0;
			}
			.button::after {
			  position: absolute;
			  top: 5px;
			  left: 5px;
			  z-index: -1;
			  content: '';
			  width: 101%;
			  height: 105%;
			  background-color: #fe5f95;
			  -webkit-transition: .3s ease-in-out;
			  transition: .3s ease-in-out;
			}
			.button:hover {
			  color: #fff;
			}
			.button:hover::after {
			  top: 0;
			  left: 0;
			  width: 100%;
			  height: 100%;
			}
		
		
		
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