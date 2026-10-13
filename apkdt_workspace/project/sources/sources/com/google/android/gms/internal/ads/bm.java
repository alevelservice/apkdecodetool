package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class bm implements nj0 {

    /* renamed from: a, reason: collision with root package name */
    private ws f5796a;

    /* renamed from: b, reason: collision with root package name */
    private rj0 f5797b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bl f5798c;

    private bm(bl blVar) {
        this.f5798c = blVar;
    }

    @Override // com.google.android.gms.internal.ads.nj0
    public final lj0 a() {
        ue1.a(this.f5796a, (Class<ws>) ws.class);
        ue1.a(this.f5797b, (Class<rj0>) rj0.class);
        return new am(this.f5798c, this.f5797b, new tr(), new s80(), this.f5796a, new rt0());
    }

    @Override // com.google.android.gms.internal.ads.nj0
    @Deprecated
    public final /* synthetic */ nj0 a(hw hwVar) {
        ue1.a(hwVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.nj0
    public final /* synthetic */ nj0 a(rj0 rj0Var) {
        ue1.a(rj0Var);
        this.f5797b = rj0Var;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.nj0
    public final /* synthetic */ nj0 a(ws wsVar) {
        ue1.a(wsVar);
        this.f5796a = wsVar;
        return this;
    }
}
