<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/page/inc/taglib.jsp"%>
<form id="pagerForm" method="post" action="merchant_merchantLookupList.action">
	<%@include file="/page/inc/pageForm.jsp"%>
</form>
<div class="pageHeader">
	<form rel="pagerForm" onsubmit="return dwzSearch(this, 'dialog');" action="merchant_merchantLookupList.action" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>商户编号：<input type="text" name="merchantNo" size="30" alt="精确搜索" value="${merchantNo }" />
					</td>
					<td>
						<div class="subBar">
							<ul>
								<li><div class="buttonActive">
										<div class="buttonContent">
											<button type="submit">查询</button>
										</div>
									</div></li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<table class="table" targetType="navTab" asc="asc" desc="desc" width="100%" layoutH="100">
		<thead>
			<tr>
				<th>序号</th>
				<th>商户编号</th>
				<th>商户全称</th>
				<th>商户简称</th>
				<th>商户状态</th>
				<th>操作</th>
				<!-- 图标列不能居中 -->
			</tr>
		</thead>
		<tbody>
			<s:iterator value="recordList" status="st">
				<tr target="sid_user" rel="${Id}" ondblclick="$.bringBack({merchantNo:'${merchantNo}', fullName:'${fullName}'});">
					<td>${st.index+1}</td>
					<td>${merchantNo}</td>
					<td>${fullName}</td>
					<td>${shortName}</td>
					<td><s:if test="status=='102'">商户已创建</s:if> <s:if test="status=='100'">已激活</s:if></td>
					<td><a class="btnSelect" href="javascript:$.bringBack({merchantNo:'${merchantNo}', fullName'${fullName}'})" title="查找带回">选择</a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<!-- 分页 -->
	<%@include file="/page/inc/pageBarLookup.jsp"%>
</div>
