package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class v implements BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.m f5340e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(com.google.android.gms.common.api.internal.m mVar) {
        this.f5340e = mVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f5340e.onConnectionFailed(connectionResult);
    }
}
