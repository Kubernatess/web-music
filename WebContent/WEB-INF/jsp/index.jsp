<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="defined" uri="http://www.lumlum.cn/lumlum" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>index</title>
<style>
video{
	width:352px;
    height:198px;	
}
</style>
<c:set var="path" value="${pageContext.request.contextPath}" scope="page"/>
<link href="css/navigation.css" rel="stylesheet" type="text/css">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>


<body>
<!-- 导航栏部分 -->
<nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html"><font color="#9900CC" size="+3">LayUI</font></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">首页<span class="sr-only">(current)</span></a></li>
        <li><a href="#">发现音乐</a></li>
        <li><a href="#">随心听</a></li>
        <li><a href="#">VIP</a></li>
      </ul>
      <form class="navbar-form navbar-left">
      	<div class="input-group">
  			<input type="text" class="form-control" aria-label="..." placeholder="燃烧我的卡路里">
  			<div class="input-group-btn">
    			<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
  			</div>
		</div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="modal" data-target="#myModal">上传音乐</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">YouTube<span class="caret"></span></a>
          <ul class="dropdown-menu">
          	<li><a href="#">个人中心</a></li>
            <li><a href="${path}/list" target="_blank">我的音乐</a></li>            
            <li><a href="#">消息</a></li>
            <li><a href="#">设置</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">退出</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<!-- Modal 引用上面的<a>上传音乐</a> -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">分享音乐</h4>
      </div>
      <form>
      	<div class="modal-body">     	
          	<div class="form-group">
                    <label for="video_name">音乐名称</label>
                    <input type="text" class="form-control" id="video_name">
                </div>         
                <div class="form-group">
                    <label for="upload">上传音乐</label>
                    <input type="file" id="upload">
                </div>
                <div class="form-group">
                    <label for="cover">专辑封面</label>
                    <input type="file" id="cover">
                </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">分享</button>
            <button type="button" class="btn btn-default">返回</button>
          </div>
      </form>
    </div>
  </div>
</div>


<div class="container">
	<div class="row">
		<div class="col-md-9">
  			<div>
  			<!-- Nav tabs -->
  				<ul class="nav nav-tabs" role="tablist">
    				<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">推荐歌曲</a></li>
    				<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">热门歌曲</a></li>
    				<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">网络歌曲</a></li>
    				<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">华语音乐</a></li>
                    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">欧美歌曲</a></li>
  				</ul>
  			<!-- Tab panes -->
  				<div class="tab-content">
    				<div role="tabpanel" class="tab-pane active" id="home">
                    	<div class="row">
                          	<defined:fetchRecommend />
                          	
                        </div>
                    </div>
    				<div role="tabpanel" class="tab-pane" id="profile">...</div>
    				<div role="tabpanel" class="tab-pane" id="messages">...</div>
    				<div role="tabpanel" class="tab-pane" id="settings">...</div>
  				</div>
			</div>   
		</div>
        
		<div class="col-md-3">
        	<h1>音乐风云榜</h1>
        	<div class="list-group">
  				<defined:fetchPopular />
			</div>
        </div>
	</div>
</div>

</body>
</html>