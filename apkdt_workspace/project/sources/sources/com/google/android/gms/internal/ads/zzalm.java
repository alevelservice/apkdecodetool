package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzalm extends zzfm implements zzalj {
    public zzalm() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzalj zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (queryLocalInterface instanceof zzalj) {
            return (zzalj) queryLocalInterface;
        }
        return new zzall(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x001a. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzalo zzalqVar;
        zzalo zzaloVar;
        zzakx zzakxVar = null;
        zzald zzalfVar = null;
        zzali zzalkVar = null;
        zzalc zzaleVar = null;
        if (i2 == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) tg1.a(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) tg1.a(parcel, Bundle.CREATOR);
            zztw zztwVar = (zztw) tg1.a(parcel, zztw.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzaloVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (queryLocalInterface instanceof zzalo) {
                    zzalqVar = (zzalo) queryLocalInterface;
                } else {
                    zzalqVar = new zzalq(readStrongBinder);
                }
                zzaloVar = zzalqVar;
            }
            zza(asInterface, readString, bundle, bundle2, zztwVar, zzaloVar);
            parcel2.writeNoException();
        } else if (i2 == 2) {
            zzalx zzsc = zzsc();
            parcel2.writeNoException();
            tg1.b(parcel2, zzsc);
        } else if (i2 == 3) {
            zzalx zzsd = zzsd();
            parcel2.writeNoException();
            tg1.b(parcel2, zzsd);
        } else if (i2 == 5) {
            zzwk videoController = getVideoController();
            parcel2.writeNoException();
            tg1.a(parcel2, videoController);
        } else if (i2 == 10) {
            zzab(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (i2 != 11) {
            switch (i2) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zztp zztpVar = (zztp) tg1.a(parcel, zztp.CREATOR);
                    IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        if (queryLocalInterface2 instanceof zzakx) {
                            zzakxVar = (zzakx) queryLocalInterface2;
                        } else {
                            zzakxVar = new zzakz(readStrongBinder2);
                        }
                    }
                    zza(readString2, readString3, zztpVar, asInterface2, zzakxVar, zzajm.zzaa(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zztp zztpVar2 = (zztp) tg1.a(parcel, zztp.CREATOR);
                    IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        if (queryLocalInterface3 instanceof zzalc) {
                            zzaleVar = (zzalc) queryLocalInterface3;
                        } else {
                            zzaleVar = new zzale(readStrongBinder3);
                        }
                    }
                    zza(readString4, readString5, zztpVar2, asInterface3, zzaleVar, zzajm.zzaa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 15:
                    boolean zzac = zzac(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    tg1.a(parcel2, zzac);
                    break;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zztp zztpVar3 = (zztp) tg1.a(parcel, zztp.CREATOR);
                    IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        if (queryLocalInterface4 instanceof zzali) {
                            zzalkVar = (zzali) queryLocalInterface4;
                        } else {
                            zzalkVar = new zzalk(readStrongBinder4);
                        }
                    }
                    zza(readString6, readString7, zztpVar3, asInterface4, zzalkVar, zzajm.zzaa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 17:
                    boolean zzad = zzad(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    tg1.a(parcel2, zzad);
                    break;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zztp zztpVar4 = (zztp) tg1.a(parcel, zztp.CREATOR);
                    IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        if (queryLocalInterface5 instanceof zzald) {
                            zzalfVar = (zzald) queryLocalInterface5;
                        } else {
                            zzalfVar = new zzalf(readStrongBinder5);
                        }
                    }
                    zza(readString8, readString9, zztpVar4, asInterface5, zzalfVar, zzajm.zzaa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 19:
                    zzdh(parcel.readString());
                    parcel2.writeNoException();
                    break;
                default:
                    return false;
            }
        } else {
            zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
