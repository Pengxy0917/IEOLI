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
	<script type="text/javascript">
	
    //回车事件
	document.onkeydown=keyListener;
   function keyListener(e){
    if(e.keyCode == 13){
     revise();
    }
   }
	
	function revise(btn,shuru){
		//alert(obj.id+obj.name);
		//var id = obj.id	
	document.getElementById(btn).style.backgroundColor="#32CD32";
	document.getElementById(btn).textContent=document.getElementById(btn).textContent+"&"+document.getElementById(shuru).value; 
		
	};
		function tijiao(){
		//alert(obj.id+obj.name);
		//var id = obj.id	
          var list=document.getElementsByTagName("button").textContent;
			
			$.ajax({
				url:"#",
				data:{list:list},
				method:"post",
				//dataType:"json"
				success:function(result){
					
						alert("提交成功");
		
					
				}
			});
		
	};
		
		
	
	</script>
	</head>
	<body>
<nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid">
    <div class="navbar-header"> <a class="navbar-brand" href="#">标注人员系统</a> </div>
    <div>
          <ul class="nav navbar-nav pull-right">
        <li><a>欢迎你</a></li>
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> ${user.username}<b class="caret"></b> </a>
              <ul class="dropdown-menu pull-left">
            <a href="index.action">退出登录</a>
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
          <div class="composing" style="height: 20px;"></div>
          
          
          <h1 style="top: auto; font-family: youyuan">为以下文本打标签</h1>
          
          
		
         
         <div style="border:2px solid #C9C9C9;margin: 40px;padding: 10px">

         
          <c:foreach item="list" var="word">
        <button id="${word}" target="_blank" type="button" class="btn btn-default">${word}</button>
        <script type="text/javascript">  
                    $(function (){   
                        var ulstring="<div align='centre'>"+"<input id='${word}'+'shuru' align='left' style='width:130px;height:30px'></input>"  
					        +"<button id='biaoqianButton' style='width:45px;height:30px' onclick='revise('${word}','${word}'+'shuru')'>确认</button>"+"</div>";  
                        $("#${word}").popover({   
                            trigger:'manual',
                            placement : 'bottom',    
                            title:'<div style="text-align:left; color:gray; font-size:10%;">标签</div>',  
                            html: 'true',   
                            content : ulstring,  
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
      </c:foreach>
           </div>
           
           <div align="center"><button id="tijiao" class="btn btn-default" onClick="tijiao()">提交</button></div>
           
           
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