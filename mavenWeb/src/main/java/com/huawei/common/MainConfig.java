package com.huawei.common;

import com.huawei.controller.IndexController;
import com.huawei.controller.UserController;
import com.huawei.model.User;
import com.jfinal.config.*;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class MainConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		// TODO Auto-generated method stub
		me.setViewType(ViewType.JSP);
		PropKit.use("config.properties");
	}

	@Override
	public void configRoute(Routes me) {
		// TODO Auto-generated method stub
		me.add("/", IndexController.class);
		me.add("/user", UserController.class);
	}

	@Override
	public void configEngine(Engine engine) {
	}

	@Override
	public void configPlugin(Plugins me) {
		// TODO Auto-generated method stub
		//C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
		DruidPlugin dp = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
		//ORM Activerecord
		ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
		arp.setShowSql(true);
		arp.addMapping("user", User.class);
		me.add(dp);
		me.add(arp);
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub

	}

}
