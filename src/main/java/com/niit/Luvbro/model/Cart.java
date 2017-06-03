package com.niit.Luvbro.model;

import java.util.List;

//import java.util.List;

//import javax.persistence.CascadeType;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
//import javax.persistence.OneToMany;
//import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name ="Cart")
@Component
public class Cart 
{
  @Id
   private String cart_Id;
   private double grandtotal = 0.0;
   private long totalitems=0;
   
   @OneToMany(mappedBy="cart")
   private List<CartItems> cartItems;
   

public List<CartItems> getCartItems() {
	return cartItems;
}
public void setCartItems(List<CartItems> cartItems) {
	this.cartItems = cartItems;
}
public String getCart_Id() {
	return cart_Id;
}
public void setCart_Id(String cart_Id) {
	this.cart_Id = cart_Id;
}
public double getGrandtotal() {
	return grandtotal;
}
public void setGrandtotal(double grandtotal) {
	this.grandtotal = grandtotal;
}
public long getTotalitems() {
	return totalitems;
}
public void setTotalitems(long totalitems) {
	this.totalitems = totalitems;
	
}

}
