
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@include file="/Top.jsp" %>
<head>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 40px;
	color: #333;
}

h2 form{
	color: #444;
	text-align: center;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 50%;
	margin: auto;
}

label {
	display: block;
	margin: 10px 0 5px;
}

input[type="text"], input[type="date"], input[type="number"], textarea,
	select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	/* Adds padding and border to element's total width and height */
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #5C67F2;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #4a54e1;
}

.grade-container {
	display: flex; /* Flexbox 레이아웃 적용 */
	align-items: center; /* 세로 중앙 정렬 */
}

.grade-option {
	margin-right: 10px; /* 각 옵션 사이의 간격 */
}

label {
	margin-right: 5px; /* 라벨과 라디오 버튼 사이의 간격 */
}

.radio-group {
	margin-bottom: 10px;
}

.radio-option {
	display: inline-block; /* 라디오 버튼과 라벨을 가로로 배열 */
	margin-right: 15px; /* 각 라디오 버튼 옵션 사이의 간격 */
}

label {
	margin-right: 5px; /* 라벨과 라디오 버튼 사이의 간격 */
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" async=""
	src="https://linkback.contentsfeed.com/src/20240510/lb4ssg.min.js"
	charset="utf-8"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-E0P8DK53C8&amp;l=GA4_dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-704173742&amp;l=dataLayer&amp;cx=c"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" type="image/x-icon"
	href="//sui.ssgcdn.com/ui/common/img/ssg.ico">
<link rel="image_src" href="//sui.ssgcdn.com/ui/common/img/sns/ssg.png">
<title class="notranslate">${product.pdName}, 믿고
	사는 즐거움 SSG.COM</title>
<meta name="title"
	content="시몽 테르미크 150ml [No.1 헤어에센스-손상모발용], 믿고 사는 즐거움 SSG.COM">
<meta name="description"
	content="믿고 살 수 있는 SSG.COM에서 자세한 상품 정보를 확인해보세요.">
<meta name="google-site-verification"
	content="riDJ-IX46HanskLx25pj6-y8ANf2qTgZNfv_UJvkHq8">
<meta name="facebook-domain-verification"
	content="ctgl43lmqq8gm4thxgg7j3b38sfqau">
<link rel="canonical"
	href="https://www.ssg.com/item/itemView.ssg?itemId=1000026532717">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.ssg.com/item/itemView.ssg?itemId=1000026532717">
<link rel="preload"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240508" as="style">
<link rel="preload"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240508" as="style">
<link rel="preload"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240508"
	as="style">
<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_global.css?v=20240508">
<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20240508">
<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/scom.css?v=20240508">
<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/ssg_component.css?v=20240508">

<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/com_component.css?v=20240508">
<link rel="stylesheet" type="text/css"
	href="https://sui.ssgcdn.com/ui/m_ssg/css/ssg_component.css?v=20240508">
<link rel="stylesheet" type="text/css"
	href="//sui.ssgcdn.com/ui/ssg/css/ssgday_2023.css?v=20240508">

<script async=""
	src="https://www.datadoghq-browser-agent.com/datadog-rum-v4.js"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/4.6/braze.min.js" async=""></script>

<script type="text/javascript"
	src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="//sui.ssgcdn.com/ui/ssg/js/lib/jquery.cookie.min.js"></script>
<meta charset="UTF-8">
<title>리뷰 등록</title>
</head>
<body>
	<c:forEach var="option" items="${productoption}">
		<c:if test="${option.optionRef != null}">
			<c:set var="allNull" value="false" />
			<c:set var="nonNull" value="true" />
		</c:if>
	</c:forEach>



	<h1>리뷰 등록</h1>
	<form action="WriteReview.do" method="post" enctype="multipart/form-data">
		<div>
			<label for="productId">제품 ID:</label> <input type="text"
				id="productId" name="productId" value="${product.id}"
				readonly="readonly">
		</div>
		<div>
			<label for="memid">회원 ID:</label> <input type="text" id="memid"
				name="memid" required>
		</div>

		<div>
			<label for="productOptionId">제품 옵션 ID (선택):</label> <select
				id="productOptionId" name="productOptionId">
				<c:choose>
					<c:when test="nonNull">
						<c:forEach var="option" items="${productoption}">
							<c:if test=" ${!empty option.optionRef }">
								<option value="${option.id}">${option.optionName}</option>
							</c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="option" items="${productoption}">
							<option value="${option.id}">${option.optionName}</option>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</select>
		</div>
		<div>
			<label for="reviewContent">리뷰 내용:</label>
			<textarea id="reviewContent" name="reviewContent" rows="4" cols="50"
				required></textarea>
		</div>
		<div>
			<label for="reviewType">리뷰 타입:</label> <select id="reviewType"
				name="reviewType">
				<option>일반</option>
				<option>포토</option>
				<option>동영상</option>
			</select>
		</div>
		<div>
			<label for="reviewImg">리뷰 이미지:</label>
			<input type="file" id="reviewImg" name="reviewImg" accept="image/*,video/*" multiple="multiple">
		</div> 
		<div>
			<div>
				<label>평점:</label>
				<div class="grade-container">
					<div class="grade-option">
						<input type="radio" id="grade1" name="grade" value="1" required>
						<label for="grade1">1</label>
					</div>
					<div class="grade-option">
						<input type="radio" id="grade2" name="grade" value="2"> <label
							for="grade2">2</label>
					</div>
					<div class="grade-option">
						<input type="radio" id="grade3" name="grade" value="3"> <label
							for="grade3">3</label>
					</div>
					<div class="grade-option">
						<input type="radio" id="grade4" name="grade" value="4"> <label
							for="grade4">4</label>
					</div>
					<div class="grade-option">
						<input type="radio" id="grade5" name="grade" value="5"> <label
							for="grade5">5</label>
					</div>
				</div>
			</div>
		</div>
		<div>
			<label>만족도:</label>
			<div class="radio-group">
				<div class="radio-option">
					<input type="radio" id="q1-1" name="q1" value="1" required>
					<label for="q1-1">1</label>
				</div>
				<div class="radio-option">
					<input type="radio" id="q1-2" name="q1" value="2"> <label
						for="q1-2">2</label>
				</div>
				<div class="radio-option">
					<input type="radio" id="q1-3" name="q1" value="3"> <label
						for="q1-3">3</label>
				</div>
			</div>
		</div>
		<div>
			<div>
				<label>가격:</label>
				<div class="radio-group">
					<div class="radio-option">
						<input type="radio" id="q2-1" name="q2" value="1" required>
						<label for="q2-1">1</label>
					</div>
					<div class="radio-option">
						<input type="radio" id="q2-2" name="q2" value="2"> <label
							for="q2-2">2</label>
					</div>
					<div class="radio-option">
						<input type="radio" id="q2-3" name="q2" value="3"> <label
							for="q2-3">3</label>
					</div>
				</div>
			</div>

			<div>
				<label>재구매:</label>
				<div class="radio-group">
					<div class="radio-option">
						<input type="radio" id="q3-1" name="q3" value="1" required>
						<label for="q3-1">1</label>
					</div>
					<div class="radio-option">
						<input type="radio" id="q3-2" name="q3" value="2"> <label
							for="q3-2">2</label>
					</div>
					<div class="radio-option">
						<input type="radio" id="q3-3" name="q3" value="3"> <label
							for="q3-3">3</label>
					</div>
				</div>
			</div>

			<input type="submit" value="리뷰 등록">
		</div>
	</form>
	
	<c:if test="${success}">
		<script type="text/javascript">
			alert("리뷰 등록 성공");
			window.close();
		</script>
	</c:if>
</body>
</html>
