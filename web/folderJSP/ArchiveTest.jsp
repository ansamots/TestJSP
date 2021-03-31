<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Виктория
  Date: 30.03.2021
  Time: 20:52
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
            <form method="get">
                <button type="submit" name="jar">jar</button>
            </form>

            <form method="get">
                <button type="submit" name="table">table</button>
            </form>
        </div>
        <div>
            <% String j = (String)request.getAttribute("jar");
                if(j!=null){
                    out.println("<li>"+j+"<li>"+"<br>");
                }
            %>
        </div>
        <div>
            <table>
                <caption>Вывод таблицы</caption>
                    <%
                        List<String> list = (List<String>) request.getAttribute("table");
                        if(list!=null){
                            for (String s: list) {
                                out.print("<tr>");
                                List<String> stringList = Arrays.asList(s.split(";"));
                                for(String a: stringList){
                                    out.println("<th>"+a+"</th>");
                                }

                                out.print("<tr>");
                            }
                        }
                    %>
            </table>
        </div>
    </body>
</html>
