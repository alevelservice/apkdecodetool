package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xl0 implements ko0<cm0> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10385a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f10386b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xl0(Context context, tz0 tz0Var) {
        this.f10385a = context;
        this.f10386b = tz0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<cm0> a() {
        return this.f10386b.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.am0

            /* renamed from: e, reason: collision with root package name */
            private final xl0 f5616e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5616e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f5616e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ cm0 b() {
        com.google.android.gms.ads.internal.n.c();
        String l2 = wa.l(this.f10385a);
        com.google.android.gms.ads.internal.n.c();
        return new cm0(l2, wa.m(this.f10385a));
    }
}
