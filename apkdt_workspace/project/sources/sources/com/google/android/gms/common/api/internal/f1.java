package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.common.api.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class f1 extends c1<Boolean> {

    /* renamed from: b, reason: collision with root package name */
    private final k.a<?> f5046b;

    public f1(k.a<?> aVar, e.i.b.b.d.i<Boolean> iVar) {
        super(4, iVar);
        this.f5046b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final /* bridge */ /* synthetic */ void a(@NonNull n1 n1Var, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.c0
    @Nullable
    public final Feature[] b(g.a<?> aVar) {
        q0 q0Var = aVar.i().get(this.f5046b);
        if (q0Var == null) {
            return null;
        }
        return q0Var.f5121a.c();
    }

    @Override // com.google.android.gms.common.api.internal.c0
    public final boolean c(g.a<?> aVar) {
        q0 q0Var = aVar.i().get(this.f5046b);
        return q0Var != null && q0Var.f5121a.d();
    }

    @Override // com.google.android.gms.common.api.internal.c1
    public final void d(g.a<?> aVar) {
        q0 remove = aVar.i().remove(this.f5046b);
        if (remove != null) {
            remove.f5122b.a(aVar.f(), this.f5040a);
            remove.f5121a.a();
        } else {
            this.f5040a.b((e.i.b.b.d.i<T>) false);
        }
    }
}
