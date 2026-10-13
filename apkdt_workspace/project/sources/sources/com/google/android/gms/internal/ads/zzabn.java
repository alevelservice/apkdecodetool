package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzabn extends zzfm implements zzabo {
    public zzabn() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzabo zzo(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        if (queryLocalInterface instanceof zzabo) {
            return (zzabo) queryLocalInterface;
        }
        return new zzabq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                String zzco = zzco(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(zzco);
                return true;
            case 2:
                zzaas zzcp = zzcp(parcel.readString());
                parcel2.writeNoException();
                tg1.a(parcel2, zzcp);
                return true;
            case 3:
                List<String> availableAssetNames = getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                String customTemplateId = getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(customTemplateId);
                return true;
            case 5:
                performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                zzwk videoController = getVideoController();
                parcel2.writeNoException();
                tg1.a(parcel2, videoController);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper zzqn = zzqn();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqn);
                return true;
            case 10:
                boolean zzt = zzt(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zzt);
                return true;
            case 11:
                IObjectWrapper zzqi = zzqi();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqi);
                return true;
            case 12:
                boolean zzqo = zzqo();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqo);
                return true;
            case 13:
                boolean zzqp = zzqp();
                parcel2.writeNoException();
                tg1.a(parcel2, zzqp);
                return true;
            case 14:
                zzu(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzqq();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
