package com.google.android.gms.internal.p001authapiphone;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.c;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public final class f extends com.google.android.gms.common.internal.f<zzj> {
    public f(Context context, Looper looper, c cVar, com.google.android.gms.common.api.internal.f fVar, m mVar) {
        super(context, looper, 126, cVar, fVar, mVar);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        if (queryLocalInterface instanceof zzj) {
            return (zzj) queryLocalInterface;
        }
        return new zzi(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return h.f5182a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] o() {
        return a.f11294d;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }
}
