package com.google.android.gms.common.api.internal;

import androidx.annotation.BinderThread;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class zaap extends zad {

    /* renamed from: e, reason: collision with root package name */
    private final WeakReference<a0> f5149e;

    zaap(a0 a0Var) {
        this.f5149e = new WeakReference<>(a0Var);
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    @BinderThread
    public final void zab(zak zakVar) {
        f0 f0Var;
        a0 a0Var = this.f5149e.get();
        if (a0Var == null) {
            return;
        }
        f0Var = a0Var.f5029a;
        f0Var.a(new b0(this, a0Var, a0Var, zakVar));
        throw null;
    }
}
