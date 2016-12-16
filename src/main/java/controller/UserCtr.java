package controller;

import com.jfinal.core.Controller;
import service.UserService;

/**
 * Created by Administrator on 2016/10/28.
 */
public class UserCtr extends Controller {
    public void index()
    {
        this.renderText("this is mavenhello;");
    }
    public void test()
    {
        this.renderText("this is test;");
    }
    public void addUser()
    {
        UserService userSer = new UserService();
        this.renderText("this is addUser");
        userSer.addUser("limingming3");
    }
    public void addtest(){
        this.renderText("this is addtest function");
    }
};
