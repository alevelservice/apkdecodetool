package androidx.webkit.e;

import android.annotation.SuppressLint;
import android.webkit.WebResourceError;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebResourceErrorImpl.java */
/* loaded from: classes.dex */
public class c extends WebResourceErrorCompat {

    /* renamed from: a, reason: collision with root package name */
    private WebResourceError f3072a;

    /* renamed from: b, reason: collision with root package name */
    private WebResourceErrorBoundaryInterface f3073b;

    public c(@NonNull InvocationHandler invocationHandler) {
        this.f3073b = (WebResourceErrorBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebResourceErrorBoundaryInterface.class, invocationHandler);
    }

    private WebResourceErrorBoundaryInterface c() {
        if (this.f3073b == null) {
            this.f3073b = (WebResourceErrorBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebResourceErrorBoundaryInterface.class, e.c().a(this.f3072a));
        }
        return this.f3073b;
    }

    @RequiresApi(23)
    private WebResourceError d() {
        if (this.f3072a == null) {
            this.f3072a = e.c().b(Proxy.getInvocationHandler(this.f3073b));
        }
        return this.f3072a;
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    @NonNull
    @SuppressLint({"NewApi"})
    public CharSequence a() {
        d feature = d.getFeature("WEB_RESOURCE_ERROR_GET_DESCRIPTION");
        if (feature.isSupportedByFramework()) {
            return d().getDescription();
        }
        if (feature.isSupportedByWebView()) {
            return c().getDescription();
        }
        throw d.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    @SuppressLint({"NewApi"})
    public int b() {
        d feature = d.getFeature("WEB_RESOURCE_ERROR_GET_CODE");
        if (feature.isSupportedByFramework()) {
            return d().getErrorCode();
        }
        if (feature.isSupportedByWebView()) {
            return c().getErrorCode();
        }
        throw d.getUnsupportedOperationException();
    }

    public c(@NonNull WebResourceError webResourceError) {
        this.f3072a = webResourceError;
    }
}
