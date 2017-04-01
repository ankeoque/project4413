package ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;
import model.CartItem;

/**
 * Servlet implementation class cartctrl
 */
@WebServlet("/cartctrl")
public class cartctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartctrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.getWriter().append("Served at: ").append(request.getContextPath());
		 String strAction = request.getParameter("action");
		 if (strAction!=null && !strAction.equals("")) {
			   if(strAction.equals("add")) {
				   addToCart(request);
			   } else if (strAction.equals("Update")) {
				   updateCart(request);
			   } else if (strAction.equals("Delete")) {
				   deleteCart(request);
			   }
		  }
		  
		  String url = "/myJspx/view-cart.jsp";
		  RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
		  requestDispatcher.forward(request, response);
	}
		  
	 protected void deleteCart(HttpServletRequest request) {
		 HttpSession session = request.getSession();
		 String strItemIndex = request.getParameter("itemIndex");
		 CartItem cartBean = null;
	   
		 Object objCartBean = session.getAttribute("cart");
		 if(objCartBean!=null) {
			 cartBean = (CartItem) objCartBean ;
		 } else {
			 cartBean = new CartItem();
		 }
		 cartBean.deleteCartItem(strItemIndex);
	 }
		  
	 protected void updateCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String strQuantity = request.getParameter("quantity");
		  String strItemIndex = request.getParameter("itemIndex");
		  
		  CartItem cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (CartItem) objCartBean ;
		  } else {
		   cartBean = new CartItem();
		  }
		  cartBean.updateCartItem(strItemIndex, strQuantity);
	 }
		  
	 protected void addToCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  Book book = new Book();
		  book.setId(request.getParameter("book_id"));
		  book.setCategory(request.getParameter("book_category"));
		  book.setPrice(request.getParameter("book_price"));
		  book.setTitle(request.getParameter("book_title"));
		  book.setRating(request.getParameter("book_rating"));
		  book.setPath(request.getParameter("book_path"));
		  book.setAuthor(request.getParameter("book_author"));
		  
		  String strQuantity = request.getParameter("quantity");
		   
		  CartItem cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
	 
		  if(objCartBean!=null) {
			  cartBean = (CartItem) objCartBean ;
		  } else {
			   cartBean = new CartItem();
			   session.setAttribute("cart", cartBean);
		  }
		  cartBean.addCartItem(book, strQuantity);
	 }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
