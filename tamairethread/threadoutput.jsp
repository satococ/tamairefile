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
							<li><a href="index.jsp">Return TOP</a></li>
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
		
		<!--投稿画面のタイムライン-->
		<div class="Rog" style="padding: 10px 10px 10px 10px;background-color:#000000;">
			<h2>スレッド一覧</h2>
	<table border="1">
		<tr><th>スレッド名</th><th>最終更新</th><th>見出し</th><th>閲覧数</th><th>URL</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.name}</td><td>${prof.update}</td><td>${prof.description}</td><td>${prof.count}</td><td><a href="/tama/tamaire?rno=${prof.threadid}">konitiha</a></td></tr>
		</c:forEach>
	</table>
		</div>
		<!--投稿画面・TL投稿編集-->
		<div class="Toukou" style="width: 350px; height: 350px;">
			<form method='post' action='Create'>
	スレッド名<input type='text' name='threadname'>
	<br>
	スレッド見出し<input type='text' name='description'>
	<br>
	ユーザー名<input type='text' name='username'>
	<br>
	タイトル<input type='text' name='title'>
	<br>
	本文<input type='text' name='text'>
	<br>
	<select name="theme">
	<option value=0>スポーツ</option>
	<option value=1>悩み・相談</option>
	<option value=2>料理・グルメ</option>
	<option value=3>旅行・観光</option>
	<option value=4>ゲーム</option>
	<option value=5>動物・自然</option>
	</select>
	<input type='submit' value='作成'>
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
			top: 45%;
			left: 55%;
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