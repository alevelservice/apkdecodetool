package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class zzk extends zzb implements zzl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // com.google.android.gms.dynamite.zzl
    public final IObjectWrapper zza(IObjectWrapper iObjectWrapper, String str, int i2, IObjectWrapper iObjectWrapper2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i2);
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper2);
        Parcel zza2 = zza(2, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza2.readStrongBinder());
        zza2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.dynamite.zzl
    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, String str, int i2, IObjectWrapper iObjectWrapper2) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i2);
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper2);
        Parcel zza2 = zza(3, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza2.readStrongBinder());
        zza2.recycle();
        return asInterface;
    }
}
