package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mg1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private final mf1 f8131l;
    private long m;

    public mg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, mf1 mf1Var) {
        super(cf1Var, str, str2, bVar, i2, 53);
        this.f8131l = mf1Var;
        if (mf1Var != null) {
            this.m = mf1Var.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        if (this.f8131l != null) {
            this.f9348h.A(((Long) this.f9349i.invoke(null, Long.valueOf(this.m))).longValue());
        }
    }
}
