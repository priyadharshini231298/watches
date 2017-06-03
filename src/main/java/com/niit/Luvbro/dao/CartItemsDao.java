package com.niit.Luvbro.dao;

import java.util.List;

import com.niit.Luvbro.model.CartItems;

//import java.util.List;

public interface CartItemsDao 
{
	public boolean saveOrUpdate(CartItems cartitems);
	public boolean delete(CartItems cartitems);
	public CartItems getCartItems(String id);
	public List<CartItems> list();

}
