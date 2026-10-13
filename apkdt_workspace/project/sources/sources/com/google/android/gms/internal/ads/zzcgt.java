package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcgt extends zzapy implements nu {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzapz f11101e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private mu f11102f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private by f11103g;

    public final synchronized void zza(zzapz zzapzVar) {
        this.f11101e = zzapzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzai(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzai(iObjectWrapper);
        }
        if (this.f11103g != null) {
            this.f11103g.onInitializationSucceeded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzaj(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzaj(iObjectWrapper);
        }
        if (this.f11102f != null) {
            this.f11102f.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzak(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzak(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzal(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzal(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzam(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzam(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzan(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzan(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzao(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzao(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzap(IObjectWrapper iObjectWrapper) {
        if (this.f11101e != null) {
            this.f11101e.zzap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzb(Bundle bundle) {
        if (this.f11101e != null) {
            this.f11101e.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zzd(IObjectWrapper iObjectWrapper, int i2) {
        if (this.f11101e != null) {
            this.f11101e.zzd(iObjectWrapper, i2);
        }
        if (this.f11103g != null) {
            this.f11103g.a(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zze(IObjectWrapper iObjectWrapper, int i2) {
        if (this.f11101e != null) {
            this.f11101e.zze(iObjectWrapper, i2);
        }
        if (this.f11102f != null) {
            this.f11102f.onAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.nu
    public final synchronized void zza(mu muVar) {
        this.f11102f = muVar;
    }

    public final synchronized void zza(by byVar) {
        this.f11103g = byVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zza(IObjectWrapper iObjectWrapper, zzaqd zzaqdVar) {
        if (this.f11101e != null) {
            this.f11101e.zza(iObjectWrapper, zzaqdVar);
        }
    }
}
