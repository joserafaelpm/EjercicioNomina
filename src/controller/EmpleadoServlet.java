package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Empleado;
import model.EmpleadoDAO;

/**
 * Servlet implementation class EmpleadoServlet
 */
@WebServlet("/")
public class EmpleadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmpleadoDAO eDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmpleadoServlet() {
		super();
		eDAO = new EmpleadoDAO();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/eliminar":
			this.eliminar(request, response);
			break;
		case "/mostrar":
			this.showForm(request, response);
			break;
			/*	case "/buscar":
			this.buscar(request, response);
			break;	 */
		default:
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/buscar":
			this.buscar(request, response);
			break; 	
		case "/registrar":
			this.registrar(request, response);
			break;
		case "/actualizar":
			this.actualizar(request, response);
			break;
		default:
			break;
		}
	}

	protected void registrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		String codigo = request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String cedula = request.getParameter("cedula");
		String fechaNacimiento = request.getParameter("fechaNacimiento");
		String fechaIngreso = request.getParameter("fechaIngreso");
		String fechaRetiro = request.getParameter("fechaRetiro");
		Empleado em = new Empleado();
		em.setCodigo(codigo);
		em.setCedula(cedula);
		em.setNombre(nombre);
		try {
			em.setFechanacimiento(sd.parse(fechaNacimiento));
			em.setFechaingreso(sd.parse(fechaIngreso));
			em.setFecharetiro(sd.parse(fechaRetiro));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		// eDAO.update(obj);
		eDAO.insert(em);
		request.getRequestDispatcher("registroEmpleado.jsp").forward(request, response);
	}

	protected void buscar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo = request.getParameter("codigo");
		Empleado em = new Empleado();
		em.setCodigo(codigo);
		Empleado aux = eDAO.find(em.getCodigo());
	    System.out.println(aux.getCodigo());
		request.getSession().setAttribute("empleado", aux);
		request.getRequestDispatcher("registroEmpleado.jsp").forward(request, response);
		// response.sendRedirect("registroEmpleado");
	}

	protected void eliminar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		Empleado emp = new Empleado();
		Empleado aux = eDAO.find(codigo);
		emp.setCodigo(codigo);
		eDAO.delete(aux);
		request.getRequestDispatcher("lista.jsp").forward(request, response);
	}
	
	protected void actualizar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo = request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String cedula = request.getParameter("cedula");
		Empleado em = new Empleado();
		em.setCodigo(codigo);
		em.setCedula(cedula);
		em.setNombre(nombre);
		// eDAO.update(obj);
		eDAO.update(em);
		request.getRequestDispatcher("lista.jsp").forward(request, response);
	}

	protected void showForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				String codigo = request.getParameter("codigo");
				Empleado em = new Empleado();
				em.setCodigo(codigo);
				Empleado aux = eDAO.find(em.getCodigo());
				request.getSession().setAttribute("empleado", aux);
				request.getRequestDispatcher("registroEmpleado.jsp").forward(request, response);
			//	response.sendRedirect("registroEmpleado.jsp");
	}
}
