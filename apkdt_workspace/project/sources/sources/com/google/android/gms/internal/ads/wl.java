package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class wl implements x50 {

    /* renamed from: a, reason: collision with root package name */
    private hw f10140a;

    /* renamed from: b, reason: collision with root package name */
    private ws f10141b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bl f10142c;

    private wl(bl blVar) {
        this.f10142c = blVar;
    }

    @Override // com.google.android.gms.internal.ads.x50
    public final /* synthetic */ x50 c(hw hwVar) {
        ue1.a(hwVar);
        this.f10140a = hwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.x50
    public final /* synthetic */ x50 e(ws wsVar) {
        ue1.a(wsVar);
        this.f10141b = wsVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ts
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final y50 a() {
        ue1.a(this.f10140a, (Class<hw>) hw.class);
        ue1.a(this.f10141b, (Class<ws>) ws.class);
        return new zl(this.f10142c, new tr(), new it0(), new ns(), new s80(), this.f10140a, this.f10141b, new rt0());
    }
}
