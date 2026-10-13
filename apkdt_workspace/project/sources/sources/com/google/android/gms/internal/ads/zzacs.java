package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzacs extends zzfn implements zzacq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void cancelUnconfirmedClick() {
        zza(22, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void destroy() {
        zza(13, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getAdvertiser() {
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getBody() {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getCallToAction() {
        Parcel transactAndReadException = transactAndReadException(6, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final Bundle getExtras() {
        Parcel transactAndReadException = transactAndReadException(20, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getHeadline() {
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final List getImages() {
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        ArrayList b2 = tg1.b(transactAndReadException);
        transactAndReadException.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getMediationAdapterClassName() {
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final List getMuteThisAdReasons() {
        Parcel transactAndReadException = transactAndReadException(23, obtainAndWriteInterfaceToken());
        ArrayList b2 = tg1.b(transactAndReadException);
        transactAndReadException.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getPrice() {
        Parcel transactAndReadException = transactAndReadException(10, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final double getStarRating() {
        Parcel transactAndReadException = transactAndReadException(8, obtainAndWriteInterfaceToken());
        double readDouble = transactAndReadException.readDouble();
        transactAndReadException.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getStore() {
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzwk getVideoController() {
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken());
        zzwk zzi = zzwj.zzi(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean isCustomClickGestureEnabled() {
        Parcel transactAndReadException = transactAndReadException(30, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean isCustomMuteThisAdEnabled() {
        Parcel transactAndReadException = transactAndReadException(24, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void performClick(Bundle bundle) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, bundle);
        zza(15, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void recordCustomClickGesture() {
        zza(28, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean recordImpression(Bundle bundle) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, bundle);
        Parcel transactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken);
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void reportTouchEvent(Bundle bundle) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, bundle);
        zza(17, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(zzacl zzaclVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaclVar);
        zza(21, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final IObjectWrapper zzqi() {
        Parcel transactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaas zzqj() {
        zzaas zzaauVar;
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzaauVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof zzaas) {
                zzaauVar = (zzaas) queryLocalInterface;
            } else {
                zzaauVar = new zzaau(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzaauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaak zzqk() {
        zzaak zzaamVar;
        Parcel transactAndReadException = transactAndReadException(14, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzaamVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            if (queryLocalInterface instanceof zzaak) {
                zzaamVar = (zzaak) queryLocalInterface;
            } else {
                zzaamVar = new zzaam(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzaamVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final IObjectWrapper zzql() {
        Parcel transactAndReadException = transactAndReadException(19, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zzqs() {
        zza(27, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaan zzqt() {
        zzaan zzaapVar;
        Parcel transactAndReadException = transactAndReadException(29, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzaapVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            if (queryLocalInterface instanceof zzaan) {
                zzaapVar = (zzaan) queryLocalInterface;
            } else {
                zzaapVar = new zzaap(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzaapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(zzwb zzwbVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzwbVar);
        zza(25, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(zzvx zzvxVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzvxVar);
        zza(26, obtainAndWriteInterfaceToken);
    }
}
