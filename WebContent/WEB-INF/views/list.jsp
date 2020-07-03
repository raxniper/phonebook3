<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    table {
        width: 500px;
        border: 1px solid black;
        border-collapse: collapse;
    }
    table tr td {
        border : 1px solid black;
        padding: 10px;
    }
</style>
</head>
<body>
<h1>전화번호 리스트</h1>
    <p>입력한 정보 내역입니다.</p>
    ${pageContext.request.contextPath }
    

    <c:forEach items="${pList }" var="personVo" varStatus="status">
  	
    <table>
        <colgroup>
            <col width="40%">
            <col width="60%">
        </colgroup>
        <tbody>
            <tr>
                <td>이름(name)</td>
                <td>${personVo.name }</td>
            </tr>
            <tr>
                <td>핸드폰(hp)</td>
                <td>${personVo.hp }</td>
            </tr>
            <tr>
                <td>회사번호(company)</td>
                <td>${personVo.company }</td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath }/phone/updateForm?personId=${personVo.personId }&name=${personVo.name}&hp=${personVo.hp}&company=${personVo.company}">수정</a></td>
                <td><a href="${pageContext.request.contextPath }/phone/delete?personId=${personVo.personId }">삭제</a></td>
            </tr>
        </tbody>
    </table>
    <br>
    </c:forEach>
    <p>
    	<a href="${pageContext.request.contextPath }/phone/writeForm">추가번호 등록</a>
   	</p>
   	<!-- http://localhost:8088/pb2/pbc?action=list -->
</body>
</html>