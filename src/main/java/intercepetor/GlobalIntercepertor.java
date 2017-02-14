package intercepetor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

/**
 * Created by Oliverlee on 2017/2/11.
 */
public class GlobalIntercepertor implements Interceptor {

    @Override
    public void intercept(Invocation invocation) {
        System.out.println("前拦截");
        invocation.invoke();
        System.out.println("后拦截");
    }
}
