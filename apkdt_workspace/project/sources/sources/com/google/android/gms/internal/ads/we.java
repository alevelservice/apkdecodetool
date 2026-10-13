package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class we implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f10098e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f10099f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzaxr f10100g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public we(zzaxr zzaxrVar, String str, String str2) {
        this.f10100g = zzaxrVar;
        this.f10098e = str;
        this.f10099f = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f10100g.r;
        if (cfVar != null) {
            cfVar2 = this.f10100g.r;
            cfVar2.zzn(this.f10098e, this.f10099f);
        }
    }
}
