package model;

import com.jfinal.core.Controller;
import org.bson.Document;
import org.json.JSONException;

import java.util.HashMap;
import java.util.Map;

public class StuController extends Controller{
    public void index(){
        render("manage.html");
    }
    public void add()throws JSONException{
        String math = getPara("math");
        String english = getPara("english");
        String sid = getPara("sid");
        String sname = getPara("sname");
        Map<String, String> map=MongoKit.find("info15","sid",sid);
        if(map!=null){
            renderText("已经有该学生的信息");
            return;
        }
        Document document = new Document("sid",sid).append("sname",sname).append("math",math).append("english",english);
        MongoKit.save("info15", document);
        renderText("success！！！");
    }
    public void query() throws JSONException {
        String sid =getPara("sid");
        setSessionAttr("sid",sid);
        if (sid==null || sid.equals("")){
            setAttr("tips","请返回，输入查询信息");
            render("error.html");
            return;
        }else{
            Map<String, String> map=MongoKit.find("info15","sid",sid);
            if(map==null){
                setAttr("tips","查询无结果");
                render("error.html");
                return;
            }
            setAttr("re",map);
        }
        Map<String ,String> remap = new HashMap<>();
        setAttr("remap",remap);
        render("result.html");
    }
    public void update(){
        String[] grade = getParaValues("grade");
        String sid =getSessionAttr("sid").toString();
        System.out.print(sid);
        Map<String,Object> new_value = new HashMap<>();
        Map<String,Object> q = new HashMap<>();
        q.put("sid",sid);
        new_value.put("english",grade[0]);
        new_value.put("math",grade[1]);
        MongoKit.updateFirst("info15",q,new_value);
        renderText("修改成功！！！");
    }
    public void delete() throws JSONException {
        String sid= getPara("sid");
        if (sid==null || sid.equals("")) {
            renderText("请返回，输入相关信息");
        }else{
            MongoKit.remove("info15","sid",sid);
            renderText("你已经成功删除该学生信息");
        }
    }

}
