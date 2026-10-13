package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.t;
import e.i.b.b.d.i;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class zzai extends IStatusCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f11318e;

    zzai(a aVar, i iVar) {
        this.f11318e = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        t.a(status, this.f11318e);
    }
}
