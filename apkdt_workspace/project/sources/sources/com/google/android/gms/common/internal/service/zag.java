package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class zag extends zaa {

    /* renamed from: e, reason: collision with root package name */
    private final e<Status> f5335e;

    public zag(e<Status> eVar) {
        this.f5335e = eVar;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zak
    public final void zaj(int i2) {
        this.f5335e.a(new Status(i2));
    }
}
