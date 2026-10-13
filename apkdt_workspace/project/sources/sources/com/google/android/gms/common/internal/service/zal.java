package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.base.a;
import com.google.android.gms.internal.base.zab;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class zal extends zab implements zam {
    zal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.common.internal.service.zam
    public final void zaa(zak zakVar) {
        Parcel zaa = zaa();
        a.a(zaa, zakVar);
        zac(1, zaa);
    }
}
