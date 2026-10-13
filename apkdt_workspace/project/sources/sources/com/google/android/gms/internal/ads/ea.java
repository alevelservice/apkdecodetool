package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ea extends ja {

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ca f6384c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea(ca caVar) {
        this.f6384c = caVar;
    }

    @Override // com.google.android.gms.internal.ads.ja
    public final void a() {
        Context context;
        zzawv zzawvVar;
        Object obj;
        ew1 ew1Var;
        context = this.f6384c.f5946e;
        zzawvVar = this.f6384c.f5947f;
        fw1 fw1Var = new fw1(context, zzawvVar.f11000e);
        obj = this.f6384c.f5942a;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.n.l();
                ew1Var = this.f6384c.f5948g;
                gw1.a(ew1Var, fw1Var);
            } catch (IllegalArgumentException e2) {
                qd.c("Cannot config CSI reporter.", e2);
            }
        }
    }
}
