<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<br>
<br>
<br>
<br>
<br>
<div class="container">
	<table id="table" data-height="460" style="padding-top:20px;"
		class="table table-bordered table-hover">
		<thead>
			<tr>
				<th class="text-center">아이디</th>
				<th class="text-center">이름</th>
				<th class="text-center">나이</th>
				<th class="text-center">성별</th>
				<th class="text-center">주소</th>
				<th class="text-center">전화번호</th>
				<th class="text-center">부서명</th>
				<th class="text-center">권한레벨</th>
			</tr>
		</thead>
		<tbody id="result_tbody">
		</tbody>
	</table>
	<div class="container" style="text-align: center;"> 
		<label>이름 : </label> <input type="text" id="userName" /> 
		<input type="button" id="searchUser" value="검색" />
	<button id="btnInsert" class="btn btn-primary"  type="button">회원등록</button>
	</div>
</div>
<script>

$("#btnInsert").click(function(){
	location.href="/sp/user/insert";
})

$("#searchUser").click(function() {
	var userName = $("#userName").val().trim(); //trim() 공백을 없애줌
	alert(userName)
	if(userName==""){
		alert("유저 이름을 입력해주세요.");
		return;
	}
	var params = {};
	if(userName!=""){
		params["userName"]=userName;
	}
	movePageWithAjax(params, "${pageContext.request.contextPath}/user/list", callback);
})


function callback(results) {
	var userList = results.userList;
	var resultStr = "";
	for(var i=0, max=userList.length;i<max;i++){
		var user = userList[i];
		resultStr += "<tr data-view='" + user.userNum + "'>";
		resultStr +="<td class='text-center'>" + user.userId + "</td>";
		resultStr +="<td class='text-center'>" + user.userName + "</td>";
		resultStr +="<td class='text-center'>" + user.age + "</td>";
		resultStr +="<td class='text-center'>" + user.gender + "</td>";
		resultStr +="<td class='text-center'>" + user.address + "</td>";
		resultStr +="<td class='text-center'>" + user.hp1 + "-" + user.hp2 +  "-" + user.hp3 + "</td>";
		resultStr +="<td class='text-center'>" + user.departNum + "</td>";
		resultStr +="<td class='text-center'>" + user.userRoleLevel + "</td>";
		resultStr +="</tr>";
	}
	$("#result_tbody").html(resultStr);
}

	$(document).ready(function(){
		var params = {};
// 		param["userName"] = $("#userName").val();
		movePageWithAjax(params, "${pageContext.request.contextPath}/user/list", callback);
	})
</script>
</body>
</html>