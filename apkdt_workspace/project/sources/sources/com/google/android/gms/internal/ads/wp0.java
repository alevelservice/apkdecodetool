package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wp0 implements ko0<tp0> {

    /* renamed from: a, reason: collision with root package name */
    private t9 f10167a;

    /* renamed from: b, reason: collision with root package name */
    private String f10168b;

    public wp0(t9 t9Var, tz0 tz0Var, String str) {
        this.f10167a = t9Var;
        this.f10168b = str;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<tp0> a() {
        new he();
        final qz0<String> a2 = gz0.a((Object) null);
        if (((Boolean) mu1.e().a(aw1.k3)).booleanValue()) {
            a2 = this.f10167a.a(this.f10168b);
        }
        final qz0<String> b2 = this.f10167a.b(this.f10168b);
        return gz0.a(a2, b2).a(new Callable(a2, b2) { // from class: com.google.android.gms.internal.ads.vp0

            /* renamed from: e, reason: collision with root package name */
            private final qz0 f9973e;

            /* renamed from: f, reason: collision with root package name */
            private final qz0 f9974f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9973e = a2;
                this.f9974f = b2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new tp0((String) this.f9973e.get(), (String) this.f9974f.get());
            }
        }, yd.f10540a);
    }
}
