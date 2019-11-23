<!DOCTYPE html>
<html>
<head>
	{{template "head.tpl" .}}
	<style type="text/css">
		input {
			display: block;
		}
	</style>
</head>
<body>
	<form id="fform" method="POST" enctype="multipart/form-data" action="/upload/upfile">
		<input type="input" name="name" placeholder="名称">
		<input type="input" name="description" placeholder="描述">
		<input type="input" name="image" placeholder="封面">
		<input type="file" name="myfile" id="myfile">
		<input type="submit" value="保存">
	</form>
</body>
</html>