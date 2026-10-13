package androidx.webkit.e;

import android.annotation.SuppressLint;
import android.webkit.SafeBrowsingResponse;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.SafeBrowsingResponseBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: SafeBrowsingResponseImpl.java */
/* loaded from: classes.dex */
public class b extends androidx.webkit.a {

    /* renamed from: a, reason: collision with root package name */
    private SafeBrowsingResponse f3070a;

    /* renamed from: b, reason: collision with root package name */
    private SafeBrowsingResponseBoundaryInterface f3071b;

    public b(@NonNull InvocationHandler invocationHandler) {
        this.f3071b = (SafeBrowsingResponseBoundaryInterface) BoundaryInterfaceReflectionUtil.a(SafeBrowsingResponseBoundaryInterface.class, invocationHandler);
    }

    private SafeBrowsingResponseBoundaryInterface a() {
        if (this.f3071b == null) {
            this.f3071b = (SafeBrowsingResponseBoundaryInterface) BoundaryInterfaceReflectionUtil.a(SafeBrowsingResponseBoundaryInterface.class, e.c().a(this.f3070a));
        }
        return this.f3071b;
    }

    @RequiresApi(27)
    private SafeBrowsingResponse b() {
        if (this.f3070a == null) {
            this.f3070a = e.c().a(Proxy.getInvocationHandler(this.f3071b));
        }
        return this.f3070a;
    }

    public b(@NonNull SafeBrowsingResponse safeBrowsingResponse) {
        this.f3070a = safeBrowsingResponse;
    }

    @Override // androidx.webkit.a
    @SuppressLint({"NewApi"})
    public void a(boolean z) {
        d feature = d.getFeature("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
        if (feature.isSupportedByFramework()) {
            b().showInterstitial(z);
        } else {
            if (feature.isSupportedByWebView()) {
                a().showInterstitial(z);
                return;
            }
            throw d.getUnsupportedOperationException();
        }
    }
}
