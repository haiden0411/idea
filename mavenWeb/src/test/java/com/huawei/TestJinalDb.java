package com.huawei;

import com.huawei.model.User;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.druid.DruidPlugin;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

/**
 * Author：胡灯
 * Date：2018-11-08 23:36
 * Description：<描述>
 */

public class TestJinalDb {
    @Before
    public void setUp(){
        PropKit.use("config.properties");
        DruidPlugin dp = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        arp.addMapping("user", User.class);
        arp.setShowSql(true);
        arp.setBaseSqlTemplatePath(PathKit.getRootClassPath());
        arp.addSqlTemplate("demo.sql");
        dp.start();
        arp.start();
    }

    @Test
    public void test01(){
        String sql = Db.getSql("findUserByAge");
        List<Record> records = Db.find(sql, 50);
        System.out.println(records.size());
    }
}
