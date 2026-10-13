package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class du1 extends ku1<zzve> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Context f6312b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zztw f6313c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f6314d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzajd f6315e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ eu1 f6316f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public du1(eu1 eu1Var, Context context, zztw zztwVar, String str, zzajd zzajdVar) {
        this.f6316f = eu1Var;
        this.f6312b = context;
        this.f6313c = zztwVar;
        this.f6314d = str;
        this.f6315e = zzajdVar;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a() {
        eu1.a(this.f6312b, "banner");
        return new zzxj();
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve b() {
        ut1 ut1Var;
        ut1Var = this.f6316f.f6503a;
        return ut1Var.a(this.f6312b, this.f6313c, this.f6314d, this.f6315e, 1);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a(zzvn zzvnVar) {
        return zzvnVar.zza(ObjectWrapper.wrap(this.f6312b), this.f6313c, this.f6314d, this.f6315e, 15300000);
    }
}
