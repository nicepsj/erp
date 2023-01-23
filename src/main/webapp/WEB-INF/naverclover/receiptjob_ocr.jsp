<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/erp/common/css/main.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#upload").click(function() {
				//파일업로드를 ajax로 처리
				$.ajax({
					url:"/erp/naverclova/ocr"
				})
			});
		});
	
	
	</script>
</head>

<body>
	<div class="container">
		<h3>경비처리하기</h3>
		<form  method="post" enctype="multipart/form-data" action="/erp/naverclova/ocr">
			<div class="row">

				<input type="file" name="file" id="myfile"
					onchange="document.getElementById('userImage').src = window.URL.createObjectURL(this.files[0])"
					accept="image/*">

			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="/erp/images/myphoto.jpg" id="userImage" width="400"
							height="300">
						<p>
							<strong>영수증을 첨부하세요</strong>
						</p>
					</div>
				</div>
				<div class="col-sm-8">

					<div class="form-group">
						<label for="email">매장이름</label> <span id="storename"></span>
					</div>
					<div class="form-group">
						<label for="pwd">매장주소</label> <span id="storeaddr"></span>
					</div>
					<div class="form-group">
						<label for="pwd">매장전화번호</label> <span id="storetel"></span>
					</div>
					<div class="form-group">
						<label for="pwd">총결제금액</label> <span id="totalprice"></span>
					</div>
					<button type="button" class="btn btn-default" id="upload">파일업로드</button>


				</div>
			</div>
		</form>
	</div>

</body>
</html>