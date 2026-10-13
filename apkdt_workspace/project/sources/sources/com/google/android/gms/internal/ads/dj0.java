package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dj0 {

    /* renamed from: a, reason: collision with root package name */
    private final x10 f6230a;

    /* renamed from: b, reason: collision with root package name */
    private final zi0 f6231b = new zi0();

    /* renamed from: c, reason: collision with root package name */
    private final ot f6232c;

    public dj0(x10 x10Var) {
        this.f6230a = x10Var;
        final zi0 zi0Var = this.f6231b;
        final zzafp e2 = this.f6230a.e();
        this.f6232c = new ot(zi0Var, e2) { // from class: com.google.android.gms.internal.ads.cj0

            /* renamed from: e, reason: collision with root package name */
            private final zi0 f6030e;

            /* renamed from: f, reason: collision with root package name */
            private final zzafp f6031f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6030e = zi0Var;
                this.f6031f = e2;
            }

            @Override // com.google.android.gms.internal.ads.ot
            public final void onAdFailedToLoad(int i2) {
                zi0 zi0Var2 = this.f6030e;
                zzafp zzafpVar = this.f6031f;
                zi0Var2.onAdFailedToLoad(i2);
                if (zzafpVar != null) {
                    try {
                        zzafpVar.zzcl(i2);
                    } catch (RemoteException e3) {
                        qd.d("#007 Could not call remote method.", e3);
                    }
                }
            }
        };
    }

    public final void a(zzur zzurVar) {
        this.f6231b.a(zzurVar);
    }

    public final jt b() {
        return this.f6231b;
    }

    public final qu c() {
        return this.f6231b;
    }

    public final ot d() {
        return this.f6232c;
    }

    public final wt e() {
        return this.f6231b;
    }

    public final st1 f() {
        return this.f6231b;
    }

    public final b00 a() {
        return new b00(this.f6230a, this.f6231b.a());
    }
}
