package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class gu1 extends ku1<zzve> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Context f6974b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zztw f6975c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f6976d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzajd f6977e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ eu1 f6978f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gu1(eu1 eu1Var, Context context, zztw zztwVar, String str, zzajd zzajdVar) {
        this.f6978f = eu1Var;
        this.f6974b = context;
        this.f6975c = zztwVar;
        this.f6976d = str;
        this.f6977e = zzajdVar;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a() {
        eu1.a(this.f6974b, "interstitial");
        return new zzxj();
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve b() {
        ut1 ut1Var;
        ut1Var = this.f6978f.f6503a;
        return ut1Var.a(this.f6974b, this.f6975c, this.f6976d, this.f6977e, 2);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a(zzvn zzvnVar) {
        return zzvnVar.zzb(ObjectWrapper.wrap(this.f6974b), this.f6975c, this.f6976d, this.f6977e, 15300000);
    }
}
