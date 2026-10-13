package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzall extends zzfn implements zzalj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzall(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzwk getVideoController() {
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        zzwk zzi = zzwj.zzi(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zztw zztwVar, zzalo zzaloVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, bundle);
        tg1.a(obtainAndWriteInterfaceToken, bundle2);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaloVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zzab(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(10, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final boolean zzac(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken);
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final boolean zzad(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken);
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zzdh(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zza(19, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzalx zzsc() {
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        zzalx zzalxVar = (zzalx) tg1.a(transactAndReadException, zzalx.CREATOR);
        transactAndReadException.recycle();
        return zzalxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzalx zzsd() {
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        zzalx zzalxVar = (zzalx) tg1.a(transactAndReadException, zzalx.CREATOR);
        transactAndReadException.recycle();
        return zzalxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String[] strArr, Bundle[] bundleArr) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeStringArray(strArr);
        obtainAndWriteInterfaceToken.writeTypedArray(bundleArr, 0);
        zza(11, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzakx zzakxVar, zzajj zzajjVar, zztw zztwVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzakxVar);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        zza(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzalc zzalcVar, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzalcVar);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(14, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzali zzaliVar, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzaliVar);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(16, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zza(String str, String str2, zztp zztpVar, IObjectWrapper iObjectWrapper, zzald zzaldVar, zzajj zzajjVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzaldVar);
        tg1.a(obtainAndWriteInterfaceToken, zzajjVar);
        zza(18, obtainAndWriteInterfaceToken);
    }
}
