package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.b;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.internal.f;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class c extends f<zzad> {
    private final Bundle z;

    public c(Context context, Looper looper, b bVar, com.google.android.gms.common.internal.c cVar, com.google.android.gms.common.api.internal.f fVar, m mVar) {
        super(context, looper, 212, cVar, fVar, mVar);
        this.z = bVar.a();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @Nullable
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");
        if (queryLocalInterface instanceof zzad) {
            return (zzad) queryLocalInterface;
        }
        return new zzac(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] o() {
        return e.f11316h;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle r() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    protected final String v() {
        return "com.google.android.gms.auth.api.identity.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    protected final String w() {
        return "com.google.android.gms.auth.api.identity.service.signin.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final boolean y() {
        return true;
    }
}
