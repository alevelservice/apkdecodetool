package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class o70 implements ot, wt, qu, sv, st1 {

    /* renamed from: e, reason: collision with root package name */
    private final ks1 f8495e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f8496f = false;

    public o70(ks1 ks1Var, @Nullable br0 br0Var) {
        this.f8495e = ks1Var;
        ks1Var.a(ms1.AD_REQUEST);
        if (br0Var == null || !br0Var.f5851a) {
            return;
        }
        ks1Var.a(ms1.REQUEST_IS_PREFETCH);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(final vs0 vs0Var) {
        this.f8495e.a(new js1(vs0Var) { // from class: com.google.android.gms.internal.ads.l70

            /* renamed from: a, reason: collision with root package name */
            private final vs0 f7833a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7833a = vs0Var;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                vs0 vs0Var2 = this.f7833a;
                pt1Var.f8784f.f8231d.f8595c = vs0Var2.f9986b.f9630b.f8769b;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(zzaok zzaokVar) {
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final synchronized void onAdClicked() {
        if (!this.f8496f) {
            this.f8495e.a(ms1.AD_FIRST_CLICK);
            this.f8496f = true;
        } else {
            this.f8495e.a(ms1.AD_SUBSEQUENT_CLICK);
        }
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(int i2) {
        switch (i2) {
            case 1:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.f8495e.a(ms1.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final synchronized void onAdImpression() {
        this.f8495e.a(ms1.AD_IMPRESSION);
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        this.f8495e.a(ms1.AD_LOADED);
    }
}
