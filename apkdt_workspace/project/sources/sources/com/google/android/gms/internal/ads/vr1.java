package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vr1 implements BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ sr1 f9984e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vr1(sr1 sr1Var) {
        this.f9984e = sr1Var;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        wr1 wr1Var;
        Object obj2;
        obj = this.f9984e.f9430b;
        synchronized (obj) {
            this.f9984e.f9433e = null;
            wr1Var = this.f9984e.f9431c;
            if (wr1Var != null) {
                sr1.a(this.f9984e, (wr1) null);
            }
            obj2 = this.f9984e.f9430b;
            obj2.notifyAll();
        }
    }
}
