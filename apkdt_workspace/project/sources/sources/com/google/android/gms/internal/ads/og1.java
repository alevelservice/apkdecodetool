package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class og1 extends sg1 {
    public og1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 48);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.a(m60.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f9349i.invoke(null, this.f9345e.a())).booleanValue();
        synchronized (this.f9348h) {
            if (booleanValue) {
                this.f9348h.a(m60.ENUM_TRUE);
            } else {
                this.f9348h.a(m60.ENUM_FALSE);
            }
        }
    }
}
