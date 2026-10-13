package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzabq extends zzfn implements zzabo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void destroy() {
        zza(8, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final List<String> getAvailableAssetNames() {
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        ArrayList<String> createStringArrayList = transactAndReadException.createStringArrayList();
        transactAndReadException.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final String getCustomTemplateId() {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final zzwk getVideoController() {
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken());
        zzwk zzi = zzwj.zzi(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void performClick(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zza(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void recordImpression() {
        zza(6, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final String zzco(String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final zzaas zzcp(String str) {
        zzaas zzaauVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken);
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

    @Override // com.google.android.gms.internal.ads.zzabo
    public final IObjectWrapper zzqi() {
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final IObjectWrapper zzqn() {
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzqo() {
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzqp() {
        Parcel transactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void zzqq() {
        zza(15, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzt(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(10, obtainAndWriteInterfaceToken);
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void zzu(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(14, obtainAndWriteInterfaceToken);
    }
}
