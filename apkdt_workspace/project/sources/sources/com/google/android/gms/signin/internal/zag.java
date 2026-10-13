package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.IAccountAccessor;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class zag extends com.google.android.gms.internal.base.zab implements zae {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zaa(IAccountAccessor iAccountAccessor, int i2, boolean z) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.a.a(zaa, iAccountAccessor);
        zaa.writeInt(i2);
        com.google.android.gms.internal.base.a.a(zaa, z);
        zab(9, zaa);
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zam(int i2) {
        Parcel zaa = zaa();
        zaa.writeInt(i2);
        zab(7, zaa);
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zaa(zai zaiVar, zac zacVar) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.a.a(zaa, zaiVar);
        com.google.android.gms.internal.base.a.a(zaa, zacVar);
        zab(12, zaa);
    }
}
