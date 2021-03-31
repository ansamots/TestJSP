package app.servlets;

import app.classes.CheckDirJar;

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

        } else if(j!=null){
            System.out.println("jar");
            CheckDirJar checkDirJar = new CheckDirJar();
            checkDirJar.checkExistingFile();
            req.setAttribute("jar", checkDirJar.checkExistingFile());
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("folderJSP/ArchiveTest.jsp");
        requestDispatcher.forward(req, resp);
    }
}
