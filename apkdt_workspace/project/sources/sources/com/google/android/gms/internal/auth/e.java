package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.f;

/* loaded from: classes.dex */
public final class e extends com.google.android.gms.common.internal.f<zzan> {
    private final Bundle z;

    public e(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, com.google.android.gms.auth.a.c cVar2, f.a aVar, f.b bVar) {
        super(context, looper, 16, cVar, aVar, bVar);
        if (cVar2 == null) {
            this.z = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        if (queryLocalInterface instanceof zzan) {
            return (zzan) queryLocalInterface;
        }
        return new zzao(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return com.google.android.gms.common.h.f5182a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final boolean j() {
        com.google.android.gms.common.internal.c A = A();
        return (TextUtils.isEmpty(A.b()) || A.a(com.google.android.gms.auth.a.b.f4704c).isEmpty()) ? false : true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle r() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.auth.service.START";
    }
}
