package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ha0 implements oe1<qz0<String>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f7029a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f7030b;

    private ha0(af1<zu0> af1Var, af1<Context> af1Var2) {
        this.f7029a = af1Var;
        this.f7030b = af1Var2;
    }

    public static ha0 a(af1<zu0> af1Var, af1<Context> af1Var2) {
        return new ha0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zu0 zu0Var = this.f7029a.get();
        final Context context = this.f7030b.get();
        hu0 a2 = zu0Var.a((zu0) wu0.WEBVIEW_COOKIE).a(new Callable(context) { // from class: com.google.android.gms.internal.ads.y90

            /* renamed from: e, reason: collision with root package name */
            private final Context f10517e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10517e = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager c2 = com.google.android.gms.ads.internal.n.e().c(this.f10517e);
                return c2 != null ? c2.getCookie("googleads.g.doubleclick.net") : "";
            }
        }).a(1L, TimeUnit.SECONDS).a(Exception.class, ba0.f5737a).a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
