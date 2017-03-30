package model;

public class CartItemBean {
    private Book item;
    private int iQuantity;
    private double dblTotalCost;
    
    public Book getItem() {
        return item;
    }
    
    public void setItem(Book book) {
        item = book;
    }
    
    public double getUnitCost() {
        return Double.parseDouble(item.getPrice());
    }
    
    public int getQuantity() {
        return iQuantity;
    }
    
    public void setQuantity(int quantity) {
        iQuantity = quantity;
    }
    
    public double getTotalCost() {
    	dblTotalCost = iQuantity*getUnitCost();
        return dblTotalCost;
    }
    
    public void setTotalCost(double dblTotalCost) {
        this.dblTotalCost = dblTotalCost;
    }

}
