package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class is1 implements BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ he f7372e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ cs1 f7373f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is1(cs1 cs1Var, he heVar) {
        this.f7373f = cs1Var;
        this.f7372e = heVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        obj = this.f7373f.f6114d;
        synchronized (obj) {
            this.f7372e.a(new RuntimeException("Connection failed."));
        }
    }
}
