package app.servlets;

import app.classes.CheckDirJar;
import app.classes.TableWork;
import app.classes.WorkJar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestPackedJAR extends HttpServlet {
    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String j = req.getParameter("jar");
        String t = req.getParameter("table");
        if(t!=null){
            System.out.println("table");
            TableWork tableWork = new TableWork();
            req.setAttribute("table", tableWork.readFile());
        } else if(j!=null){
            System.out.println("jar");
            WorkJar workJar = new WorkJar();
            String s = workJar.printJar();
            req.setAttribute("jar", s);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("folderJSP/ArchiveTest.jsp");
        requestDispatcher.forward(req, resp);
    }
}
