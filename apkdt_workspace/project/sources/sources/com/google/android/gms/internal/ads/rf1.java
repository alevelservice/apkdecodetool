package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rf1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private final Activity f9124l;
    private final View m;

    public rf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, View view, Activity activity) {
        super(cf1Var, str, str2, bVar, i2, 62);
        this.m = view;
        this.f9124l = activity;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        if (this.m == null) {
            return;
        }
        boolean booleanValue = ((Boolean) mu1.e().a(aw1.u1)).booleanValue();
        Object[] objArr = (Object[]) this.f9349i.invoke(null, this.m, this.f9124l, Boolean.valueOf(booleanValue));
        synchronized (this.f9348h) {
            this.f9348h.E(((Long) objArr[0]).longValue());
            this.f9348h.F(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.f9348h.g((String) objArr[2]);
            }
        }
    }
}
