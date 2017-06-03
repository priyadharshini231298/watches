package com.niit.Luvbro.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Luvbro.dao.ProductDao;
import com.niit.Luvbro.model.Product;



@Controller
public class Productcontroller
{
	@Autowired
	Product product;

	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/product")
	public ModelAndView product()
	{
		List<Product> products=productDao.list();
		ModelAndView obj=new ModelAndView("product");
		obj.addObject("product", new Product());
		obj.addObject("products",products);
		return obj;
	}

	@RequestMapping(value="/product", method=RequestMethod.POST)
	public ModelAndView product(@ModelAttribute("product")Product product)
	{
		ModelAndView obj = new ModelAndView("redirect:/product");
		if(productDao.saveOrUpdate(product))
		{
			obj.addObject("msg","\t Scessfully Saved the Product");
		}
		else
			obj.addObject("msg","\t Sorry!  Failed to Save the Product Please re-try");
		return obj;
	}
	
	@RequestMapping("/editproduct/{p_id}")
	public ModelAndView editproduct(@PathVariable("p_id")String id)
	{
		System.out.println(123);
		List<Product> products=productDao.list();
		ModelAndView obj=new ModelAndView("redirect:/product");
		product=productDao.getProduct(id);
		obj.addObject("products",products);
		obj.addObject("product",product);
		return obj;
	}
	@RequestMapping("/deleteproduct/{p_id}")
	public ModelAndView deleteproduct(@PathVariable("C_id")String p_id)
	{
		ModelAndView obj=new ModelAndView("redirect:/product");
		product=productDao.getProduct(p_id);
		if(productDao.delete(product))
		{
			obj.addObject("msg","Product is deleted successfully");
		}
		else
		{
			obj.addObject("msg","Product cannot be deleted");
		}
		return obj;
	}
}

