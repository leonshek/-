<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hongten</title>
</head>
<body>
  用户名：
  <input type="text" id="userName" name="userName" />
  <br /> 内容：
  <input type="text" id="content" name="content" />
  <br />
  <button id="sub">submit</button>
  <br />
  <hr />
  <div id="show_userName"></div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.0.min.js" charset="UTF-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#sub").click(function(){
    	var name = $("#userName").val();
    	var content =$("#content").val();
    	if(name != "" && name != null ){
    		$("#show_userName").html("<font color='red'>"+name+"</font>,你好，你输入的内容是：[<font color='green'>"+content+"]</font>");	
    	}else{
    		$("#show_userName").html("用户名不能为空!");
    		$("#userName").select();
    		$("#userName").focus();
    	}
    	
    });
});
</script>
</html>