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
            <h1>Добавление пользователей</h1>
        </div>

        <div>
            <%
                if (request.getAttribute("userName") != null) {
                    out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
                }
            %>
        </div>
        <div>
            <form method="post">
                <label>Name:
                    <input type="text" name="name"><br />
                </label>

                <label>Password:
                    <input type="password" name="pass"><br />
                </label>
                <button type="submit">Submit</button>
            </form>
        </div>
        <div>
            <button onclick="location.href='/'">На главную</button>
        </div>
    </body>
</html>
