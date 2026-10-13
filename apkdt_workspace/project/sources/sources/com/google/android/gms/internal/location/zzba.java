package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzba extends zzan {

    /* renamed from: e, reason: collision with root package name */
    private com.google.android.gms.common.api.internal.e<Status> f11698e;

    public zzba(com.google.android.gms.common.api.internal.e<Status> eVar) {
        this.f11698e = eVar;
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i2, PendingIntent pendingIntent) {
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zza(int i2, String[] strArr) {
        if (this.f11698e == null) {
            return;
        }
        this.f11698e.a(com.google.android.gms.location.h.b(com.google.android.gms.location.h.a(i2)));
        this.f11698e = null;
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzb(int i2, String[] strArr) {
    }
}
