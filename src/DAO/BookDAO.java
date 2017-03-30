package DAO;

 import java.sql.Connection;
 import java.sql.DriverManager;
 import java.sql.PreparedStatement;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import java.util.ArrayList;
 import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.*;
 
public class BookDAO {
	DataSource ds;

	public BookDAO() {
		try {
			ds = (DataSource) (new InitialContext()).lookup("java:/comp/env/jdbc/EECS");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
		
	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection("java:/comp/env/jdbc/EECS");
	}
		
	private void closeConnection(Connection connection) {
		if (connection == null)
		return;
		try {
			connection.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
		
	
	public List<Book> findAllBooks() {
		List<Book> result = new ArrayList<>();
		String sql = "select * from book order by rating DESC";
		Connection connection = null;
		try {
			connection = this.ds.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getString("bid"));
				book.setTitle(resultSet.getString("title"));
				book.setCategory(resultSet.getString("category"));
				book.setAuthor(resultSet.getString("author"));
				book.setPrice(resultSet.getString("price"));
				book.setPath(resultSet.getString("path"));
				book.setRating(resultSet.getString("rating"));
				result.add(book);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConnection(connection);
		}
		return result;
	}
	
	public List<Book> findCategoryBooks(String category) {
		List<Book> result = new ArrayList<>();
		String sql = "select * from book where category like '%" + category.trim() + "%'";
		Connection connection = null;
		try {
			connection = this.ds.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getString("bid"));
				book.setTitle(resultSet.getString("title"));
				book.setCategory(resultSet.getString("category"));
				book.setAuthor(resultSet.getString("author"));
				book.setPrice(resultSet.getString("price"));
				book.setPath(resultSet.getString("path"));
				book.setRating(resultSet.getString("rating"));
				result.add(book);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConnection(connection);
		}
		return result;
	}
	
	public Book findBook(String path) {
		List<Book> result = new ArrayList<>();
		String sql = "select * from book where path like '%" + path.trim() + "%'";
		Connection connection = null;
		try {
			connection = this.ds.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getString("bid"));
				book.setTitle(resultSet.getString("title"));
				book.setCategory(resultSet.getString("category"));
				book.setAuthor(resultSet.getString("author"));
				book.setPrice(resultSet.getString("price"));
				book.setPath(resultSet.getString("path"));
				book.setRating(resultSet.getString("rating"));
				result.add(book);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConnection(connection);
		}
		return result.get(0);
	}
	
	public List<Book> searchBooksByKeyword(String keyWord) {
		List<Book> result = new ArrayList<>();
		String sql = "select * from book where title like '%" + keyWord.trim() + "%'"+ " or author like '%" + keyWord.trim() + "%' "
				+ "or path like '%" + keyWord.trim() + "%'";
		
		Connection connection = null;
		try {
			connection = this.ds.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getString("bid"));
				book.setTitle(resultSet.getString("title"));
				book.setCategory(resultSet.getString("category"));
				book.setAuthor(resultSet.getString("author"));
				book.setPrice(resultSet.getString("price"));
				book.setPath(resultSet.getString("path"));
				book.setRating(resultSet.getString("rating"));
				result.add(book);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConnection(connection);
		}
		return result;
	}
	
		public List<String> findAllCategories() {
			List<String> result = new ArrayList<>();
			String sql = "select distinct category from book";
			Connection connection = null;
			try {
				connection = this.ds.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery();
				while (resultSet.next()) {
					result.add(resultSet.getString("category"));
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			} finally {
				closeConnection(connection);
			}
			return result;
		}
		
		public void insert(Book book) {
		
		}
		
		public void update(Book book) {
		
		}
			
		public void delete(Long bookId) {
		
		 }

}
