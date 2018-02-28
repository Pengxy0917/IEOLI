<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<script type="text/javascript">
function sendmail(){
		//alert(obj.id+obj.name);
		//var id = obj.id;
		var aname  = document.getElementById("username").value;
		$.ajax({
			url:"SendMail",
			data:{username:aname},
			method:"post",
			//dataType:"json"
			success:function(result){
				alert("已发送");
			}
		});
	}
	
function check()
{
	var aname        = document.getElementById("username").value;
	var password     = document.getElementById("password").value;
	var repassword   = document.getElementById("repassword").value;
	var cod          = document.getElementById("code").value;
	if (password==repassword)
	{
	$.ajax({
			url:"Signup",
			data:{username:aname,code:cod,password:password},
			method:"post",
			//dataType:"json"
			success:function(result){
			if(result=="success")
			{
			window.location.href ="page?path=index";
			}else
			{
			alert("验证码错误");
			}
			}
		});
	}else
	{
	alert("请确认两次密码一致");
	}
}

</script>
    <div class="container">
        <div class="form row">    
        	<h3 class="form-title"align="center">注册</h3>
            <div class="form-horizontal col-md-offset-3" id="login_form" >
                <div class="col-md-9">
                	
                    <div class="form-group">
                    	<i class="fa fa-user fa-lg"></i><!--图标-->
                        <input class="form-control required" type="text" placeholder="请输入邮箱" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                          <button onclick="sendmail()" class="btn btn-success " name="submitf">发送验证码</button>
                    </div>
                                        <div class="form-group">
                    	<i class="fa fa-user fa-lg"></i><!--图标-->
                        <input class="form-control required" type="text" placeholder="请输入验证码" id="code" name="code" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                    	<i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="密码" id="password" name="password" maxlength="8"/>
                    </div>
                    <div class="form-group">
                    	<i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="再次输入密码" id="repassword" name="repassword" maxlength="8"/>
                    </div>
                    <div class="form-group col-md-offset-6"align="center">
                        <button onclick="check()"class="btn btn-success " name="submit">确认</button>
                    </div>
                  
                </div>
            </div>
        </div>
    </div>
</body>
</html>