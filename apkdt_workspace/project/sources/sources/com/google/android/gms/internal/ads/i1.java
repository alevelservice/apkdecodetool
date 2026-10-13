package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i1 implements BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ he f7206e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(e1 e1Var, he heVar) {
        this.f7206e = heVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f7206e.a(new RuntimeException("Connection failed."));
    }
}
