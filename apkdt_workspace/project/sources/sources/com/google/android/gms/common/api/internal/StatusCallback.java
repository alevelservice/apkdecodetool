package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class StatusCallback extends IStatusCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    @KeepForSdk
    private final e<Status> f5028e;

    @KeepForSdk
    public StatusCallback(e<Status> eVar) {
        this.f5028e = eVar;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    public void onResult(Status status) {
        this.f5028e.a(status);
    }
}
