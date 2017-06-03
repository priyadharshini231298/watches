package com.niit.Luvbro.daoimpl;



import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;

//import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Luvbro.dao.CartItemsDao;
import com.niit.Luvbro.model.Cart;
import com.niit.Luvbro.model.CartItems;
//import com.niit.Luvbro.model.Product;

@Repository("cartitemsDao")
@EnableTransactionManagement
@Transactional
public class CartItemsDaoImpl implements CartItemsDao 
{
  @Autowired
  private SessionFactory sessionFactory ;

	 public CartItemsDaoImpl(SessionFactory sessionFactory)
	 {
		 this.sessionFactory = sessionFactory;
	 }

	public boolean saveOrUpdate(CartItems cartitems) 
	{
	  try
	  {
	   sessionFactory.getCurrentSession().saveOrUpdate(cartitems);
	    return true;
	  }
	  catch(Exception E)
	  {
		  return false;
	  }
	}


	public boolean delete(CartItems cartitems)
	{
		try
		  {
		   sessionFactory.getCurrentSession().delete(cartitems);
		    return true;
		  }
		  catch(Exception E)
		  {
			  return false;
		  }
	}
//
//	
//	public CartItems getCartItems(int id) 
//	{
//		if(cartItems.getC_id()==id)
//			return carditems;
//		return null;
//	}
//
//	
//	public List<CartItems> list() {
//		return null;
//	}

	@Override
	public CartItems getCartItems(String id) {
		String q1="from CartItems where c_id='"+id+"'";
		Query w=sessionFactory.getCurrentSession().createQuery(q1);
		@SuppressWarnings("unchecked")
		List<CartItems> list=(List<CartItems>) w.list();
		if(list==null||list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	@Override
	public List<CartItems> list() {
		@SuppressWarnings("unchecked")
		List<CartItems> cartitemss = (List<CartItems>) sessionFactory.getCurrentSession().createCriteria(CartItems.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return cartitemss;
	}

}
