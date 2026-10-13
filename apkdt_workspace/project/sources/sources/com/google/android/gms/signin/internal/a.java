package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class a extends f<zae> implements e.i.b.b.c.d {
    private final com.google.android.gms.common.internal.c A;
    private final Bundle B;
    private Integer C;
    private final boolean z;

    private a(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.c cVar, Bundle bundle, f.a aVar, f.b bVar) {
        super(context, looper, 44, cVar, aVar, bVar);
        this.z = true;
        this.A = cVar;
        this.B = bundle;
        this.C = cVar.e();
    }

    @Override // e.i.b.b.c.d
    public final void a(zac zacVar) {
        m.a(zacVar, "Expecting a valid ISignInCallbacks");
        try {
            try {
                Account c2 = this.A.c();
                ((zae) u()).zaa(new zai(new ResolveAccountRequest(c2, this.C.intValue(), "<<default account>>".equals(c2.name) ? com.google.android.gms.auth.api.signin.internal.b.a(q()).b() : null)), zacVar);
            } catch (RemoteException unused) {
                zacVar.zab(new zak(8));
            }
        } catch (RemoteException unused2) {
        }
    }

    @Override // e.i.b.b.c.d
    public final void b() {
        a(new BaseGmsClient.d());
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public int h() {
        return h.f5182a;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public boolean j() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected Bundle r() {
        if (!q().getPackageName().equals(this.A.g())) {
            this.B.putString("com.google.android.gms.signin.internal.realClientPackageName", this.A.g());
        }
        return this.B;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String v() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String w() {
        return "com.google.android.gms.signin.service.START";
    }

    public a(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.c cVar, e.i.b.b.c.a aVar, f.a aVar2, f.b bVar) {
        this(context, looper, true, cVar, a(cVar), aVar2, bVar);
    }

    @KeepForSdk
    public static Bundle a(com.google.android.gms.common.internal.c cVar) {
        e.i.b.b.c.a i2 = cVar.i();
        Integer e2 = cVar.e();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", cVar.a());
        if (e2 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", e2.intValue());
        }
        if (i2 != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", i2.h());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", i2.g());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", i2.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", i2.f());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", i2.b());
            bundle.putString("com.google.android.gms.signin.internal.logSessionId", i2.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", i2.i());
            if (i2.a() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", i2.a().longValue());
            }
            if (i2.d() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", i2.d().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof zae) {
            return (zae) queryLocalInterface;
        }
        return new zag(iBinder);
    }
}
