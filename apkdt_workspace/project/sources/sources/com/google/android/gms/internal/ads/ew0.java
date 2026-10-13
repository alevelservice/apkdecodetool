package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ew0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ax0 f6534e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ew0(ax0 ax0Var) {
        this.f6534e = ax0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        cf1 cf1Var;
        ConditionVariable conditionVariable2;
        if (this.f6534e.f5681b != null) {
            return;
        }
        conditionVariable = ax0.f5677c;
        synchronized (conditionVariable) {
            if (this.f6534e.f5681b != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = ((Boolean) mu1.e().a(aw1.q1)).booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    cf1Var = this.f6534e.f5680a;
                    ax0.f5678d = new ps1(cf1Var.f5992a, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            this.f6534e.f5681b = Boolean.valueOf(z2);
            conditionVariable2 = ax0.f5677c;
            conditionVariable2.open();
        }
    }
}
