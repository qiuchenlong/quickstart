<!DOCTYPE html>
<html>
<head>
	{{template "head.tpl" .}}
</head>
<body>
	<form id="fform" method="POST" enctype="multipart/form-data" action="/upload/upfile">
		<input type="file" name="myfile" id="myfile">
		<input type="submit" value="保存">
	</form>
</body>
</html>