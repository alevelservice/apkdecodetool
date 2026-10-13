package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class aq0 implements ko0<xp0> {

    /* renamed from: a, reason: collision with root package name */
    mv1 f5644a;

    /* renamed from: b, reason: collision with root package name */
    private tz0 f5645b;

    /* renamed from: c, reason: collision with root package name */
    List<String> f5646c;

    public aq0(mv1 mv1Var, tz0 tz0Var, List<String> list) {
        this.f5644a = mv1Var;
        this.f5645b = tz0Var;
        this.f5646c = list;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<xp0> a() {
        return this.f5645b.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zp0

            /* renamed from: e, reason: collision with root package name */
            private final aq0 f10826e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10826e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                aq0 aq0Var = this.f10826e;
                return new xp0(aq0Var.f5644a.a(aq0Var.f5646c));
            }
        });
    }
}
