package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ds0 extends com.google.android.gms.ads.o.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzwf f6303a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzcup f6304b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds0(zzcup zzcupVar, zzwf zzwfVar) {
        this.f6304b = zzcupVar;
        this.f6303a = zzwfVar;
    }

    @Override // com.google.android.gms.ads.o.a
    public final void a() {
        r50 r50Var;
        r50Var = this.f6304b.f11172i;
        if (r50Var != null) {
            try {
                this.f6303a.onAdMetadataChanged();
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }
}
