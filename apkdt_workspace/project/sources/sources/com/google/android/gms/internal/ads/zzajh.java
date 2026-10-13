package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzajh extends zzfm implements zzaji {
    public zzajh() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzajj zzajjVar = null;
        switch (i2) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztw zztwVar = (zztw) tg1.a(parcel, zztw.CREATOR);
                zztp zztpVar = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder);
                    }
                }
                zza(asInterface, zztwVar, zztpVar, readString, zzajjVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzrk = zzrk();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrk);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztp zztpVar2 = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface2 instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface2;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder2);
                    }
                }
                zza(asInterface2, zztpVar2, readString2, zzajjVar);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztw zztwVar2 = (zztw) tg1.a(parcel, zztw.CREATOR);
                zztp zztpVar3 = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface3 instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface3;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder3);
                    }
                }
                zza(asInterface3, zztwVar2, zztpVar3, readString3, readString4, zzajjVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztp zztpVar4 = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface4 instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface4;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder4);
                    }
                }
                zza(asInterface4, zztpVar4, readString5, readString6, zzajjVar);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztp) tg1.a(parcel, zztp.CREATOR), parcel.readString(), zzapy.zzaj(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zztp) tg1.a(parcel, zztp.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean isInitialized = isInitialized();
                parcel2.writeNoException();
                tg1.a(parcel2, isInitialized);
                return true;
            case 14:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztp zztpVar5 = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface5 instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface5;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder5);
                    }
                }
                zza(asInterface5, zztpVar5, readString7, readString8, zzajjVar, (zzaai) tg1.a(parcel, zzaai.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                zzajq zzrl = zzrl();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrl);
                return true;
            case 16:
                zzajr zzrm = zzrm();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrm);
                return true;
            case 17:
                Bundle zzrn = zzrn();
                parcel2.writeNoException();
                tg1.b(parcel2, zzrn);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                tg1.b(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle zzro = zzro();
                parcel2.writeNoException();
                tg1.b(parcel2, zzro);
                return true;
            case 20:
                zza((zztp) tg1.a(parcel, zztp.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzv(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzrp = zzrp();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrp);
                return true;
            case 23:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzapy.zzaj(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzabo zzrq = zzrq();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrq);
                return true;
            case 25:
                setImmersiveMode(tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzwk videoController = getVideoController();
                parcel2.writeNoException();
                tg1.a(parcel2, videoController);
                return true;
            case 27:
                zzajw zzrr = zzrr();
                parcel2.writeNoException();
                tg1.a(parcel2, zzrr);
                return true;
            case 28:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztp zztpVar6 = (zztp) tg1.a(parcel, zztp.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface6 instanceof zzajj) {
                        zzajjVar = (zzajj) queryLocalInterface6;
                    } else {
                        zzajjVar = new zzajl(readStrongBinder6);
                    }
                }
                zzb(asInterface6, zztpVar6, readString9, zzajjVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzw(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzafc.zzw(parcel.readStrongBinder()), parcel.createTypedArrayList(zzafh.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
