package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzwm extends zzfn implements zzwk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float getAspectRatio() {
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken());
        float readFloat = transactAndReadException.readFloat();
        transactAndReadException.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final int getPlaybackState() {
        Parcel transactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        int readInt = transactAndReadException.readInt();
        transactAndReadException.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isClickToExpandEnabled() {
        Parcel transactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isCustomControlsEnabled() {
        Parcel transactAndReadException = transactAndReadException(10, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean isMuted() {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void mute(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, z);
        zza(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void pause() {
        zza(2, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void play() {
        zza(1, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void stop() {
        zza(13, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzwl zzwlVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzwlVar);
        zza(8, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzot() {
        Parcel transactAndReadException = transactAndReadException(6, obtainAndWriteInterfaceToken());
        float readFloat = transactAndReadException.readFloat();
        transactAndReadException.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzou() {
        Parcel transactAndReadException = transactAndReadException(7, obtainAndWriteInterfaceToken());
        float readFloat = transactAndReadException.readFloat();
        transactAndReadException.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final zzwl zzov() {
        zzwl zzwnVar;
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
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
        transactAndReadException.recycle();
        return zzwnVar;
    }
}
