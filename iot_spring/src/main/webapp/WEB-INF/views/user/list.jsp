<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="container">
	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<thead>
		</br>
		</br>
			<tr>
				<th data-field="userId" class="text-center">아이디</th>
				<th data-field="userName" class="text-center">이름</th>
				<th data-field="age" class="text-center">나이</th>
				<th data-field="address" class="text-center">주소</th>
				<th data-field="userRoleLevel" class="text-center">등급</th>
			</tr>
		</thead>
		<tbody id="userDiv">
		</tbody>
	</table>
</div>
<div class="jb-center" style="text-align: center">
	<ul class="pagination" id="page">
	</ul>
</div>
<script>
function callback(results) {
// 	$('#table').bootstrapTable(results);
	var userList = results.userList;
	var resultStr = "";
	for(var i=0, max=userList.length;i<max;i++){
		var user = userList[i];
		resultStr += "<tr data-view='" + user.userNum + "'>";
			resultStr +="<td class='text-center'>" + user.userId + "</td>";
			resultStr +="<td class='text-center'>" + user.userName + "</td>";
			resultStr +="<td class='text-center'>" + user.age + "</td>";
			resultStr +="<td class='text-center'>" + user.address + "</td>";
			resultStr +="<td class='text-center'>" + user.userRoleLevel + "</td>";
			resultStr +="</tr>";
	}
	$("#userDiv").html(resultStr);
}
	$(document).ready(function(){
		var params = {};
		movePageWithAjax(params, "${pageContext.request.contextPath}/user/list", callback);
		
// 		param["userName"] = "레드";
		
// 		var a = { 
// 		        type     : "POST"
// 		    	    ,   url      : "${pageContext.request.contextPath}/user/list"
// 		    	    ,   dataType : "json" 
// 		    	    ,   beforeSend: function(xhr) {
// 		    	        xhr.setRequestHeader("Accept", "application/json");
// 		    	        xhr.setRequestHeader("Content-Type", "application/json");             
// 		    	    }
// 		    	    ,   data     : param
// 		    	    ,   success : function(result){
// 		    	    	$('#table').bootstrapTable(result);
// 		    	    	var userList = result.userList;
// 		    	    	var resultStr = "";
// 		    	    	for(var i=0, max=userList.length;i<max;i++){
// 		    	    		var user = userList[i];
// 		    	    		resultStr += "<tr data-view='" + user.userNum + "'>";
// 							resultStr +="<td class='text-center'>" + user.userId + "</td>";
// 							resultStr +="<td class='text-center'>" + user.userName + "</td>";
// 							resultStr +="<td class='text-center'>" + user.age + "</td>";
// 							resultStr +="<td class='text-center'>" + user.address + "</td>";
// 							resultStr +="<td class='text-center'>" + user.userRoleLevel + "</td>";
// 							resultStr +="</tr>";
// 		    	    	}
// 		    	    	$("#userDiv").html(resultStr);
// 		    	    }
// 		    	    ,   error : function(xhr, status, e) {
// 		    		    	alert("에러 : "+e);
// 		    		},
// 		    		done : function(e) {
// 		    		}
// 		    		};
// 		$.ajax(a);
	})
</script>
<body>
<div id="userDiv">
</div>
</body>
</html>