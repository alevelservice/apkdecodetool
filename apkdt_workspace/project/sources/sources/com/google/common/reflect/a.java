package com.google.common.reflect;

import com.google.common.annotations.Beta;
import e.i.c.a.j;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* compiled from: Reflection.java */
@Beta
/* loaded from: classes.dex */
public final class a {
    public static <T> T a(Class<T> cls, InvocationHandler invocationHandler) {
        j.a(invocationHandler);
        j.a(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
