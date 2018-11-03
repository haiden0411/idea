package com.huawei.controller;

import com.huawei.model.User;
import com.jfinal.core.Controller;

import java.util.List;

public class UserController extends Controller {
	/**
	 * 直接访问user地址进入list.jsp
	 */
	public void index(){
		List<User> users=User.dao.find("select * from user");
		setAttr("users", users);
		System.out.println("得到数据"+users.size()+"个");
		render("list.jsp");
	}
	/**
	 * 访问user/form 地址进入form.jsp
	 */
	public void form(){
		Integer id=getParaToInt(0);
		if(id!=null&&id>0){
			setAttr("user", User.dao.findById(id));
		}
		render("form.jsp");
	}
	/**
	 * 数据提交
	 */
	public void submit(){
		User user=getModel(User.class,"user");
		user.save();
		redirect("/user");
	}
	public void update(){
		User user=getModel(User.class,"user");
		user.update();
		redirect("/user");
	}
	public void edit(){
		form();
	}
	public void del(){
		User.dao.deleteById(getPara(0));
		redirect("/user");
	}
}
