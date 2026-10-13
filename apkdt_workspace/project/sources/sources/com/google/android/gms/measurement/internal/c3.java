package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
public final class c3 extends BaseGmsClient<zzdx> {
    public c3(Context context, Looper looper, BaseGmsClient.a aVar, BaseGmsClient.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ zzdx a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (queryLocalInterface instanceof zzdx) {
            return (zzdx) queryLocalInterface;
        }
        return new zzdz(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return com.google.android.gms.common.h.f5182a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    protected final String v() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    protected final String w() {
        return "com.google.android.gms.measurement.START";
    }
}
