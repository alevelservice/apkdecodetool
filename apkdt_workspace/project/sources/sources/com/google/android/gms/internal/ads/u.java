package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class u implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ PublisherAdView f9656e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzve f9657f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzacz f9658g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(zzacz zzaczVar, PublisherAdView publisherAdView, zzve zzveVar) {
        this.f9658g = zzaczVar;
        this.f9656e = publisherAdView;
        this.f9657f = zzveVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.formats.f fVar;
        if (!this.f9656e.zza(this.f9657f)) {
            qd.d("Could not bind.");
        } else {
            fVar = this.f9658g.f10895e;
            fVar.a(this.f9656e);
        }
    }
}
