package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ao0 implements ko0<xn0> {

    /* renamed from: a, reason: collision with root package name */
    private final a9 f5627a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f5628b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f5629c;

    public ao0(a9 a9Var, tz0 tz0Var, Context context) {
        this.f5627a = a9Var;
        this.f5628b = tz0Var;
        this.f5629c = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<xn0> a() {
        return this.f5628b.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zn0

            /* renamed from: e, reason: collision with root package name */
            private final ao0 f10810e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10810e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10810e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ xn0 b() {
        if (!this.f5627a.a(this.f5629c)) {
            return new xn0(null, null, null, null, null);
        }
        String c2 = this.f5627a.c(this.f5629c);
        String str = c2 == null ? "" : c2;
        String d2 = this.f5627a.d(this.f5629c);
        String str2 = d2 == null ? "" : d2;
        String e2 = this.f5627a.e(this.f5629c);
        String str3 = e2 == null ? "" : e2;
        String f2 = this.f5627a.f(this.f5629c);
        return new xn0(str, str2, str3, f2 == null ? "" : f2, "TIME_OUT".equals(str2) ? (Long) mu1.e().a(aw1.n0) : null);
    }
}
