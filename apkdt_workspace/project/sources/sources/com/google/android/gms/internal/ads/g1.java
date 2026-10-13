package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g1 implements BaseGmsClient.a {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ he f6770e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ e1 f6771f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(e1 e1Var, he heVar) {
        this.f6771f = e1Var;
        this.f6770e = heVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(@Nullable Bundle bundle) {
        b1 b1Var;
        try {
            he heVar = this.f6770e;
            b1Var = this.f6771f.f6327a;
            heVar.b(b1Var.A());
        } catch (DeadObjectException e2) {
            this.f6770e.a(e2);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
        he heVar = this.f6770e;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i2);
        heVar.a(new RuntimeException(sb.toString()));
    }
}
