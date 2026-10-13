package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qm0 implements ko0<rm0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f8961a;

    /* renamed from: b, reason: collision with root package name */
    private final ks0 f8962b;

    public qm0(tz0 tz0Var, ks0 ks0Var) {
        this.f8961a = tz0Var;
        this.f8962b = ks0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<rm0> a() {
        return this.f8961a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.tm0

            /* renamed from: e, reason: collision with root package name */
            private final qm0 f9605e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9605e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f9605e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ rm0 b() {
        return new rm0(this.f8962b);
    }
}
