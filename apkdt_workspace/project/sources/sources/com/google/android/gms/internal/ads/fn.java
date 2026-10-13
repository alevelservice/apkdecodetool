package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fn implements jt, wt, qu, st1 {

    /* renamed from: e, reason: collision with root package name */
    private final vs0 f6688e;

    /* renamed from: f, reason: collision with root package name */
    private final ns0 f6689f;

    /* renamed from: g, reason: collision with root package name */
    private final iv0 f6690g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f6691h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f6692i;

    public fn(vs0 vs0Var, ns0 ns0Var, iv0 iv0Var) {
        this.f6688e = vs0Var;
        this.f6689f = ns0Var;
        this.f6690g = iv0Var;
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void a(zzape zzapeVar, String str, String str2) {
        iv0 iv0Var = this.f6690g;
        vs0 vs0Var = this.f6688e;
        ns0 ns0Var = this.f6689f;
        iv0Var.a(vs0Var, ns0Var, ns0Var.f8422h, zzapeVar);
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final void onAdClicked() {
        iv0 iv0Var = this.f6690g;
        vs0 vs0Var = this.f6688e;
        ns0 ns0Var = this.f6689f;
        iv0Var.a(vs0Var, ns0Var, ns0Var.f8417c);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final synchronized void onAdImpression() {
        if (!this.f6692i) {
            this.f6690g.a(this.f6688e, this.f6689f, this.f6689f.f8418d);
            this.f6692i = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final synchronized void onAdLoaded() {
        if (this.f6691h) {
            ArrayList arrayList = new ArrayList(this.f6689f.f8418d);
            arrayList.addAll(this.f6689f.f8420f);
            this.f6690g.a(this.f6688e, this.f6689f, true, (List<String>) arrayList);
        } else {
            this.f6690g.a(this.f6688e, this.f6689f, this.f6689f.m);
            this.f6690g.a(this.f6688e, this.f6689f, this.f6689f.f8420f);
        }
        this.f6691h = true;
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
        iv0 iv0Var = this.f6690g;
        vs0 vs0Var = this.f6688e;
        ns0 ns0Var = this.f6689f;
        iv0Var.a(vs0Var, ns0Var, ns0Var.f8423i);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
        iv0 iv0Var = this.f6690g;
        vs0 vs0Var = this.f6688e;
        ns0 ns0Var = this.f6689f;
        iv0Var.a(vs0Var, ns0Var, ns0Var.f8421g);
    }
}
