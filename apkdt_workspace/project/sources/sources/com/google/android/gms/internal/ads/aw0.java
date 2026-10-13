package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class aw0 extends com.google.android.gms.ads.internal.c<zzczc> {
    public aw0(Context context, Looper looper, BaseGmsClient.a aVar, BaseGmsClient.b bVar) {
        super(context, looper, 116, aVar, bVar, null);
    }

    public final zzczc A() {
        return (zzczc) super.u();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        if (queryLocalInterface instanceof zzczc) {
            return (zzczc) queryLocalInterface;
        }
        return new zzczb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.gass.START";
    }
}
