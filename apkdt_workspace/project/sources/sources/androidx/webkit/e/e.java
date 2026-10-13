package androidx.webkit.e;

import android.os.Build;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebViewGlueCommunicator.java */
/* loaded from: classes.dex */
public class e {

    /* compiled from: WebViewGlueCommunicator.java */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        static final l f3076a = new l(e.d().getWebkitToCompatConverter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebViewGlueCommunicator.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        static final g f3077a = e.a();
    }

    @NonNull
    static g a() {
        if (Build.VERSION.SDK_INT < 21) {
            return new androidx.webkit.e.a();
        }
        try {
            return new h((WebViewProviderFactoryBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebViewProviderFactoryBoundaryInterface.class, b()));
        } catch (ClassNotFoundException unused) {
            return new androidx.webkit.e.a();
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static InvocationHandler b() {
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, e()).getDeclaredMethod("createWebViewProviderFactory", new Class[0]).invoke(null, new Object[0]);
    }

    @NonNull
    public static l c() {
        return a.f3076a;
    }

    @NonNull
    public static g d() {
        return b.f3077a;
    }

    public static ClassLoader e() {
        if (Build.VERSION.SDK_INT >= 28) {
            return WebView.getWebViewClassLoader();
        }
        return f().getClass().getClassLoader();
    }

    private static Object f() {
        try {
            Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }
}
