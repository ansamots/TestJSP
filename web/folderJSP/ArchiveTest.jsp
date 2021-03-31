<%--
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
                    out.println(j);
                }
            %>
        </div>
        <div>
            <%
                String t = (String)request.getAttribute("table");
                if(t!=null){

                }
            %>
        </div>
    </body>
</html>
