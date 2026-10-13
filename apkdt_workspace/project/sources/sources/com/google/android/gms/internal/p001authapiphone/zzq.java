package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.t;
import com.google.android.gms.common.internal.a;
import e.i.b.b.d.i;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
final class zzq extends IStatusCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f11301e;

    zzq(c cVar, i iVar) {
        this.f11301e = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        if (status.k() == 6) {
            this.f11301e.b((Exception) a.a(status));
        } else {
            t.a(status, this.f11301e);
        }
    }
}
