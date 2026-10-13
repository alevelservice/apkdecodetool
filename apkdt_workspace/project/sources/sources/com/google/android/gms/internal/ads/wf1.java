package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wf1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private long f10112l;

    public wf1(cf1 cf1Var, String str, String str2, ev.b bVar, long j2, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 25);
        this.f10112l = j2;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        long longValue = ((Long) this.f9349i.invoke(null, new Object[0])).longValue();
        synchronized (this.f9348h) {
            this.f9348h.G(longValue);
            if (this.f10112l != 0) {
                this.f9348h.i(longValue - this.f10112l);
                this.f9348h.l(this.f10112l);
            }
        }
    }
}
