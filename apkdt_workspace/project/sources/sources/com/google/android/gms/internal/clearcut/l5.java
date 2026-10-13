package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;

/* loaded from: classes.dex */
public final class l5 extends com.google.android.gms.common.internal.f<zzn> {
    public l5(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, f.a aVar, f.b bVar) {
        super(context, looper, 40, cVar, aVar, bVar);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return queryLocalInterface instanceof zzn ? (zzn) queryLocalInterface : new zzo(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return 11925000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.clearcut.service.START";
    }
}
