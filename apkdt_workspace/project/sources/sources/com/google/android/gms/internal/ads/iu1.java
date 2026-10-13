package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class iu1 extends ku1<zzux> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Context f7377b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f7378c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ zzajd f7379d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ eu1 f7380e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iu1(eu1 eu1Var, Context context, String str, zzajd zzajdVar) {
        this.f7380e = eu1Var;
        this.f7377b = context;
        this.f7378c = str;
        this.f7379d = zzajdVar;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    protected final /* synthetic */ zzux a() {
        eu1.a(this.f7377b, "native_ad");
        return new zzxf();
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzux b() {
        vt1 vt1Var;
        vt1Var = this.f7380e.f6504b;
        return vt1Var.a(this.f7377b, this.f7378c, this.f7379d);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzux a(zzvn zzvnVar) {
        return zzvnVar.zza(ObjectWrapper.wrap(this.f7377b), this.f7378c, this.f7379d, 15300000);
    }
}
