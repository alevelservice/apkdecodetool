package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xl implements fs0 {

    /* renamed from: a, reason: collision with root package name */
    private af1<Context> f10376a;

    /* renamed from: b, reason: collision with root package name */
    private af1<zq0<y50, r50>> f10377b;

    /* renamed from: c, reason: collision with root package name */
    private af1<ar0> f10378c;

    /* renamed from: d, reason: collision with root package name */
    private af1<us0> f10379d;

    /* renamed from: e, reason: collision with root package name */
    private af1<yr0> f10380e;

    /* renamed from: f, reason: collision with root package name */
    private af1<zzcuv> f10381f;

    /* renamed from: g, reason: collision with root package name */
    private af1<String> f10382g;

    /* renamed from: h, reason: collision with root package name */
    private af1<zzcup> f10383h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ bl f10384i;

    private xl(bl blVar, Context context, String str) {
        af1 af1Var;
        af1 af1Var2;
        this.f10384i = blVar;
        this.f10376a = re1.a(context);
        this.f10377b = new yq0(this.f10376a);
        this.f10378c = pe1.a(wr0.a());
        this.f10379d = pe1.a(xs0.a());
        af1<Context> af1Var3 = this.f10376a;
        af1Var = this.f10384i.f5784c;
        af1Var2 = this.f10384i.v;
        this.f10380e = pe1.a(new zr0(af1Var3, af1Var, af1Var2, this.f10377b, this.f10378c, bt0.a(), this.f10379d));
        this.f10381f = pe1.a(new hs0(this.f10380e, this.f10378c, this.f10379d));
        this.f10382g = re1.b(str);
        this.f10383h = pe1.a(new cs0(this.f10382g, this.f10380e, this.f10378c, this.f10379d));
    }

    @Override // com.google.android.gms.internal.ads.fs0
    public final zzcuv a() {
        return this.f10381f.get();
    }

    @Override // com.google.android.gms.internal.ads.fs0
    public final zzcup b() {
        return this.f10383h.get();
    }
}
