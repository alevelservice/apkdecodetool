package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class np0 implements ko0<op0> {

    /* renamed from: a, reason: collision with root package name */
    zr1 f8407a;

    /* renamed from: b, reason: collision with root package name */
    private tz0 f8408b;

    /* renamed from: c, reason: collision with root package name */
    Context f8409c;

    public np0(zr1 zr1Var, tz0 tz0Var, Context context) {
        this.f8407a = zr1Var;
        this.f8408b = tz0Var;
        this.f8409c = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<op0> a() {
        return this.f8408b.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.qp0

            /* renamed from: e, reason: collision with root package name */
            private final np0 f8990e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8990e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                np0 np0Var = this.f8990e;
                return new op0(np0Var.f8407a.a(np0Var.f8409c));
            }
        });
    }
}
