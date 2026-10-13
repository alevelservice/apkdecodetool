package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class pj0 implements hz0<ak0> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzasn f8711a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pj0(zzcmh zzcmhVar, zzasn zzasnVar) {
        this.f8711a = zzasnVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        try {
            this.f8711a.onError("Internal error.");
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(@Nullable ak0 ak0Var) {
        ak0 ak0Var2 = ak0Var;
        try {
            this.f8711a.zzm(ak0Var2.f5588a, ak0Var2.f5589b);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
