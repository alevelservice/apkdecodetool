package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbb extends zzan {

    /* renamed from: e, reason: collision with root package name */
    private com.google.android.gms.common.api.internal.e<Status> f11699e;

    public zzbb(com.google.android.gms.common.api.internal.e<Status> eVar) {
        this.f11699e = eVar;
    }

    private final void a(int i2) {
        if (this.f11699e == null) {
            return;
        }
        this.f11699e.a(com.google.android.gms.location.h.b(com.google.android.gms.location.h.a(i2)));
        this.f11699e = null;
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i2, PendingIntent pendingIntent) {
        a(i2);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i2, String[] strArr) {
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzb(int i2, String[] strArr) {
        a(i2);
    }
}
