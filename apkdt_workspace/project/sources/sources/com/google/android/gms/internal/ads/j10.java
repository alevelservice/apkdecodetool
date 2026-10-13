package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j10 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private zzaan f7406a;

    public j10(zzbtn zzbtnVar) {
        this.f7406a = zzbtnVar;
    }

    @Nullable
    public final synchronized zzaan a() {
        return this.f7406a;
    }

    public final synchronized void a(@Nullable zzaan zzaanVar) {
        this.f7406a = zzaanVar;
    }
}
