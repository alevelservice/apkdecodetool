package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fg1 extends sg1 {
    public fg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 3);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        t41 t41Var = new t41((String) this.f9349i.invoke(null, this.f9345e.a(), Boolean.valueOf(((Boolean) mu1.e().a(aw1.x1)).booleanValue())));
        synchronized (this.f9348h) {
            this.f9348h.a(t41Var.f9508a);
            this.f9348h.C(t41Var.f9509b);
        }
    }
}
