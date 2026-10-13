package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dn0 implements ko0<an0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f6258a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f6259b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<String> f6260c;

    public dn0(tz0 tz0Var, Context context, Set<String> set) {
        this.f6258a = tz0Var;
        this.f6259b = context;
        this.f6260c = set;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<an0> a() {
        return this.f6258a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.cn0

            /* renamed from: e, reason: collision with root package name */
            private final dn0 f6072e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6072e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f6072e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ an0 b() {
        boolean a2;
        if (((Boolean) mu1.e().a(aw1.P2)).booleanValue()) {
            a2 = an0.a((Set<String>) this.f6260c);
            if (a2) {
                return new an0(com.google.android.gms.ads.internal.n.r().a(this.f6259b));
            }
        }
        return new an0(null);
    }
}
