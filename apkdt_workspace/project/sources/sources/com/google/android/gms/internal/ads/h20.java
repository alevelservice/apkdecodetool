package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h20 implements g {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ t20 f6984a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ViewGroup f6985b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ c20 f6986c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h20(c20 c20Var, t20 t20Var, ViewGroup viewGroup) {
        this.f6986c = c20Var;
        this.f6984a = t20Var;
        this.f6985b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.g
    public final void a() {
        boolean a2;
        c20 c20Var = this.f6986c;
        a2 = c20.a(this.f6984a, zzbun.zzflv);
        if (a2) {
            this.f6984a.onClick(this.f6985b);
        }
    }

    @Override // com.google.android.gms.internal.ads.g
    public final void a(MotionEvent motionEvent) {
        this.f6984a.onTouch(null, motionEvent);
    }
}
