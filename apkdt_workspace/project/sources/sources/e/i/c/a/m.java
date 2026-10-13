package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Throwables.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    @GwtIncompatible
    private static final Object f17995a = b();

    static {
        if (f17995a != null) {
            a();
        }
        if (f17995a == null) {
            return;
        }
        c();
    }

    public static void a(Throwable th) {
        j.a(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }

    @NullableDecl
    @GwtIncompatible
    private static Object b() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NullableDecl
    @GwtIncompatible
    private static Method c() {
        try {
            Method a2 = a("getStackTraceDepth", Throwable.class);
            if (a2 == null) {
                return null;
            }
            a2.invoke(b(), new Throwable());
            return a2;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @NullableDecl
    @GwtIncompatible
    private static Method a() {
        return a("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @NullableDecl
    @GwtIncompatible
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
