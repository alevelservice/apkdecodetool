package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.g;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class e1 extends c1<Void> {

    /* renamed from: b, reason: collision with root package name */
    private final n<a.b, ?> f5044b;

    /* renamed from: c, reason: collision with root package name */
    private final u<a.b, ?> f5045c;

    public e1(q0 q0Var, e.i.b.b.d.i<Void> iVar) {
        super(3, iVar);
        this.f5044b = q0Var.f5121a;
        this.f5045c = q0Var.f5122b;
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final /* bridge */ /* synthetic */ void a(@NonNull n1 n1Var, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.c0
    @Nullable
    public final Feature[] b(g.a<?> aVar) {
        return this.f5044b.c();
    }

    @Override // com.google.android.gms.common.api.internal.c0
    public final boolean c(g.a<?> aVar) {
        return this.f5044b.d();
    }

    @Override // com.google.android.gms.common.api.internal.c1
    public final void d(g.a<?> aVar) {
        this.f5044b.a(aVar.f(), this.f5040a);
        if (this.f5044b.b() != null) {
            aVar.i().put(this.f5044b.b(), new q0(this.f5044b, this.f5045c));
        }
    }
}
