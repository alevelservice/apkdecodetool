package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.a.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.f;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class l extends f<zzx> {
    private final a.C0079a z;

    public l(Context context, Looper looper, c cVar, a.C0079a c0079a, f.a aVar, f.b bVar) {
        super(context, looper, 68, cVar, aVar, bVar);
        this.z = new a.C0079a.C0080a(c0079a == null ? a.C0079a.f4695h : c0079a).a(d.a()).a();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        if (queryLocalInterface instanceof zzx) {
            return (zzx) queryLocalInterface;
        }
        return new zzw(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle r() {
        return this.z.b();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
