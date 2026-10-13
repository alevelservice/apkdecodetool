package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxp extends zzaqj {
    @Override // com.google.android.gms.internal.ads.zzaqg
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final String getMediationAdapterClassName() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaql zzaqlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaqt zzaqtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzarb zzarbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zztp zztpVar, final zzaqo zzaqoVar) {
        qd.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        gd.f6840b.post(new Runnable(zzaqoVar) { // from class: com.google.android.gms.internal.ads.ev1

            /* renamed from: e, reason: collision with root package name */
            private final zzaqo f6533e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6533e = zzaqoVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaqo zzaqoVar2 = this.f6533e;
                if (zzaqoVar2 != null) {
                    try {
                        zzaqoVar2.onRewardedAdFailedToLoad(1);
                    } catch (RemoteException e2) {
                        qd.d("#007 Could not call remote method.", e2);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzwf zzwfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    @Nullable
    public final zzaqf zzpg() {
        return null;
    }
}
