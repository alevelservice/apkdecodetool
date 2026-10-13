package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzvd extends zzfm implements zzve {
    public zzvd() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzve zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (queryLocalInterface instanceof zzve) {
            return (zzve) queryLocalInterface;
        }
        return new zzvg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzur zzurVar = null;
        zzvh zzvhVar = null;
        zzvs zzvsVar = null;
        zzuq zzuqVar = null;
        zzvm zzvmVar = null;
        switch (i2) {
            case 1:
                IObjectWrapper zzjm = zzjm();
                parcel2.writeNoException();
                tg1.a(parcel2, zzjm);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isReady = isReady();
                parcel2.writeNoException();
                tg1.a(parcel2, isReady);
                return true;
            case 4:
                boolean zza = zza((zztp) tg1.a(parcel, zztp.CREATOR));
                parcel2.writeNoException();
                tg1.a(parcel2, zza);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzur) {
                        zzurVar = (zzur) queryLocalInterface;
                    } else {
                        zzurVar = new zzut(readStrongBinder);
                    }
                }
                zza(zzurVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (queryLocalInterface2 instanceof zzvm) {
                        zzvmVar = (zzvm) queryLocalInterface2;
                    } else {
                        zzvmVar = new zzvo(readStrongBinder2);
                    }
                }
                zza(zzvmVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzjn();
                parcel2.writeNoException();
                return true;
            case 12:
                zztw zzjo = zzjo();
                parcel2.writeNoException();
                tg1.b(parcel2, zzjo);
                return true;
            case 13:
                zza((zztw) tg1.a(parcel, zztw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzanc.zzae(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zza(zzani.zzag(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                zza(zzzq.zzj(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (queryLocalInterface3 instanceof zzuq) {
                        zzuqVar = (zzuq) queryLocalInterface3;
                    } else {
                        zzuqVar = new zzus(readStrongBinder3);
                    }
                }
                zza(zzuqVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface4 instanceof zzvs) {
                        zzvsVar = (zzvs) queryLocalInterface4;
                    } else {
                        zzvsVar = new zzvr(readStrongBinder4);
                    }
                }
                zza(zzvsVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                tg1.a(parcel2, isLoading);
                return true;
            case 24:
                zza(zzapr.zzai(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzwk videoController = getVideoController();
                parcel2.writeNoException();
                tg1.a(parcel2, videoController);
                return true;
            case 29:
                zza((zzyc) tg1.a(parcel, zzyc.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzwq) tg1.a(parcel, zzwq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                zzvm zzjq = zzjq();
                parcel2.writeNoException();
                tg1.a(parcel2, zzjq);
                return true;
            case 33:
                zzur zzjr = zzjr();
                parcel2.writeNoException();
                tg1.a(parcel2, zzjr);
                return true;
            case 34:
                setImmersiveMode(tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String zzjp = zzjp();
                parcel2.writeNoException();
                parcel2.writeString(zzjp);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (queryLocalInterface5 instanceof zzvh) {
                        zzvhVar = (zzvh) queryLocalInterface5;
                    } else {
                        zzvhVar = new zzvj(readStrongBinder5);
                    }
                }
                zza(zzvhVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                tg1.b(parcel2, adMetadata);
                return true;
            case 38:
                zzbm(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zztx) tg1.a(parcel, zztx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zza(zzqx.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
