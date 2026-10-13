package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c90 implements com.google.android.gms.ads.doubleclick.a, jt, ot, vt, wt, qu, sv, fv0, st1 {

    /* renamed from: e, reason: collision with root package name */
    private final List<Object> f5938e;

    /* renamed from: f, reason: collision with root package name */
    private final q80 f5939f;

    /* renamed from: g, reason: collision with root package name */
    private long f5940g;

    public c90(q80 q80Var, mk mkVar) {
        this.f5939f = q80Var;
        this.f5938e = Collections.singletonList(mkVar);
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void a(Context context) {
        a(vt.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(vs0 vs0Var) {
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void b(Context context) {
        a(vt.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void c(Context context) {
        a(vt.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final void onAdClicked() {
        a(st1.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
        a(jt.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(int i2) {
        a(ot.class, "onAdFailedToLoad", Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final void onAdImpression() {
        a(wt.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
        a(jt.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        long c2 = com.google.android.gms.ads.internal.n.j().c() - this.f5940g;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(c2);
        na.e(sb.toString());
        a(qu.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
        a(jt.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.a
    public final void onAppEvent(String str, String str2) {
        a(com.google.android.gms.ads.doubleclick.a.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
        a(jt.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
        a(jt.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.jt
    @ParametersAreNonnullByDefault
    public final void a(zzape zzapeVar, String str, String str2) {
        a(jt.class, "onRewarded", zzapeVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void b(wu0 wu0Var, String str) {
        a(xu0.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void c(wu0 wu0Var, String str) {
        a(xu0.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str, Throwable th) {
        a(xu0.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str) {
        a(xu0.class, "onTaskSucceeded", str);
    }

    private final void a(Class<?> cls, String str, Object... objArr) {
        q80 q80Var = this.f5939f;
        List<Object> list = this.f5938e;
        String valueOf = String.valueOf(cls.getSimpleName());
        q80Var.a(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(zzaok zzaokVar) {
        this.f5940g = com.google.android.gms.ads.internal.n.j().c();
        a(sv.class, "onAdRequest", new Object[0]);
    }
}
