package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzajx extends zzwj {

    /* renamed from: e, reason: collision with root package name */
    private final Object f10920e = new Object();

    /* renamed from: f, reason: collision with root package name */
    private volatile zzwl f10921f;

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float getAspectRatio() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final int getPlaybackState() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isClickToExpandEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isCustomControlsEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isMuted() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void mute(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void play() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void stop() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzwl zzwlVar) {
        synchronized (this.f10920e) {
            this.f10921f = zzwlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzot() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzou() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final zzwl zzov() {
        zzwl zzwlVar;
        synchronized (this.f10920e) {
            zzwlVar = this.f10921f;
        }
        return zzwlVar;
    }
}
