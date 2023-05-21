<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/question.css">

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.6.4.js"></script>
<style type="text/css">
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:check{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
/* #myform label:hover ~ label{ */
/*     text-shadow: 0 0 0 rgba(250, 208, 0, 0.99); */
/* } */
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}

</style>

</head>
<body>
	
		<c:if test="${empty user_id }" >
			<c:redirect url="./MemberLogin.foo"/>
		</c:if>
		<h1>${dto.rest_name }</h1>
		<form action="./ReviewWriteAction.foo" method="post" id="myform">
			<fieldset>
				<span class="text-bold">별점을 선택해주세요</span>
				<input type="radio" name="grade" value="5" id="rate1"><label
					for="rate1">★</label>
				<input type="radio" name="grade" value="4" id="rate2"><label
					for="rate2">★</label>
				<input type="radio" name="grade" value="3" id="rate3"><label
					for="rate3">★</label>
				<input type="radio" name="grade" value="2" id="rate4"><label
					for="rate4">★</label>
				<input type="radio" name="grade" value="1" id="rate5"><label
					for="rate5">★</label>
			</fieldset>
			<div>
				<textarea class="col-auto form-control" type="text" name="content" id="reviewContents"></textarea>
			</div>
				<input type="hidden" name="wait_num" value="${dto.wait_num }">
				<input type="hidden" name="rest_id" value="${dto.rest_id }">
				<br><button class="btn-2">리뷰 작성</button>
		</form>
	
</body>
</html>