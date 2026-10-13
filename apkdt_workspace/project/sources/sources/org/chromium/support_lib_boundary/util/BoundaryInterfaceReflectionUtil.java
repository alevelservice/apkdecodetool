package org.chromium.support_lib_boundary.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collection;

@SuppressLint({"BanTargetApiAnnotation"})
/* loaded from: classes2.dex */
public class BoundaryInterfaceReflectionUtil {

    @TargetApi(19)
    /* loaded from: classes2.dex */
    private static class InvocationHandlerWithDelegateGetter implements InvocationHandler {

        /* renamed from: e, reason: collision with root package name */
        private final Object f20196e;

        public InvocationHandlerWithDelegateGetter(@NonNull Object obj) {
            this.f20196e = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            try {
                return BoundaryInterfaceReflectionUtil.a(method, this.f20196e.getClass().getClassLoader()).invoke(this.f20196e, objArr);
            } catch (InvocationTargetException e2) {
                throw e2.getTargetException();
            } catch (ReflectiveOperationException e3) {
                throw new RuntimeException("Reflection failed for method " + method, e3);
            }
        }
    }

    public static Method a(Method method, ClassLoader classLoader) {
        return Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
    }

    @Nullable
    public static <T> T a(@NonNull Class<T> cls, @Nullable InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(BoundaryInterfaceReflectionUtil.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    @Nullable
    @TargetApi(19)
    public static InvocationHandler a(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return new InvocationHandlerWithDelegateGetter(obj);
    }

    private static boolean a() {
        return "eng".equals(Build.TYPE) || "userdebug".equals(Build.TYPE);
    }

    public static boolean a(Collection<String> collection, String str) {
        if (!collection.contains(str)) {
            if (a()) {
                if (collection.contains(str + ":dev")) {
                }
            }
            return false;
        }
        return true;
    }
}
