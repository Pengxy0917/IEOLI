<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>投放人员·下载模型</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="system-default.css">
	
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!--下拉复选框插件-->
	<script type="text/javascript" src="bootstrap-multiselect-master/dist/js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="bootstrap-multiselect-master/dist/css/bootstrap-multiselect.css" type="text/css"/>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">投放人员系统</a>
    </div>
    <div>
        <ul class="nav navbar-nav pull-right">
           <li><a>欢迎你，投放人员</a></li>
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    ${user.name}<b class="caret"></b>
                </a>
                <ul class="dropdown-menu pull-left">
                    <li><a href="userInformation?userID=${user.userid }">查看我的信息</a></li>
                    <li><a href="#"></a></li>
                    <li class="divider"></li>
                    <li><a href="userChangeInformation?userID=${user.userid }">修改我的信息</a></li>
                    <li class="divider"></li>
                    <li><a href="#">退出登录</a></li>
                </ul>
            </li>
        </ul>
    </div>
	</div>
</nav>

<!--标题栏-->
     <div class="headline">
     <div class="row">
     	<div class="col-md-2"></div>
     	<div class="col-md-8">
     	<div style="margin:20px">
     		<table align="center" width="960px">
     		<tr>
				<td align="center"><p><font face="幼圆" size="+2" color=#9A9A9A style="font-weight:bold">上传模型</font></p></td>
								<td align="center" valign="top"><img src="./img/1.png"/></td>
				<td align="center"><p><font face="幼圆" size="+2" color=#9A9A9A style="font-weight: bolder">查看/修改模型</font></p></td>
								<td align="center" valign="top"><img src="./img/2.png"/></td>
				<td align="center"><p><font face="幼圆" size="+2" style="font-weight: bold">查看/下载</font></p></td>
     		</tr>
     		</table>
     		</div>
     		
     		<div style="margin: 40px">
     <form role="form">
  <div class="form-group">
    <label for="name" style="font-size: 20px">选择文本模型</label>
    
    <div class="form-group" style="margin: 30px">    
     <table align="center" width="960px">
     		<tr>
				<td align="center"><label class="radio-inline">
        <input type="radio" value="option1" name="sex" >模型1
      </label></td>
				<td align="center" valign="top"><label class="radio-inline">
        <input type="radio" value="option2" name="sex">模型2
      </label></td>
				<td align="center"><label class="radio-inline">
        <input type="radio" value="option3" name="sex">模型3
      </label></td>
			
     		</tr>
     		</table>
    </div>
    
      <div class="form-group" style="margin: 30px">    
      <label for="name" style="font-size:20px;"  >下载</label>
     
<div>
		<table class="table">
			<thead>
				<tr>
					
					<th width="400px">文件名</th>
					<th width="200px">文件大小</th>
					<th width="400px">操作</th>
					
				</tr>
			</thead>
			<tbody>
				
					<tr>
						<td>
							<div>
								<a href="#nowhere" >XXXXXXXXXXXXXXXXXXXXXXXXXXX</a>
							
							</div>	
						</td>
						<td>
							<span >1024KB</span>	
						</td>
						
						<td>
							<a href="#nowhere">下载</a>
						</td>
					</tr>
					
					<c:foreach items="${list}" var="file">
					<tr>
						<td>
							<div>
								<a href="#nowhere" >${file.name}</a>
							
							</div>	
						</td>
						<td>
							<span >${file.size}</span>	
						</td>
						
						<td>
							<a href="#nowhere">下载</a>
						</td>
					</tr>
				</c:foreach>
				
					
								
			</tbody>
		
		</table>
	</div>
    
    </div>
    
  </div>

  <button type="submit" class="btn btn-default">完成</button>
</form>
   			</div>
    			
     </div>
     <div class="col-md-2"></div>
     </div>
  <!--选择模型类型-->

</body>
<script type="text/javascript">
    $('#select-single').multiselect();
</script>
</html>