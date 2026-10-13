package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class u implements BaseGmsClient.a {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.f f5339e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(com.google.android.gms.common.api.internal.f fVar) {
        this.f5339e = fVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(@Nullable Bundle bundle) {
        this.f5339e.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
        this.f5339e.onConnectionSuspended(i2);
    }
}
