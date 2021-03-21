<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: ansamots
  Date: 20.03.2021
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TestJSP</title>
</head>
<body>
    <div>
        <h1>Список пользователей</h1>
    </div>
    <ul>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");

            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (String s : names) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>There are no users yet!</p>");
        %>
    </ul>
    <div>
        <button onclick="location.href='/'">На главную</button>
    </div>
</body>
</html>
