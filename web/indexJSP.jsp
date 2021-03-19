<%--
  Created by IntelliJ IDEA.
  User: Виктория
  Date: 18.03.2021
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>TestJSP</title>
  </head>
  <body>

    <h1>Добрый день мой Друг!</h1>

    <p>
      <%@ page import="logic.Button1"%>
      <%Button1 b1 = new Button1();%>
      <%String s1 = "";%>
      <button onclick=<%
        ;
        s1 = (b1.getButton1());
      %>> <a href="indexJSP.jsp">Button1</a>
      </button>
      <%out.println(s1);%>
    </p>



    <%@ page import="logic.Button2"%>
    <%Button2 b2 = new Button2();%>
    <button onclick=<%

      %>>Button2</button>

    <p>
      <%@ page import="logic.HelloString"%>
      <% HelloString testClass = new HelloString(); %>
      <%=testClass.getMessage()%>
    </p>

    <form method="post">
      <label>Name:
        <input type="text" name="name"><br />
      </label>

      <label>Password:
        <input type="password" name="pass"><br />
      </label>
      <button type="submit">Submit</button>
    </form>

  </body>
</html>
