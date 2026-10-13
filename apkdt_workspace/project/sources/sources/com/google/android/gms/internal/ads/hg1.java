package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hg1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private final boolean f7066l;

    public hg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 61);
        this.f7066l = cf1Var.k();
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        long longValue = ((Long) this.f9349i.invoke(null, this.f9345e.a(), Boolean.valueOf(this.f7066l))).longValue();
        synchronized (this.f9348h) {
            this.f9348h.D(longValue);
        }
    }
}
