<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-view"> 
<br>
<br>
<br>
<br>
		<table id="table"  data-height="460"	class="table table-bordered table-hover">
		<thead> 
			<tr> 
				<th colspan="2" class="text-center"><h5 class="form-signin-heading">유저 등록 페이지</h5></th>
			</tr>
			<tr>
				<td class="col-md-2">이름</td>
				<td class="col-md-4"><input type="text" name="userName" id="userName"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age" id="age"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userId" id="userId"></td>
			</tr>
			<tr>
				<td>비번</td>
				<td><input type="text" name="userPwd" id="userPwd"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" id="address"></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td colspan="1"><input type="text" name="hp1" id="hp1" size="5"><input type="text" name="hp2" id="hp2" size="5"><input type="text" name="hp3" id="hp3" size="5"></td>
			</tr>
			<tr>
				<td>유저레벨</td>
				<td><input type="text" name="userRoleLevel" id="userRoleLevel"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="text" name=gender id="gender"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button id="btnInsert" class="btn btn-primary" 	type="button">유저등록</button>
					<button id="goList" class="btn" 	type="button">취소</button>
				</td>
			</tr>
		</table>
	</div>
	<!-- /container -->

<script>
$("#btnInsert").click(function(){
	var params = {};
	params["userName"] = $("#userName").val();
	params["age"] = $("#age").val();
	params["userId"] = $("#userId").val();
	params["userPwd"] = $("#userPwd").val();
	params["address"] = $("#address").val();
	params["hp1"] = $("#hp1").val();
	params["hp2"] = $("#hp2").val();
	params["hp3"] = $("#hp3").val();
	params["userRoleLevel"] = $("#userRoleLevel").val();
	params["gender"] = $("#gender").val();
	movePageWithAjax(params, "${pageContext.request.contextPath}/user/insert" , callbackInsert);
})
</script>
</body>
</html>