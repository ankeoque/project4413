package ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import model.Book;

/**
 * Servlet implementation class Start
 */
@WebServlet("/Start")
public class Start extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Start() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	BookDAO bookDao = new BookDAO();
    	// calling DAO method to retrieve bookList from Database
    	List<String> categoryList = bookDao.findAllCategories();
    	List<Book> bookList = bookDao.findAllBooks();
    	ServletContext context = config.getServletContext();
    	context.setAttribute("categoryList", categoryList);
    	context.setAttribute("bookList", bookList);
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String base = "/myJspx/";
		String url = base + "index.jsp";
		String action = request.getParameter("action");
		String category = request.getParameter("category");
		String keyWord = request.getParameter("keyWord");
		if (action != null) {
			switch (action) {
				case "allBooks": findAllBooks(request, response);
				url = base + "category.jsp";
				break;
			
				case "category": findCategoryBooks(request, response, category);
				url = base + "category.jsp?category=" + category;
				break;
			
				case "search": searchBooks(request, response, keyWord);
				url = base + "search.jsp";
				break;
			
			}
		}
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
		requestDispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void findAllBooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				BookDAO bookDao = new BookDAO();
				List<Book> bookList = bookDao.findAllBooks();
				request.setAttribute("bookList", bookList);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	private void findCategoryBooks(HttpServletRequest request, HttpServletResponse response, String category) throws ServletException, IOException {
		try {
			BookDAO bookDao = new BookDAO();
			List<Book> bookList = bookDao.findCategoryBooks(category);
			request.setAttribute("bookList", bookList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void searchBooks(HttpServletRequest request, HttpServletResponse response, String keyWord) throws ServletException, IOException {
			try {
				BookDAO bookDao = new BookDAO();
				List<Book> bookList = bookDao.searchBooksByKeyword(keyWord);
				request.setAttribute("bookList", bookList);
			} catch (Exception e) {				
				e.printStackTrace();
			}	
	}

}
