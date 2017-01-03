<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

<body>
<h1>Struts 2 download file example</h1>

<s:url var="fileDownload" namespace="/" action="download" ></s:url>

<h2>Download file - <s:a href="%{fileDownload}">fileABC.txt</s:a>
</h2>

</body>
</html>