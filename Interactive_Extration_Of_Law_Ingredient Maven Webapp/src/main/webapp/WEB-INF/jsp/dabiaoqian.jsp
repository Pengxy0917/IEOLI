<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>投放人员·打标签</title>

<link href="system-default.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--下拉复选框插件-->
<script type="text/javascript" src="bootstrap-multiselect-master/dist/js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="bootstrap-multiselect-master/dist/css/bootstrap-multiselect.css" type="text/css"/>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header"> <a class="navbar-brand" href="#">投放人员系统</a> </div>
    <div>
      <ul class="nav navbar-nav pull-right">
        <li><a>欢迎你，投放人员</a></li>
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> ${user.name}<b class="caret"></b> </a>
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
<div id="timeline" class="container-timeline">
  <div class="timeline-block">
    <div class="vertical-timeline-icon lazur-bg"> <i class="fa fa-user-md"
	</div>
  </div>
</div>
<!--标题栏-->
<div class="headline">
  <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
    
      <div class="composing" style="height: 40px;"></div>
    
		<table class="table">
			<thead>
				<tr>
					
					<th width="400px">文本</th>
					<th width="200px">标签</th>
					<th width="400px">确认</th>
					
				</tr>
			</thead>
			<tbody>
				
					<tr>
						<td>
							<div>
								<p>经_p</p>
							
							</div>	
						</td>
						<td>
							<input></input>	
						</td>
						
						<td>
							<button>确认</button>
						</td>
					</tr>
					
					<c:foreach items="${text}" var="word">
					<tr>
						<td>
							<div>
								<p>${text.word}</p>
							
							</div>	
						</td>
						<td>
							<input></input>	
						</td>
						
						<td>
							<button>确认</button>
						</td>
					</tr>
				</c:foreach>
				
				
				
					
								
			</tbody>
		
		</table>
      
      
         <a shape="poly">经</a><a>审查</a><a>查明</a><a>：</a><a>，</a><a>2015年</a>
         <c:foreach><a>${text.word}</a></c:foreach>
         
  	
  	
  	<a id="topdaohang" target="_blank" >标签</a>  
            <div class="header-top-right">  
                    <script type="text/javascript">  
  
                    $(function (){   
                        var ulstring="<ul id='sss' style='width:300px;top: 100px;'>"  
                            +"<input></input>"  
					        +"<button></button>"
                            +"</ul>";  
                        $("#topdaohang").popover({   
                            trigger:'manual',//manual 触发方式  
                            placement : 'bottom',    
                            title:'<div style="text-align:left; color:gray; font-size:12px;">用户名称</div>',  
                            html: 'true',   
                            content : ulstring,  //这里可以直接写字符串，也可以 是一个函数，该函数返回一个字符串；  
                            animation: false  
                        }) .on("mouseenter", function () {  
                                    var _this = this;  
                                    $(this).popover("show");  
                                    $(this).siblings(".popover").on("mouseleave", function () {  
                                        $(_this).popover('hide');  
                                    });  
                                }).on("mouseleave", function () {  
                                    var _this = this;  
                                    setTimeout(function () {  
                                        if (!$(".popover:hover").length) {  
                                            $(_this).popover("hide")  
                                        }  
                                    }, 100);  
                                    });    
                    });  
                   </script>  
                    
            </div>  
  	
  
    </div>
    <div class="col-md-2"></div>
  </div>
</div>
<!--选择模型类型-->

</body>
<script type="text/javascript">
    $('#select-single').multiselect();
	
	$(function (){
    $("[data-toggle='popover']").popover();
});
</script>
</html>