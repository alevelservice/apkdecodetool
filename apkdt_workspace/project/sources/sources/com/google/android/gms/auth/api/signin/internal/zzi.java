package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class zzi extends zzd {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f4877e;

    zzi(i iVar) {
        this.f4877e = iVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzd, com.google.android.gms.auth.api.signin.internal.zzt
    public final void zzc(GoogleSignInAccount googleSignInAccount, Status status) {
        if (googleSignInAccount != null) {
            l.a(this.f4877e.o).a(this.f4877e.p, googleSignInAccount);
        }
        this.f4877e.a((i) new com.google.android.gms.auth.api.signin.d(googleSignInAccount, status));
    }
}
