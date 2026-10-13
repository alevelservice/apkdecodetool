package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uf1 extends sg1 {
    public uf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 5);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.b(-1L);
        this.f9348h.c(-1L);
        int[] iArr = (int[]) this.f9349i.invoke(null, this.f9345e.a());
        synchronized (this.f9348h) {
            this.f9348h.b(iArr[0]);
            this.f9348h.c(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f9348h.B(iArr[2]);
            }
        }
    }
}
