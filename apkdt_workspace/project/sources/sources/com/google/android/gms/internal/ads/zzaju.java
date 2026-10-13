package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaju extends zzfm implements zzajr {
    public zzaju() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 2:
                String headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                String body = getBody();
                parcel2.writeNoException();
                parcel2.writeString(body);
                return true;
            case 5:
                zzaas zzqm = zzqm();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqm);
                return true;
            case 6:
                String callToAction = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(callToAction);
                return true;
            case 7:
                String advertiser = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(advertiser);
                return true;
            case 8:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 9:
                zzx(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                boolean overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                tg1.a(parcel2, overrideImpressionRecording);
                return true;
            case 12:
                boolean overrideClickHandling = getOverrideClickHandling();
                parcel2.writeNoException();
                tg1.a(parcel2, overrideClickHandling);
                return true;
            case 13:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                tg1.b(parcel2, extras);
                return true;
            case 14:
                zzz(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                IObjectWrapper zzru = zzru();
                parcel2.writeNoException();
                tg1.a(parcel2, zzru);
                return true;
            case 16:
                zzwk videoController = getVideoController();
                parcel2.writeNoException();
                tg1.a(parcel2, videoController);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                zzaak zzqk = zzqk();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqk);
                return true;
            case 20:
                IObjectWrapper zzrv = zzrv();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrv);
                return true;
            case 21:
                IObjectWrapper zzql = zzql();
                parcel2.writeNoException();
                tg1.a(parcel2, zzql);
                return true;
            case 22:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
