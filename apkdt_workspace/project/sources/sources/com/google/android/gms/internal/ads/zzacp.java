package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzacp extends zzfm implements zzacq {
    public zzacp() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzacl zzacnVar;
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
                zzaas zzqj = zzqj();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqj);
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
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                String store = getStore();
                parcel2.writeNoException();
                parcel2.writeString(store);
                return true;
            case 10:
                String price = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(price);
                return true;
            case 11:
                zzwk videoController = getVideoController();
                parcel2.writeNoException();
                tg1.a(parcel2, videoController);
                return true;
            case 12:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 13:
                destroy();
                parcel2.writeNoException();
                return true;
            case 14:
                zzaak zzqk = zzqk();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqk);
                return true;
            case 15:
                performClick((Bundle) tg1.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean recordImpression = recordImpression((Bundle) tg1.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                tg1.a(parcel2, recordImpression);
                return true;
            case 17:
                reportTouchEvent((Bundle) tg1.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper zzqi = zzqi();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqi);
                return true;
            case 19:
                IObjectWrapper zzql = zzql();
                parcel2.writeNoException();
                tg1.a(parcel2, zzql);
                return true;
            case 20:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                tg1.b(parcel2, extras);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzacnVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    if (queryLocalInterface instanceof zzacl) {
                        zzacnVar = (zzacl) queryLocalInterface;
                    } else {
                        zzacnVar = new zzacn(readStrongBinder);
                    }
                }
                zza(zzacnVar);
                parcel2.writeNoException();
                return true;
            case 22:
                cancelUnconfirmedClick();
                parcel2.writeNoException();
                return true;
            case 23:
                List muteThisAdReasons = getMuteThisAdReasons();
                parcel2.writeNoException();
                parcel2.writeList(muteThisAdReasons);
                return true;
            case 24:
                boolean isCustomMuteThisAdEnabled = isCustomMuteThisAdEnabled();
                parcel2.writeNoException();
                tg1.a(parcel2, isCustomMuteThisAdEnabled);
                return true;
            case 25:
                zza(zzwe.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                zza(zzwa.zzf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                zzqs();
                parcel2.writeNoException();
                return true;
            case 28:
                recordCustomClickGesture();
                parcel2.writeNoException();
                return true;
            case 29:
                zzaan zzqt = zzqt();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqt);
                return true;
            case 30:
                boolean isCustomClickGestureEnabled = isCustomClickGestureEnabled();
                parcel2.writeNoException();
                tg1.a(parcel2, isCustomClickGestureEnabled);
                return true;
            default:
                return false;
        }
    }
}
