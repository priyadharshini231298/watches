package com.niit.Luvbro.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController 
{
	@RequestMapping("/")	
	public String home()
	{ 
		return "home";
	}
	
//	@RequestMapping("/addproduct")	
//	public String addproduct()
//	{
//		return "Add_Product";
//	}
	
//	@RequestMapping("/addcategory")	
//	public String addcategory()
//	{
//		return "Add_Category";
//	}
	
//	@RequestMapping("/addsupplier")	
//	public String addsupplier()
//	{
//		return "Add_Supplier";
//	}
	
	@RequestMapping("/allproducts")	
	public String allproducts()
	{
		return "All_Products";
	}
	
	@RequestMapping("/login")	
	public String login()
	{
		return "login";
	}
	
//	@RequestMapping("/signup")	
//	public String signup()
//	{
//		return "signup";
//	}
	
}
