<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
</style>
<c:set var="path2" value="${pageContext.request.contextPath }" />  
<nav class="navbar" role="navigation" aria-label="main navigation" id="nav">
  <div class="navbar-brand">
    <a class="navbar-item" id="logo" href="${path2 }">
    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
    <div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link">
		      	김포여행
		    </a>
		    <div class="navbar-dropdown">
		      <a class="navbar-item">
		        	김포길
		      </a>
		      <a class="navbar-item">
		        	레포츠
		      </a>
		      <a class="navbar-item">
		        	체험
		      </a>
		    </div>
	  	</div>
	  	<div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link">
		      	관광지
		    </a>
		    <div class="navbar-dropdown">
		      <a class="navbar-item">
		        	전체
		      </a>
		      <a class="navbar-item">
		        	숲.길
		      </a>
		      <a class="navbar-item">
		        	캠핑장
		      </a>
		    </div>
	  	</div>
	  	<div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link">
		      	문화유산
		    </a>
		    <div class="navbar-dropdown">
		      <a class="navbar-item">
		        	전체
		      </a>
		      <a class="navbar-item">
		        	국가지정문화재
		      </a>
		      <a class="navbar-item">
		        	김포 역사
		      </a>
		    </div>
	  	</div>
	  	<div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link">
		      	축제.행사
		    </a>
		    <div class="navbar-dropdown">
		      <a class="navbar-item">
		        	전체
		      </a>
		      <a class="navbar-item">
		        	상반기
		      </a>
		      <a class="navbar-item">
		        	하반기
		      </a>  
		    </div>
	  	</div>
		<div class="navbar-item has-dropdown is-hoverable">
	    	<a class="navbar-link">
		      	여행필수정보
		    </a>
			<div class="navbar-dropdown">
			     <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
			       	공지사항
			     </a>
		    </div> 
		</div>
	</div>
	
	<div class="navbar-end">
	  <div class="navbar-item">
	  	<c:if test="${empty sid }">
	 <div class="buttons">
	 <a href="${path2 }/user/login.jsp" class="button is-primary">
	     <strong>로그인</strong>
	   </a>
	   <a href="${path2 }/user/agree.jsp" class="button is-primary">
	     <strong>회원가입</strong>
	   </a>
	 </div>
	</c:if>
	<c:if test="${not empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/UserInfoCtrl.do" class="button is-primary">
	     <strong>회원 정보 수정</strong>
	   </a>
	   <a href="${path2 }/UserLogoutCtrl.do" class="button is-primary">
	   	로그아웃
	   </a>
		<c:if test='${sid.equals("admin")}'>
		   <a href="${path2 }/AdminCtrl.do" class="button is-danger">
		     <strong>관리자 페이지</strong>
		   </a>
		 </c:if>
	 </div>
	</c:if>
  </div>
</div>
  </div>
</nav>