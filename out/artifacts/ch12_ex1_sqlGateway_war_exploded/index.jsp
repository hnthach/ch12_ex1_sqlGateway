<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sqlStatement == null}">
    <c:set var="sqlStatement" value="SELECT * FROM \"User\";" />
</c:if>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>The SQL Gateway</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<div class="container">
    <h1>The SQL Gateway</h1>
    <p class="subtitle">Enter an SQL statement and click <b>Execute</b>.</p>

    <form action="sqlGateway" method="post" class="sql-form">
        <label for="sqlStatement">SQL statement:</label><br>
        <textarea id="sqlStatement" name="sqlStatement" cols="70" rows="6">${sqlStatement}</textarea>
        <br>
        <button type="submit">Execute</button>
    </form>

    <h2>SQL result:</h2>
    <div class="result-box">
        ${sqlResult}
    </div>
</div>
</body>
</html>
