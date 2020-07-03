<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	    label {
	        display: inline-block;
	        width: 140px;
	    }
	    input[type="text"]{
	        height: 25px;
	        margin: 10px 0;
	    }
	    button {
	        width: 140px;
	        height: 30px;
	        margin: 20px 0;
    	}
	</style>
</head>
<body>
    <h1>전화번호 수정</h1>
    <p>아래 항목을 기입하고 "수정" 버튼을 클릭하세요.</p>
    <form action="${pageContext.request.contextPath }/phone/update" method="get">
        <label>이름(name)</label><input type="text" name="name" value="${persVo.name }"><br>
        <label>핸드폰(hp)</label><input type="text" name="hp" value="${persVo.hp }"><br>
        <label>회사(company)</label><input type="text" name="company" value="${persVo.company }"><br>
        <input type="hidden" name="personId" value="${persVo.personId}">
        <button type="submit">수정</button>
    </form>
    <a href="./list">리스트 바로가기</a>
</body>
</html>