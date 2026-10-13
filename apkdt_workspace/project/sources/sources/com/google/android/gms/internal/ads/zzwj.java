package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzwj extends zzfm implements zzwk {
    public zzwj() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzwk zzi(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        if (queryLocalInterface instanceof zzwk) {
            return (zzwk) queryLocalInterface;
        }
        return new zzwm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzwl zzwnVar;
        switch (i2) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean isMuted = isMuted();
                parcel2.writeNoException();
                tg1.a(parcel2, isMuted);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                float zzot = zzot();
                parcel2.writeNoException();
                parcel2.writeFloat(zzot);
                return true;
            case 7:
                float zzou = zzou();
                parcel2.writeNoException();
                parcel2.writeFloat(zzou);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzwnVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    if (queryLocalInterface instanceof zzwl) {
                        zzwnVar = (zzwl) queryLocalInterface;
                    } else {
                        zzwnVar = new zzwn(readStrongBinder);
                    }
                }
                zza(zzwnVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float aspectRatio = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 10:
                boolean isCustomControlsEnabled = isCustomControlsEnabled();
                parcel2.writeNoException();
                tg1.a(parcel2, isCustomControlsEnabled);
                return true;
            case 11:
                zzwl zzov = zzov();
                parcel2.writeNoException();
                tg1.a(parcel2, zzov);
                return true;
            case 12:
                boolean isClickToExpandEnabled = isClickToExpandEnabled();
                parcel2.writeNoException();
                tg1.a(parcel2, isClickToExpandEnabled);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
