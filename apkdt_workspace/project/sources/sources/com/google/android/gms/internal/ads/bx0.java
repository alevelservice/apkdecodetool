package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bx0 {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    private static final Object f5879a;

    static {
        Object a2 = a();
        f5879a = a2;
        if (a2 != null) {
            a("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (f5879a == null) {
            return;
        }
        b();
    }

    public static void a(Throwable th) {
        uw0.a(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }

    @Deprecated
    public static RuntimeException b(Throwable th) {
        a(th);
        throw new RuntimeException(th);
    }

    @NullableDecl
    private static Method b() {
        try {
            Method a2 = a("getStackTraceDepth", Throwable.class);
            if (a2 == null) {
                return null;
            }
            a2.invoke(a(), new Throwable());
            return a2;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @NullableDecl
    private static Object a() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NullableDecl
    private static Method a(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }
}
