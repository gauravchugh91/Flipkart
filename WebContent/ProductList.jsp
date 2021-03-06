<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product list</title>

<style type="text/css">
.button {
	border-style: solid;
	border-width: 0px;
	cursor: pointer;
	font-family: "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
	font-weight: normal;
	line-height: normal;
	margin: 0 0 1.25rem;
	position: relative;
	text-decoration: none;
	text-align: center;
	display: inline-block;
	padding-top: 1rem;
	padding-right: 2rem;
	padding-bottom: 1.0625rem;
	padding-left: 2rem;
	font-size: 1rem;
	background-color: #008cba;
	border-color: #007095;
	color: white;
	-webkit-transition: background-color 300ms ease-out;
	-moz-transition: background-color 300ms ease-out;
	transition: background-color 300ms ease-out;
	padding-top: 1rem;
	padding-right: 2rem;
	padding-bottom: 1.0625rem;
	padding-left: 2rem;
	font-size: 1rem;
}
</style>
</head>
<body>
	<center>
		<h2>List of Existing Products</h2>
		<br> <br>
		<div class="container">

			<s:iterator value="products">
				<div class="container col-md-4">
					<a class="button"
						href="showProduct?productId=<s:property value="productId" />">

						<s:property value="productId" /> : <s:property
							value="productName" /> <br> <s:iterator value="productEAV">
							<br>
							<s:property value="attributeName" /> : 
						<s:property value="attributeValue" />
						</s:iterator>
					</a>
				</div>
			</s:iterator>
		</div>
	</center>
</body>
</html>



<!-- 
<button type="button" class="btn btn-primary"
					onclick='this.form.action="showProduct?productId=${productId}";'>
					


 -->