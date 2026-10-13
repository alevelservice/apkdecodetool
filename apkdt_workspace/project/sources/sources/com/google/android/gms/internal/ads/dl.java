package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class dl implements i00 {

    /* renamed from: a, reason: collision with root package name */
    private hw f6246a;

    /* renamed from: b, reason: collision with root package name */
    private ws f6247b;

    /* renamed from: c, reason: collision with root package name */
    private b00 f6248c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ bl f6249d;

    private dl(bl blVar) {
        this.f6249d = blVar;
    }

    @Override // com.google.android.gms.internal.ads.i00
    public final /* synthetic */ i00 b(b00 b00Var) {
        ue1.a(b00Var);
        this.f6248c = b00Var;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ts
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final f00 a() {
        ue1.a(this.f6246a, (Class<hw>) hw.class);
        ue1.a(this.f6247b, (Class<ws>) ws.class);
        ue1.a(this.f6248c, (Class<b00>) b00.class);
        return new gl(this.f6249d, this.f6248c, new tr(), new it0(), new ns(), new s80(), this.f6246a, this.f6247b, new rt0());
    }

    @Override // com.google.android.gms.internal.ads.i00
    public final /* synthetic */ i00 b(hw hwVar) {
        ue1.a(hwVar);
        this.f6246a = hwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.i00
    public final /* synthetic */ i00 d(ws wsVar) {
        ue1.a(wsVar);
        this.f6247b = wsVar;
        return this;
    }
}
