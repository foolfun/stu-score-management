package com.model;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import java.util.List;


public class StuController extends Controller{
    public void index(){
        render("index.html");
    }
    public void add() {
//        Stu stu = this.getModel(Stu.class);
        String cname = getPara("cname");
        String grade = getPara("grade");
        String sid = getPara("sid");
        String sname = getPara("sname");
        JSONObject obj= new JSONObject();
        obj.put(cname, grade);
        Record info= new Record();
        List<Stu> list= Db.query("select score from t_stu1 where sid = ?");
        if(list.isEmpty()) {
            info.set("sid", sid).set("sname", sname).set("score", obj);
            Db.save("t_stu1", info);
//        new Stu().set("sid",sid).set("sname",sname).set("score",obj).save();
//        new Stu().set("sid","20").set("sname","123").set("score",{"math":"90"}).save();
            // Db.update("insert into t_stu1 values(?,?,?)",sid,sname,out);
            renderText("添加成功");
        }else{
            Db.update("update t_stu1 set score = score || ?  where sid=?",obj,sid);
            renderText("添加成功");
        }
    }

    public void query() {
        Stu stu = this.getModel(Stu.class);
         String list= stu.find("select score from t_stu1 where sid = ?",getPara("sid")).toString();
        renderText(list);
//        setAttr("list",list);
//        System.out.println("list");
//        render("result.html");
    }
    public void update(){
        String cname = "{"+getPara("cname")+"}";
        Db.update("update t_stu1 set score = jsonb_set(score,?,?,false) where sid=?",cname,getPara("grade"),getPara("sid"));
        /*数据库里sql可以，这里为什么会有错？？？*/
        renderText("修改成功！");
    }
    public void delete(){
        String cname = getPara("stu.cname");
        String sid = getPara("stu.sid");
        if(cname=="" || cname==null) {
           Db.update("delete from t_stu1 where sid =?",sid);
            renderText("删除成功！");
        } else {
            Db.update("update t_stu1 set score = score-?  where sid =?", cname, sid);
            renderText("删除成功！");
        }
    }

}
