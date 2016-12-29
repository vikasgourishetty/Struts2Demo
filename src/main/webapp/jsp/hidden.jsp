<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>

<body>
<h1>Struts 2 - hidden value example</h1>

<s:form action="helloHidden" namespace="/">

	<h2>This page has a hidden value (view source):
	<s:hidden name="url" value="www.google.com" /></h2>

	<s:submit value="submit" name="submit" />

</s:form>

</body>
</html>