package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class kl implements ko {

    /* renamed from: a, reason: collision with root package name */
    private hw f7713a;

    /* renamed from: b, reason: collision with root package name */
    private ws f7714b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bl f7715c;

    private kl(bl blVar) {
        this.f7715c = blVar;
    }

    @Override // com.google.android.gms.internal.ads.ko
    @Deprecated
    public final /* synthetic */ ko a(qo qoVar) {
        ue1.a(qoVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ts
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final lo a() {
        ue1.a(this.f7713a, (Class<hw>) hw.class);
        ue1.a(this.f7714b, (Class<ws>) ws.class);
        return new jl(this.f7715c, new tr(), new it0(), new ns(), new s80(), this.f7713a, this.f7714b, new rt0());
    }

    @Override // com.google.android.gms.internal.ads.ko
    public final /* synthetic */ ko a(hw hwVar) {
        ue1.a(hwVar);
        this.f7713a = hwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ko
    public final /* synthetic */ ko c(ws wsVar) {
        ue1.a(wsVar);
        this.f7714b = wsVar;
        return this;
    }
}
