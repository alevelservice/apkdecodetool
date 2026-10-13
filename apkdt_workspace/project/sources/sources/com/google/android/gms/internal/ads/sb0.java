package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class sb0 implements hz0<ParcelFileDescriptor> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzaoe f9307a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sb0(zzcdt zzcdtVar, zzaoe zzaoeVar) {
        this.f9307a = zzaoeVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        try {
            this.f9307a.zza(zzauw.a(th, t90.zzd(th)));
        } catch (RemoteException e2) {
            na.e("Service can't call client", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f9307a.zzb(parcelFileDescriptor);
        } catch (RemoteException e2) {
            na.e("Service can't call client", e2);
        }
    }
}
