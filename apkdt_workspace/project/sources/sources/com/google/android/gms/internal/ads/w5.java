package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class w5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AdOverlayInfoParcel f10032e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzalz f10033f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(zzalz zzalzVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f10033f = zzalzVar;
        this.f10032e = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        com.google.android.gms.ads.internal.n.b();
        activity = this.f10033f.f10941a;
        com.google.android.gms.ads.internal.overlay.j.a(activity, this.f10032e, true);
    }
}
