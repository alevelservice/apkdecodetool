package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class hu1 extends ku1<zzve> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Context f7168b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zztw f7169c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f7170d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ eu1 f7171e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hu1(eu1 eu1Var, Context context, zztw zztwVar, String str) {
        this.f7171e = eu1Var;
        this.f7168b = context;
        this.f7169c = zztwVar;
        this.f7170d = str;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a() {
        eu1.a(this.f7168b, "search");
        return new zzxj();
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve b() {
        ut1 ut1Var;
        ut1Var = this.f7171e.f6503a;
        return ut1Var.a(this.f7168b, this.f7169c, this.f7170d, null, 3);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzve a(zzvn zzvnVar) {
        return zzvnVar.zza(ObjectWrapper.wrap(this.f7168b), this.f7169c, this.f7170d, 15300000);
    }
}
