<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- name=유재석&hp=010-2222-2222&company=02-2222-2222 -->
    <h1>전화번호 등록</h1>
    <p>아래 항목을 기입하고 "등록" 버튼을 클릭하세요.</p>
    <form action="/phonebook3/phone/write" method="get">	<!-- method="get" : 주소창 데이터 보임 "post"는 데이터 숨김 -->
        <label>이름(name)</label><input type="text" name="name" value=""><br>
        <label>핸드폰(hp)</label><input type="text" name="hp" value=""><br>
        <label>회사(company)</label><input type="text" name="company" value=""><br>
        <button type="submit">등록</button>
    </form>
    <a href="./List.jsp">리스트 바로가기</a>
</body>
</html>