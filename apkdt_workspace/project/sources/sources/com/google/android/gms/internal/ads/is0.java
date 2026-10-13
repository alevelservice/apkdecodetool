package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class is0 extends com.google.android.gms.ads.o.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzvh f7370a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzcuv f7371b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is0(zzcuv zzcuvVar, zzvh zzvhVar) {
        this.f7371b = zzcuvVar;
        this.f7370a = zzvhVar;
    }

    @Override // com.google.android.gms.ads.o.a
    public final void a() {
        r50 r50Var;
        r50Var = this.f7371b.f11176h;
        if (r50Var != null) {
            try {
                this.f7370a.onAdMetadataChanged();
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }
}
