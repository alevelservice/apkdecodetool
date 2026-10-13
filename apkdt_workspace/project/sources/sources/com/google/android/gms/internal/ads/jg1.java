package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jg1 extends sg1 {
    public jg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 51);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        synchronized (this.f9348h) {
            df1 df1Var = new df1((String) this.f9349i.invoke(null, new Object[0]));
            this.f9348h.y(df1Var.f6213a.longValue());
            this.f9348h.z(df1Var.f6214b.longValue());
        }
    }
}
