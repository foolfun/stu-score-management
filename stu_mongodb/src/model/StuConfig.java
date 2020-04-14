package model;

import com.jfinal.config.*;

import com.jfinal.template.Engine;
public class StuConfig extends JFinalConfig {

    @Override
    public void configConstant(Constants me) {
        me.setDevMode(true);
        me.setEncoding("UTF-8");
    }

    @Override
    public void configRoute(Routes me) {
        me.add("/", StuController.class,"/common");
    }

    @Override
    public void configEngine(Engine me){
        me.setDevMode(true);
    }

    @Override
    public void configPlugin(Plugins me){
        MongodbPlugin mongodbPlugin=new MongodbPlugin("test");
        me.add(mongodbPlugin);
    }
    @Override
    public void configInterceptor(Interceptors me){}
    @Override
    public void configHandler(Handlers me){}
}
