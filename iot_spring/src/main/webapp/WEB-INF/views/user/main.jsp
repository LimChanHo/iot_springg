<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>Main</title>
</head>
<script>
$(document).ready(function(){
	$("input[type='button']").click(function(){
		var url = this.getAttribute("data-url");
		if(url){
			location.href=url;
		}
	})
})
</script>
<div class="container">
      <div class="starter-template">
        <h1>메인 화면</h1>
        <p class="lead">이거슨 메인 화면입니다.</p>
      </div> 
    </div><!-- /.container -->
</html>