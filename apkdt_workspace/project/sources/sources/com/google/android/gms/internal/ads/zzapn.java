package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzapn extends zzfn implements zzapl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void destroy() {
        zza(8, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final Bundle getAdMetadata() {
        Parcel transactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final String getMediationAdapterClassName() {
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean isLoaded() {
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void pause() {
        zza(6, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void resume() {
        zza(7, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setAppPackageName(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zza(17, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setCustomData(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zza(19, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setImmersiveMode(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, z);
        zza(34, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setUserId(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zza(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void show() {
        zza(2, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapu zzapuVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzapuVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzm(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(18, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzn(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(9, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzo(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(10, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzp(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(11, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean zzph() {
        Parcel transactAndReadException = transactAndReadException(20, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapo zzapoVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzapoVar);
        zza(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzvh zzvhVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzvhVar);
        zza(14, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapj zzapjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzapjVar);
        zza(16, obtainAndWriteInterfaceToken);
    }
}
