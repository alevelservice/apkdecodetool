package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.zzamx;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzs extends zzamx {

    /* renamed from: e, reason: collision with root package name */
    private AdOverlayInfoParcel f4591e;

    /* renamed from: f, reason: collision with root package name */
    private Activity f4592f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f4593g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f4594h = false;

    public zzs(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f4591e = adOverlayInfoParcel;
        this.f4592f = activity;
    }

    private final synchronized void a() {
        if (!this.f4594h) {
            if (this.f4591e.f4552g != null) {
                this.f4591e.f4552g.a();
            }
            this.f4594h = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onBackPressed() {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onCreate(Bundle bundle) {
        m mVar;
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f4591e;
        if (adOverlayInfoParcel == null) {
            this.f4592f.finish();
            return;
        }
        if (z) {
            this.f4592f.finish();
            return;
        }
        if (bundle == null) {
            st1 st1Var = adOverlayInfoParcel.f4551f;
            if (st1Var != null) {
                st1Var.onAdClicked();
            }
            if (this.f4592f.getIntent() != null && this.f4592f.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (mVar = this.f4591e.f4552g) != null) {
                mVar.b();
            }
        }
        com.google.android.gms.ads.internal.n.a();
        Activity activity = this.f4592f;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f4591e;
        if (a.a(activity, adOverlayInfoParcel2.f4550e, adOverlayInfoParcel2.m)) {
            return;
        }
        this.f4592f.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onDestroy() {
        if (this.f4592f.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onPause() {
        m mVar = this.f4591e.f4552g;
        if (mVar != null) {
            mVar.onPause();
        }
        if (this.f4592f.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onResume() {
        if (this.f4593g) {
            this.f4592f.finish();
            return;
        }
        this.f4593g = true;
        m mVar = this.f4591e.f4552g;
        if (mVar != null) {
            mVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f4593g);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onStart() {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void onStop() {
        if (this.f4592f.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzag(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzcz() {
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final boolean zzsl() {
        return false;
    }
}
