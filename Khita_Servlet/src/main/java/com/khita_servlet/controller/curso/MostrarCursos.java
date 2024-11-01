package com.khita_servlet.controller.curso;

import com.khita_servlet.dao.CursoDAO;
import com.khita_servlet.model.Curso;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "mostrarCursos", value = "/pages/paginas-principais/mostrar-cursos")
public class MostrarCursos extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CursoDAO cursoDAO = new CursoDAO();

        Curso[] cursos = cursoDAO.buscarCursos();

        req.setAttribute("cursos", cursos);
        req.setAttribute("qtdCursos", cursos.length);

        req.getRequestDispatcher("/pages/paginas-mostrar/area-oculta-mostrar-curso.jsp").forward(req,resp);
    }
}
