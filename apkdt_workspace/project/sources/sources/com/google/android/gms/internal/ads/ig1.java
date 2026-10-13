package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ig1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private List<Long> f7287l;

    public ig1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 31);
        this.f7287l = null;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.m(-1L);
        this.f9348h.n(-1L);
        if (this.f7287l == null) {
            this.f7287l = (List) this.f9349i.invoke(null, this.f9345e.a());
        }
        List<Long> list = this.f7287l;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.f9348h) {
            this.f9348h.m(this.f7287l.get(0).longValue());
            this.f9348h.n(this.f7287l.get(1).longValue());
        }
    }
}
