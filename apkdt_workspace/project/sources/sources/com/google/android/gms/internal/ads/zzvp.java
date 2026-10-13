package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzvp extends zzfn implements zzvn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zza(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        zzve zzvgVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzve) {
                zzvgVar = (zzve) queryLocalInterface;
            } else {
                zzvgVar = new zzvg(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zzb(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        zzve zzvgVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzve) {
                zzvgVar = (zzve) queryLocalInterface;
            } else {
                zzvgVar = new zzvg(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaaw zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper2);
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken);
        zzaaw zzm = zzaav.zzm(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzamu zzf(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(8, obtainAndWriteInterfaceToken);
        zzamu zzad = zzamx.zzad(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzad;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvu zzg(IObjectWrapper iObjectWrapper) {
        zzvu zzvwVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzvu) {
                zzvwVar = (zzvu) queryLocalInterface;
            } else {
                zzvwVar = new zzvw(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzane zzh(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken);
        zzane zzaf = zzanh.zzaf(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzaf;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zzc(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        zzve zzvgVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzve) {
                zzvgVar = (zzve) queryLocalInterface;
            } else {
                zzvgVar = new zzvg(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzux zza(IObjectWrapper iObjectWrapper, String str, zzajd zzajdVar, int i2) {
        zzux zzuzVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzuzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzux) {
                zzuzVar = (zzux) queryLocalInterface;
            } else {
                zzuzVar = new zzuz(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzuzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaqg zzb(IObjectWrapper iObjectWrapper, String str, zzajd zzajdVar, int i2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken);
        zzaqg zzal = zzaqj.zzal(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzal;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzapl zza(IObjectWrapper iObjectWrapper, zzajd zzajdVar, int i2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(6, obtainAndWriteInterfaceToken);
        zzapl zzah = zzapk.zzah(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzah;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvu zza(IObjectWrapper iObjectWrapper, int i2) {
        zzvu zzvwVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzvu) {
                zzvwVar = (zzvu) queryLocalInterface;
            } else {
                zzvwVar = new zzvw(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzve zza(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, int i2) {
        zzve zzvgVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel transactAndReadException = transactAndReadException(10, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzvgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzve) {
                zzvgVar = (zzve) queryLocalInterface;
            } else {
                zzvgVar = new zzvg(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzaaz zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper2);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper3);
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken);
        zzaaz zzn = zzabc.zzn(transactAndReadException.readStrongBinder());
        transactAndReadException.recycle();
        return zzn;
    }
}
