package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzajy extends zzfn implements zzajw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getAdvertiser() {
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getBody() {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getCallToAction() {
        Parcel transactAndReadException = transactAndReadException(6, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final Bundle getExtras() {
        Parcel transactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getHeadline() {
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final List getImages() {
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        ArrayList b2 = tg1.b(transactAndReadException);
        transactAndReadException.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final float getMediaContentAspectRatio() {
        Parcel transactAndReadException = transactAndReadException(23, obtainAndWriteInterfaceToken());
        float readFloat = transactAndReadException.readFloat();
        transactAndReadException.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean getOverrideClickHandling() {
        Parcel transactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean getOverrideImpressionRecording() {
        Parcel transactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getPrice() {
        Parcel transactAndReadException = transactAndReadException(10, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final double getStarRating() {
        Parcel transactAndReadException = transactAndReadException(8, obtainAndWriteInterfaceToken());
        double readDouble = transactAndReadException.readDouble();
        transactAndReadException.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getStore() {
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzwk getVideoController() {
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken());
        zzwk zzi = zzwj.zzi(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void recordImpression() {
        zza(19, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper2);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper3);
        zza(21, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzaas zzqj() {
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        zzaas zzl = zzaar.zzl(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzaak zzqk() {
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        zzaak zzk = zzaaj.zzk(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzql() {
        Parcel transactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzru() {
        Parcel transactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzrv() {
        Parcel transactAndReadException = transactAndReadException(14, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzx(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(20, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzz(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(22, obtainAndWriteInterfaceToken);
    }
}
