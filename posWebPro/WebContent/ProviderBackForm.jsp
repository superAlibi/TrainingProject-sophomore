<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js">
<head>
<title>POS系统 - 采购退货信息</title>
<%@include file="common/head.jsp"%>
</head>
<body>
	<%@include file="common/top.jsp"%>
	<div class="am-cf admin-main">
		<%@include file="common/sidebar.jsp"%>

		<!-- content start -->
		<div class="admin-content">
			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">基本信息</strong> / <small>采购退货信息</small>
				</div>
			</div>

			<form class="am-form" method="post" action="ProviderBackModify">
				<input type="hidden" name="act" value="${empty probs ? 'add' : 'mdy'}">
				<input type="hidden" name="pbid" value="${probs.pbid}">
				<input type="hidden" name="oldGid" value="${probs.gid}">
				<div class="am-tabs am-margin" data-am-tabs>
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1">${empty probs ? '新增' : '修改' }退货信息</a></li>
					</ul>
					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
						
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">采购ID</div>
							<div class="am-u-sm-4 am-u-end">
								<select name="sid">
									<c:forEach items="${stocks}" var="s">
									<option value="${s.sid}">${s.sid}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">退货时间</div>
							<div class="am-u-sm-4 am-u-end">
								<input type="date"  name="date" class="am-input-sm" value="${probs.date }">
							</div>
						</div>
						<div class="am-g am-margin-top-sm">
							<div class="am-u-sm-2 am-text-right">退货总价</div>
							<div class="am-u-sm-4 am-u-end">
								<input type="number" name="totalprice" class="am-input-sm" value="${probs.totalprice }">
							</div>
						</div>
						
						</div>
					</div>
				</div>

				<div class="am-margin">
					<input type="submit" class="am-btn am-btn-primary am-btn-xs" value="保存" />
					<input type="reset" class="am-btn am-btn-primary am-btn-xs" value="重置">
				</div>
			</form>

		</div>
		<!-- content end -->

	</div>

	<footer>
		<hr>
		<p class="am-padding-left">© 2016 zhdtedu, Inc.</p>
	</footer>

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.js"></script>
	<!--<![endif]-->
	<script src="assets/js/app.js"></script>
</body>
</html>
