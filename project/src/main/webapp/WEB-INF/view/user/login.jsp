<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">
    <meta name="format-detection" content="telephone=no, address=no, email=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>로그인</title>
    <%@ include file="/WEB-INF/view/include/head.jsp" %>
    <!-- 
    <jsp:include page="/WEB-INF/view/include/head.jsp"/>
    <c:import url="/WEB-INF/view/include/head.jsp"/>
     -->
     <script>
     function loginCheck() {
    	 if ($("#id").val().trim() == "") {
    		 alert("아이디를 입력해 주세요");
    		 $("#id").focus();
    		 return false;
    	 }
    	 if ($("#pwd").val().trim() == "") {
    		 alert("비밀번호를 입력해 주세요");
    		 $("#pwd").focus();
    		 return false;
    	 }
     }
     </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/top.jsp" %>
        <form action="login.do" method="post" id="board1" name="board1" onsubmit="return loginCheck();"><!-- header에서 id="board"이미 사용중이라서 board2로 함 -->
        <input type="hidden" name="url" value="${param.url}">
            <div class="sub">
                <div class="size">
                    <h3 class="sub_title">로그인</h3>
                    
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul>
                                    <li><input type="text" id="id" name="id" placeholder="아이디" value="${userVo.id}"></li>
                                    <li><input type="password" id="pwd" name="pwd" placeholder="비밀번호"></li>
                                    <li><label><input type="checkbox" name="checkId" id="reg1" value="check" <c:if test="${!empty userVo.id}">checked</c:if>/> 아이디저장</label></li>
                                </ul>
                                <div class="login_btn"><input type="submit" value="로그인" alt="로그인" /></div>
                            </fieldset>
                            <div class="btnSet clear">
                                <div>
                                    <a href="join.do" class="btn">회원가입</a> 
                                    <a href="searchId.do" class="btn">이메일/비밀번호 찾기</a>
                                </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
            </form>
        <%@ include file="/WEB-INF/view/include/bottom.jsp" %>
    </div>
</body>
</html>