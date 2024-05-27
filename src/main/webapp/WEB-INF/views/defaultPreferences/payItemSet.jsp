<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<div id="content">

	<div class="table-container">
		<div class="header-container">
			<img
				src="<%=request.getContextPath()%>/resources/images/contentimages/payItemSet.png"
				width="50" height="50">
			<h1>給与項目の設定</h1>
		</div>
		<hr>
		<div class="search-container">
			<div class="title-table-left">
				<h3>支給項目設定</h3>
				<table class="empRegister1">
					<thead class="empRegister-head1">
						<tr>
							<th>支給項目</th>
							<th>課税の可否</th>
							<th>非課税限度額</th>
							<th>節射単位</th>
							<th>勤怠連結/一括支給</th>
							<th>使用可否</th>
						</tr>
					</thead>
					<tbody class="empRegister-body">
						<tr>
							<td>基本給</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>

			<form style="margin-top: 60px;">
				<table class=empRegisterblack style="margin-bottom: 20px; width: 300px;">
					<thead>
						<tr>
							<th>支給項目</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>課税の可否</td>
							<td></td>
						</tr>
						<tr>
							<td>非課税名</td>
							<td></td>
						</tr>
						<tr>
							<td>非課税限度額</td>
							<td></td>
						</tr>
						<tr>
							<td>計算方法</td>
							<td></td>
						</tr>
						<tr>
							<td>節射単位</td>
							<td></td>
						</tr>
						<tr>
							<td>勤怠連結/一括支給</td>
							<td></td>
						</tr>
						<tr>
							<td>一括支給額</td>
							<td></td>
						</tr>
						<tr>
							<td>使用可否</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div class="divbtnsml">
					<button>追加</button>
					<button>修整</button>
					<button class="cancel-btn">削除</button>
					<button class="cancel-btn">内容消去</button>
				</div>
			</form>

		</div>
	</div>

</div>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>