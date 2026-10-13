package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class zzi extends zzb implements zzj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // com.google.android.gms.dynamite.zzj
    public final IObjectWrapper zza(IObjectWrapper iObjectWrapper, String str, int i2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i2);
        Parcel zza2 = zza(2, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza2.readStrongBinder());
        zza2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.dynamite.zzj
    public final int zzak() {
        Parcel zza = zza(6, zza());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzj
    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, String str, int i2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i2);
        Parcel zza2 = zza(4, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza2.readStrongBinder());
        zza2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.dynamite.zzj
    public final int zza(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        com.google.android.gms.internal.common.a.a(zza, z);
        Parcel zza2 = zza(3, zza);
        int readInt = zza2.readInt();
        zza2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzj
    public final int zzb(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        com.google.android.gms.internal.common.a.a(zza, z);
        Parcel zza2 = zza(5, zza);
        int readInt = zza2.readInt();
        zza2.recycle();
        return readInt;
    }
}
