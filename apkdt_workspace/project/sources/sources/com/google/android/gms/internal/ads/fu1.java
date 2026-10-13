package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class fu1 extends ku1<zzamu> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Activity f6724b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ eu1 f6725c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fu1(eu1 eu1Var, Activity activity) {
        this.f6725c = eu1Var;
        this.f6724b = activity;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    protected final /* synthetic */ zzamu a() {
        eu1.a(this.f6724b, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzamu b() {
        p6 p6Var;
        p6Var = this.f6725c.f6506d;
        return p6Var.a(this.f6724b);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzamu a(zzvn zzvnVar) {
        return zzvnVar.zzf(ObjectWrapper.wrap(this.f6724b));
    }
}
