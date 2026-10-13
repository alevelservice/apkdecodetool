package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zzcgh extends zzala {

    /* renamed from: e, reason: collision with root package name */
    private bd0<zzalj, zzcgu> f11099e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ xd0 f11100f;

    private zzcgh(xd0 xd0Var, bd0<zzalj, zzcgu> bd0Var) {
        this.f11100f = xd0Var;
        this.f11099e = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zzaa(IObjectWrapper iObjectWrapper) {
        xd0.a(this.f11100f, (View) ObjectWrapper.unwrap(iObjectWrapper));
        this.f11099e.f5766c.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zzdg(String str) {
        this.f11099e.f5766c.onAdFailedToLoad(0);
    }
}
