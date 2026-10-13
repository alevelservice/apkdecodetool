package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.j;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n50 extends j.a {

    /* renamed from: a, reason: collision with root package name */
    private final l10 f8276a;

    public n50(l10 l10Var) {
        this.f8276a = l10Var;
    }

    @Override // com.google.android.gms.ads.j.a
    public final void a() {
        zzwl a2 = a(this.f8276a);
        if (a2 == null) {
            return;
        }
        try {
            a2.onVideoEnd();
        } catch (RemoteException e2) {
            qd.c("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.j.a
    public final void b() {
        zzwl a2 = a(this.f8276a);
        if (a2 == null) {
            return;
        }
        try {
            a2.onVideoPause();
        } catch (RemoteException e2) {
            qd.c("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.j.a
    public final void d() {
        zzwl a2 = a(this.f8276a);
        if (a2 == null) {
            return;
        }
        try {
            a2.onVideoStart();
        } catch (RemoteException e2) {
            qd.c("Unable to call onVideoEnd()", e2);
        }
    }

    private static zzwl a(l10 l10Var) {
        zzwk n = l10Var.n();
        if (n == null) {
            return null;
        }
        try {
            return n.zzov();
        } catch (RemoteException unused) {
            return null;
        }
    }
}
