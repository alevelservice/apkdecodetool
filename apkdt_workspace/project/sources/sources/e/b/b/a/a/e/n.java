package e.b.b.a.a.e;

import java.lang.reflect.Method;

/* compiled from: ReflectUtil.java */
/* loaded from: classes.dex */
public class n {
    public static Object a(Object obj, String str, Class<?>[] clsArr, Object obj2, Object[] objArr) {
        Class<?> cls;
        if (obj instanceof Class) {
            cls = (Class) obj;
        } else {
            cls = Class.forName(String.valueOf(obj));
        }
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj2, objArr);
    }
}
