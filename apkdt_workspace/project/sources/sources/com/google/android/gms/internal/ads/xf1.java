package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xf1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private static volatile Long f10337l;
    private static final Object m = new Object();

    public xf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 44);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        if (f10337l == null) {
            synchronized (m) {
                if (f10337l == null) {
                    f10337l = (Long) this.f9349i.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9348h) {
            this.f9348h.w(f10337l.longValue());
        }
    }
}
