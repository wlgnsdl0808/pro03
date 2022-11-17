<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<style>
.table { min-width:960px; }
#visuall { display:block; background-image:url("${path0 }/data/visual/visual_img1.jpg");
background-size:100% auto; background-repeat:no-repeat; width: 100%; height: 940px; }
#visual2 { display:block; background-image:url("${path0 }/data/visual/visual_img2.jpg");
background-size:100% auto; background-repeat:no-repeat; width: 100%; height: 940px; }
#visual3 { display:block; background-image:url("${path0 }/data/visual/visual_img3.jpg");
background-size:100% auto; background-repeat:no-repeat; width: 100%; height: 940px; }
#visual4 { display:block; background-image:url("${path0 }/data/visual/visual_img4.jpg");
background-size:100% auto; background-repeat:no-repeat; width: 100%; height: 940px; }
#nav { border-bottom:3px solid #ddd; }
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>