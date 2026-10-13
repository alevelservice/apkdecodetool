package androidx.webkit.e;

import android.webkit.WebViewRenderProcess;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewRendererBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebViewRenderProcessImpl.java */
/* loaded from: classes.dex */
public class k extends androidx.webkit.c {

    /* renamed from: c, reason: collision with root package name */
    private static WeakHashMap<WebViewRenderProcess, k> f3090c = new WeakHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private WebViewRendererBoundaryInterface f3091a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<WebViewRenderProcess> f3092b;

    /* compiled from: WebViewRenderProcessImpl.java */
    /* loaded from: classes.dex */
    static class a implements Callable<Object> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ WebViewRendererBoundaryInterface f3093e;

        a(WebViewRendererBoundaryInterface webViewRendererBoundaryInterface) {
            this.f3093e = webViewRendererBoundaryInterface;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new k(this.f3093e);
        }
    }

    public k(@NonNull WebViewRendererBoundaryInterface webViewRendererBoundaryInterface) {
        this.f3091a = webViewRendererBoundaryInterface;
    }

    @NonNull
    public static k a(@NonNull InvocationHandler invocationHandler) {
        WebViewRendererBoundaryInterface webViewRendererBoundaryInterface = (WebViewRendererBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebViewRendererBoundaryInterface.class, invocationHandler);
        return (k) webViewRendererBoundaryInterface.getOrCreatePeer(new a(webViewRendererBoundaryInterface));
    }

    public k(@NonNull WebViewRenderProcess webViewRenderProcess) {
        this.f3092b = new WeakReference<>(webViewRenderProcess);
    }

    @NonNull
    public static k a(@NonNull WebViewRenderProcess webViewRenderProcess) {
        k kVar = f3090c.get(webViewRenderProcess);
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(webViewRenderProcess);
        f3090c.put(webViewRenderProcess, kVar2);
        return kVar2;
    }

    @Override // androidx.webkit.c
    public boolean a() {
        d feature = d.getFeature("WEB_VIEW_RENDERER_TERMINATE");
        if (feature.isSupportedByFramework()) {
            WebViewRenderProcess webViewRenderProcess = this.f3092b.get();
            if (webViewRenderProcess != null) {
                return webViewRenderProcess.terminate();
            }
            return false;
        }
        if (feature.isSupportedByWebView()) {
            return this.f3091a.terminate();
        }
        throw d.getUnsupportedOperationException();
    }
}
