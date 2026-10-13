package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cg1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private static volatile String f6009l;
    private static final Object m = new Object();

    public cg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 1);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.i("E");
        if (f6009l == null) {
            synchronized (m) {
                if (f6009l == null) {
                    f6009l = (String) this.f9349i.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9348h) {
            this.f9348h.i(f6009l);
        }
    }
}
