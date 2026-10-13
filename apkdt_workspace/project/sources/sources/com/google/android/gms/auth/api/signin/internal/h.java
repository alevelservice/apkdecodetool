package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.f;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class h extends com.google.android.gms.common.internal.f<zzv> {
    private final GoogleSignInOptions z;

    public h(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, @Nullable GoogleSignInOptions googleSignInOptions, f.a aVar, f.b bVar) {
        super(context, looper, 91, cVar, aVar, bVar);
        GoogleSignInOptions.a aVar2;
        if (googleSignInOptions != null) {
            aVar2 = new GoogleSignInOptions.a(googleSignInOptions);
        } else {
            aVar2 = new GoogleSignInOptions.a();
        }
        aVar2.a(com.google.android.gms.internal.p000authapi.d.a());
        if (!cVar.d().isEmpty()) {
            Iterator<Scope> it = cVar.d().iterator();
            while (it.hasNext()) {
                aVar2.a(it.next(), new Scope[0]);
            }
        }
        this.z = aVar2.a();
    }

    public final GoogleSignInOptions B() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        if (queryLocalInterface instanceof zzv) {
            return (zzv) queryLocalInterface;
        }
        return new zzu(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return com.google.android.gms.common.h.f5182a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }
}
