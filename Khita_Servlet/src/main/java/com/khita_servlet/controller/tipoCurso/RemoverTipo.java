package com.khita_servlet.controller.tipoCurso;

import com.khita_servlet.dao.CursoDAO;
import com.khita_servlet.dao.TipoCursoDAO;
import com.khita_servlet.model.TipoCurso;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "removerTipo", value = "/pages/paginas-principais/remover-tipo")
public class RemoverTipo extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TipoCursoDAO tipoDAO = new TipoCursoDAO();
        CursoDAO cursoDAO = new CursoDAO();

        String tipo = req.getParameter("tipo");

        if (tipo != null) {
            TipoCurso tipoCurso = new TipoCurso(tipo);

            // Verificar se o tipoCurso está associado a algum curso
            if (cursoDAO.isTipoCursoAlocado(tipo)) {
                req.setAttribute("erro", true);
                req.setAttribute("mensagem", "Tipo de curso não pode ser removido pois está associado a um ou mais cursos.");
            } else {
                // Remover o tipoCurso caso não esteja associado
                if (tipoDAO.removerTipoCurso(tipoCurso.getId()) > 0) {
                    req.setAttribute("erro", false);
                    req.setAttribute("mensagem", "Tipo de curso removido com sucesso!");
                } else {
                    req.setAttribute("erro", true);
                    req.setAttribute("mensagem", "Ocorreu um erro ao remover o tipo de curso, tente novamente.");
                }
            }
        } else {
            req.setAttribute("erro", true);
            req.setAttribute("mensagem", "Tipo de curso não existente.");
        }

        req.getRequestDispatcher("/pages/paginas-mensagem/area-oculta-mensagem.jsp").forward(req, resp);
    }

}

