
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

<head>
   <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 40px;
            color: #333;
        }
        h2 {
            color: #444;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 500px;
            margin: auto;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Adds padding and border to element's total width and height */
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
    </style>
    <meta charset="UTF-8">
    <title>리뷰 등록</title>
</head>
<body>
    <h2>리뷰 등록</h2>
    <form action="submitReview.jsp" method="post" enctype="multipart/form-data">
        <div>
            <label for="productId">제품 ID:</label>
            <input type="text" id="productId" name="productId" required>
        </div>
        <div>
            <label for="memid">회원 ID:</label>
            <input type="text" id="memid" name="memid" required>
        </div>
        <div>
            <label for="productOptionId">제품 옵션 ID (선택):</label>
            <input type="text" id="productOptionId" name="productOptionId">
        </div>
        <div>
            <label for="reviewContent">리뷰 내용:</label>
            <textarea id="reviewContent" name="reviewContent" rows="4" cols="50" required></textarea>
        </div>
        <div>
            <label for="reviewDate">리뷰 날짜:</label>
            <input type="date" id="reviewDate" name="reviewDate" required>
        </div>
        <div>
            <label for="reviewType">리뷰 타입:</label>
            <input type="text" id="reviewType" name="reviewType" required>
        </div>
        <div>
            <label for="grade">평점 </label>
            <input type="number" id="grade" name="grade" step="1" required>
        </div>
        <div>
            <label for="q1">만족도 </label>
            <input type="number" id="q1" name="q1" >
        </div>
        <div>
            <label for="q2">가격 </label>
            <input type="number" id="q2" name="q2">
        </div>
        <div>
            <label for="q3">재구매 </label>
            <input type="number" id="q3" name="q3">
        </div>
        <div>
            <label for="reviewImgUrl">리뷰 이미지 URL:</label>
            <input type="text" id="reviewImgUrl" name="reviewImgUrl">
        </div>
        <div>
            <input type="submit" value="리뷰 등록">
        </div>
    </form>
</body>

<script type="text/javascript">
	
</script>
</html>
