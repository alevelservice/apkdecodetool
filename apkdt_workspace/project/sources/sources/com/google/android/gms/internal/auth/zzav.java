package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzav extends zzaj {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ j f11345e;

    zzav(j jVar) {
        this.f11345e = jVar;
    }

    @Override // com.google.android.gms.internal.auth.zzaj, com.google.android.gms.internal.auth.zzal
    public final void zzb(String str) {
        if (str != null) {
            this.f11345e.a((j) new l(str));
        } else {
            this.f11345e.a((j) g.d(new Status(3006)));
        }
    }
}
