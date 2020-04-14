package com.model;

import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.PostgreSqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class StuConfig extends JFinalConfig {
    public static void main(String[] args) {
        JFinal.start("WebRoot", 80, "/");
    }
    @Override
    public void configConstant(Constants me) {
//        PropKit.use("Score/res/config.txt" );一直说找不到路径，到底哪里出了问题？？？？
//        me.setDevMode(PropKit.getBoolean("devMode", false));
        me.setDevMode(true);
        me.setEncoding("UTF-8");
    }

    @Override
    public void configRoute(Routes me) {
        me.add("/", StuController.class,"/common");
    }

    @Override
    public void configEngine(Engine me){}


    @Override
    public void configPlugin(Plugins me){
        C3p0Plugin cp = new C3p0Plugin("jdbc:postgresql://localhost:5432/stu_pg","postgres",("z").trim(),"org.postgresql.Driver");
        ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
        arp.setShowSql(true);
        arp.addMapping("t_stu1","sid",Stu.class);
        me.add(cp);
        me.add(arp);
        arp.setDialect(new PostgreSqlDialect());
    }
    @Override
    public void configInterceptor(Interceptors me){}
    @Override
    public void configHandler(Handlers me){}
}
