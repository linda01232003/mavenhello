package controller;

import com.jfinal.core.Controller;
import model.XmUserMdl;

import java.util.List;

/**
 * Created by Administrator on 2017/1/6.
 */
public class AdminCtr extends Controller{
    public  void console(){
        List<XmUserMdl> lstXmUseMdl = XmUserMdl.dao.find("select * from xmuser");
        setAttr("xmuser", lstXmUseMdl);
        this.render("adminconsole.jsp");
    }
    public void form(){
        int userId = getParaToInt(0);
        System.out.println("userid is " + userId);
        if(0 != userId)
        {
            XmUserMdl xmuser = XmUserMdl.dao.findById(userId);
            setAttr("xmuser", xmuser);
        }
        this.render("adminform.jsp");
    }
    public void adduser(){
        XmUserMdl usermodel = getModel(XmUserMdl.class,  "xmuser");
        //加入数据库
        usermodel.save();
        redirect("/admin/console");
    }
    public void updateuser(){
        XmUserMdl usermodel = getModel(XmUserMdl.class,  "xmuser");
        //加入数据库
        usermodel.update();
        redirect("/admin/console");
    }

    public void delUser()
    {
        XmUserMdl.dao.deleteById(getPara(0));
        this.renderText("user has been deleted");
        redirect("/admin/console");
    }
    public void editUser(){
        int userId = getParaToInt(0);
        System.out.println("userid is " + userId);
        XmUserMdl xmUser = XmUserMdl.dao.findById(userId);
        setAttr("xmuser", xmUser);
        this.render("adminform.jsp");
    }
    public void test(){

        this.renderText("this is test function");
    }
}
