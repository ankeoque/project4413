package model;

public class Category {

		 private String id;
		 private String categoryDescription;
		 
		 public String getId() {
			 return id;
		 }
		 
		 public void setId(String id) {
			 this.id = id;
		 }
		 
		 public String getCategoryDescription() {
			 return categoryDescription;
		 }
		 
		 public void setCategoryDescription(String categoryDescription) {
			 this.categoryDescription = categoryDescription;
		 }
		 
		 public String toString() {
			 return "Category - Id: " + id + ", Category Description: " + categoryDescription;
		 }
		

}
