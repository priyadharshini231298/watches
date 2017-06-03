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

import com.niit.Luvbro.dao.UserDao;
import com.niit.Luvbro.model.Supplier;
import com.niit.Luvbro.model.User;
//import com.niit.Luvbro.model.Product;

@Repository("userDao")
@EnableTransactionManagement
@Transactional
public class UserDaoImpl implements UserDao 
{
  @Autowired
  private SessionFactory sessionFactory ;

	 public UserDaoImpl(SessionFactory sessionFactory)
	 {
		 this.sessionFactory = sessionFactory;
	 }

	public boolean saveOrUpdate(User user) 
	{
	  try
	  {
	   sessionFactory.getCurrentSession().saveOrUpdate(user);
	    return true;
	  }
	  catch(Exception E)
	  {
		  return false;
	  }
	}


	public boolean delete(User user)
	{
		try
		  {
		   sessionFactory.getCurrentSession().delete(user);
		    return true;
		  }
		  catch(Exception E)
		  {
			  return false;
		  }
	}
//
//	
//	public Category getCategory(int id) 
//	{
//		if(category.getC_id()==id)
//			return category;
//		return null;
//	}
//
//	
//	public List<Category> list() {
//		return null;
//	}

	@Override
	public User getUser(String id) {
		String q1="from User where U_id='"+id+"'";
		Query w=sessionFactory.getCurrentSession().createQuery(q1);
		@SuppressWarnings("unchecked")
		List<User> list=(List<User>) w.list();
		if(list==null||list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	@Override
	public List<User> list() {
		@SuppressWarnings("unchecked")
		List<User> users = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return users;
		}

}
