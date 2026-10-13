package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.t;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class zzw extends zzq {

    /* renamed from: e, reason: collision with root package name */
    private final Context f4880e;

    public zzw(Context context) {
        this.f4880e = context;
    }

    private final void a() {
        if (t.a(this.f4880e, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder(52);
        sb.append("Calling UID ");
        sb.append(callingUid);
        sb.append(" is not Google Play services.");
        throw new SecurityException(sb.toString());
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzr
    public final void zzm() {
        a();
        b a2 = b.a(this.f4880e);
        GoogleSignInAccount b2 = a2.b();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.s;
        if (b2 != null) {
            googleSignInOptions = a2.c();
        }
        com.google.android.gms.auth.api.signin.c a3 = com.google.android.gms.auth.api.signin.a.a(this.f4880e, googleSignInOptions);
        if (b2 != null) {
            a3.h();
        } else {
            a3.i();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzr
    public final void zzn() {
        a();
        l.a(this.f4880e).a();
    }
}
