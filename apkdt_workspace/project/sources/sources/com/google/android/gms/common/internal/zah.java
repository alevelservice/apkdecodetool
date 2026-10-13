package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.base.zab;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class zah extends zab implements ISignInButtonCreator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // com.google.android.gms.common.internal.ISignInButtonCreator
    public final IObjectWrapper newSignInButton(IObjectWrapper iObjectWrapper, int i2, int i3) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.a.a(zaa, iObjectWrapper);
        zaa.writeInt(i2);
        zaa.writeInt(i3);
        Parcel zaa2 = zaa(1, zaa);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zaa2.readStrongBinder());
        zaa2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.common.internal.ISignInButtonCreator
    public final IObjectWrapper newSignInButtonFromConfig(IObjectWrapper iObjectWrapper, SignInButtonConfig signInButtonConfig) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.a.a(zaa, iObjectWrapper);
        com.google.android.gms.internal.base.a.a(zaa, signInButtonConfig);
        Parcel zaa2 = zaa(2, zaa);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zaa2.readStrongBinder());
        zaa2.recycle();
        return asInterface;
    }
}
