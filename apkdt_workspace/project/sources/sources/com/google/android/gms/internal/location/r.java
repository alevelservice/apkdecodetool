package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;

/* loaded from: classes.dex */
public class r extends com.google.android.gms.common.internal.f<zzao> {
    protected final m<zzao> A;
    private final String z;

    public r(Context context, Looper looper, f.a aVar, f.b bVar, String str, com.google.android.gms.common.internal.c cVar) {
        super(context, looper, 23, cVar, aVar, bVar);
        this.A = new s(this);
        this.z = str;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof zzao ? (zzao) queryLocalInterface : new zzap(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public int h() {
        return 11925000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected Bundle r() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.z);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String v() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String w() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
