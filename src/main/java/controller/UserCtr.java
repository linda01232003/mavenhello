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
};
void  UserCtrTest()
        {
            int resut = addUser(0);
        assert resut == 0;
        int resut = addUser(1);
        assert resut == 0;
        int resut = addUser(2);
        assert resut == 1;
        }
