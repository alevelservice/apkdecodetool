package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xz implements jt, fx {

    /* renamed from: e, reason: collision with root package name */
    private final x8 f10447e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f10448f;

    /* renamed from: g, reason: collision with root package name */
    private final a9 f10449g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private final View f10450h;

    /* renamed from: i, reason: collision with root package name */
    private String f10451i;

    /* renamed from: j, reason: collision with root package name */
    private final int f10452j;

    public xz(x8 x8Var, Context context, a9 a9Var, @Nullable View view, int i2) {
        this.f10447e = x8Var;
        this.f10448f = context;
        this.f10449g = a9Var;
        this.f10450h = view;
        this.f10452j = i2;
    }

    @Override // com.google.android.gms.internal.ads.jt
    @ParametersAreNonnullByDefault
    public final void a(zzape zzapeVar, String str, String str2) {
        if (this.f10449g.a(this.f10448f)) {
            try {
                this.f10449g.a(this.f10448f, this.f10449g.e(this.f10448f), this.f10447e.a(), zzapeVar.getType(), zzapeVar.getAmount());
            } catch (RemoteException e2) {
                qd.c("Remote Exception to get reward item.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.fx
    public final void d() {
        this.f10451i = this.f10449g.b(this.f10448f);
        String valueOf = String.valueOf(this.f10451i);
        String str = this.f10452j == 7 ? "/Rewarded" : "/Interstitial";
        this.f10451i = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
        this.f10447e.a(false);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
        View view = this.f10450h;
        if (view != null && this.f10451i != null) {
            this.f10449g.c(view.getContext(), this.f10451i);
        }
        this.f10447e.a(true);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
    }
}
