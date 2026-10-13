package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzajk extends zzfn implements zzaji {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void destroy() {
        zza(5, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle getInterstitialAdapterInfo() {
        Parcel transactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzwk getVideoController() {
        Parcel transactAndReadException = transactAndReadException(26, obtainAndWriteInterfaceToken());
        zzwk zzi = zzwj.zzi(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean isInitialized() {
        Parcel transactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void pause() {
        zza(8, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void resume() {
        zza(9, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void setImmersiveMode(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, z);
        zza(25, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showInterstitial() {
        zza(4, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void showVideo() {
        zza(12, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzb(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(28, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final IObjectWrapper zzrk() {
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajq zzrl() {
        zzajq zzajsVar;
        Parcel transactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzajsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (queryLocalInterface instanceof zzajq) {
                zzajsVar = (zzajq) queryLocalInterface;
            } else {
                zzajsVar = new zzajs(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzajsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajr zzrm() {
        zzajr zzajtVar;
        Parcel transactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzajtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (queryLocalInterface instanceof zzajr) {
                zzajtVar = (zzajr) queryLocalInterface;
            } else {
                zzajtVar = new zzajt(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzajtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzrn() {
        Parcel transactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final Bundle zzro() {
        Parcel transactAndReadException = transactAndReadException(19, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final boolean zzrp() {
        Parcel transactAndReadException = transactAndReadException(22, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzabo zzrq() {
        Parcel transactAndReadException = transactAndReadException(24, obtainAndWriteInterfaceToken());
        zzabo zzo = zzabn.zzo(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final zzajw zzrr() {
        zzajw zzajyVar;
        Parcel transactAndReadException = transactAndReadException(27, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzajyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (queryLocalInterface instanceof zzajw) {
                zzajyVar = (zzajw) queryLocalInterface;
            } else {
                zzajyVar = new zzajy(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzajyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzv(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(21, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(30, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(6, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(7, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzapz zzapzVar, String str2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzapzVar);
        obtainAndWriteInterfaceToken.writeString(str2);
        zza(10, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        zza(11, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar, zzaai zzaaiVar, List<String> list) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaaiVar);
        obtainAndWriteInterfaceToken.writeStringList(list);
        zza(14, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(zztp zztpVar, String str, String str2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        zza(20, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zzapz zzapzVar, List<String> list) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzapzVar);
        obtainAndWriteInterfaceToken.writeStringList(list);
        zza(23, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(IObjectWrapper iObjectWrapper, zzaez zzaezVar, List<zzafh> list) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzaezVar);
        obtainAndWriteInterfaceToken.writeTypedList(list);
        zza(31, obtainAndWriteInterfaceToken);
    }
}
