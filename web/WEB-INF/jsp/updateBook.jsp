<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>修改书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--前端传递隐藏域 id--%>
        <input type="hidden" name="bookID" value="${QueryBook.bookID}">

        书籍名称：<input type="text" name="bookName" value="${QueryBook.bookName}"><br><br><br>
        书籍数量：<input type="text" name="bookCounts" value="${QueryBook.bookCounts}"><br><br><br>
        书籍详情：<input type="text" name="detail" value="${QueryBook.detail}"><br><br><br>
        <input type="submit" value="修改">
    </form>

</div>