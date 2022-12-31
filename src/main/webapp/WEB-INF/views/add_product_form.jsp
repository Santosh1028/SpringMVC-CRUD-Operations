<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill Products Details</h1>

				<form action="handle-form" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Product Name:</label> <input
							type="text" class="form-control" id="name" name="name"
							aria-describedby="emailHelp" placeholder="Enter Product Name">

					</div>
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="5" placeholder="Enter Product Desciption"></textarea>

					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Price:</label> <input
							type="text" class="form-control" id="price" name="price"
							aria-describedby="emailHelp" placeholder="Enter Product Price">

					</div>

					<div class="container text-center">
					
					
					<a href="${pageContext.request.contextPath }" class="btn btn-outline-danger">Back</a>
					
						<button type="submit" class="btn btn-primary">Add Product</button>
					</div>
				</form>
			</div>
		</div>

	</div>

</body>
</html>