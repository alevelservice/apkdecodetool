package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ng1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private final View f8345l;

    public ng1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, View view) {
        super(cf1Var, str, str2, bVar, i2, 57);
        this.f8345l = view;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        if (this.f8345l != null) {
            Boolean bool = (Boolean) mu1.e().a(aw1.H1);
            nf1 nf1Var = new nf1((String) this.f9349i.invoke(null, this.f8345l, this.f9345e.a().getResources().getDisplayMetrics(), bool));
            ev.f.a k2 = ev.f.k();
            k2.a(nf1Var.f8332a.longValue());
            k2.b(nf1Var.f8333b.longValue());
            k2.c(nf1Var.f8334c.longValue());
            if (bool.booleanValue()) {
                k2.d(nf1Var.f8335d.longValue());
            }
            this.f9348h.a((ev.f) k2.s());
        }
    }
}
