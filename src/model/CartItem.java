package model;

import java.util.ArrayList;
import java.util.List;

public class CartItem {
	private List<CartItemBean> cartList = new ArrayList<CartItemBean>();
	private double dblOrderTotal ;
	
	public int getLineItemCount() {
		  return cartList.size();
	} 
	
	public void deleteCartItem(String strItemIndex) {
		  int iItemIndex = 0;
		  try {
			   iItemIndex = Integer.parseInt(strItemIndex);
			   cartList.remove(iItemIndex - 1);
			   calculateOrderTotal();
		  } catch(NumberFormatException nfe) {
			  System.out.println("Error while deleting cart item");
			  nfe.printStackTrace();
		  }
	 }
	  
	 public void updateCartItem(String strItemIndex, String strQuantity) {
	  double dblTotalCost = 0.0;
	  double dblUnitCost = 0.0;
	  int iQuantity = 0;
	  int iItemIndex = 0;
	  CartItemBean cartItem = null;
	  try {
		  iItemIndex = Integer.parseInt(strItemIndex);
		  iQuantity = Integer.parseInt(strQuantity);
		  if(iQuantity > 0) {
			  cartItem = cartList.get(iItemIndex-1);
			  dblUnitCost = cartItem.getUnitCost();
			  dblTotalCost = dblUnitCost*iQuantity;
	    cartItem.setQuantity(iQuantity);
	    cartItem.setTotalCost(dblTotalCost);
	    calculateOrderTotal();
	   }
	  } catch (NumberFormatException nfe) {
	   System.out.println("Error while updating cart: "+nfe.getMessage());
	   nfe.printStackTrace();
	  }
	   
	 }
	  
	 public void addCartItem(Book book, String strQuantity) {
		  double dblTotalCost = 0.0;
		  int iQuantity = 0;
		  CartItemBean cartItem = new CartItemBean();
		  try {
			   iQuantity = Integer.parseInt(strQuantity);
			   if(iQuantity>0) {
				    cartItem.setItem(book);
				    cartItem.setQuantity(iQuantity);
				    cartItem.setTotalCost(dblTotalCost*Double.parseDouble(book.getPrice()));
				    cartList.add(cartItem);
				    calculateOrderTotal();
			   }
		  } catch (NumberFormatException nfe) {
			   System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
			   nfe.printStackTrace();
		  }
	 }
	  
	 public void addCartItem(CartItemBean cartItem) {
		 cartList.add(cartItem);
	 }
	  
	 public CartItemBean getCartItem(int iItemIndex) {
		 CartItemBean cartItem = null;
		  if(cartList.size()>iItemIndex) {
			  cartItem = cartList.get(iItemIndex);
		  }
		  return cartItem;
	 }
	  
	 public List<CartItemBean> getCartItems() {
	  return cartList;
	 }
	 
	 public void setCartItems(ArrayList cartList) {
	  this.cartList = cartList;
	 }
	 
	 public double getOrderTotal() {
	  return dblOrderTotal;
	 }
	 
	 public void setOrderTotal(double dblOrderTotal) {
	  this.dblOrderTotal = dblOrderTotal;
	 }
	  
	 protected void calculateOrderTotal() {
		  double dblTotal = 0;
		  for(int counter=0; counter<cartList.size(); counter++) {
			  CartItemBean cartItem = cartList.get(counter);
			  dblTotal+=cartItem.getTotalCost();
		  }
		  setOrderTotal(dblTotal);
	 }
	 
	}
