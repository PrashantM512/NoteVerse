package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("note_id"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Session s = FactoryProvider.getFactory().openSession();

		Transaction tx = s.beginTransaction();

		Note note = s.get(Note.class, id);
		note.setTitle(title);
		note.setContent(content);

		tx.commit();

		s.close();
		request.setAttribute("action", "Updated");
		request.getRequestDispatcher("success.jsp").forward(request, response);

	}

}
