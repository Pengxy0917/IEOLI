<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    <title>标注人员·挑选文本类型</title>
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
        <a class="navbar-brand" href="#">标注人员系统</a>
    </div>
    
    <div>
        <ul class="nav navbar-nav pull-right">
           <li><a>欢迎你，${username }</a></li>
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">选项 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu pull-left">
                    <li class="divider"></li>
                    <li><a href="index.action">退出登录</a></li>
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
     		<h3>挑选类型&nbsp;&nbsp;查看规则 </h3>
    			<div class="composing" style="height: 40px;"></div>
     		  <div class="model-class">
     		  	
<!--折叠-->  
<p>查看规则</p>   		
<div class="panel-group" id="accordion">	
    <div class="panel panel-default">
        <c:forEach items="${list}" var="model">
                       <div class="col-xs-6 col-md-3">
						<div class="thumbnail">
							<div class="caption" align="center">
								<p id="modelid" name="userID">序号:${model.modelid}</p>
								<p id="modeldescription">介绍：${model.modeldescription}</p>
								<p align="center">
								    <a href="setTask?models=${ model.modelid}" target="_blank" class="btn btn-info" role="button">选择</a>
									
								</p>
							</div>
						</div>
					</div>
                    </c:forEach>
    </div>
    

    </div>
</div> 	


	</body>
</html>
 