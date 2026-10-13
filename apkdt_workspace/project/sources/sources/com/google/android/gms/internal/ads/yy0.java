package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ly0;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class yy0 extends ly0.a {
    private vy0 m;
    private final /* synthetic */ ty0 n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy0(ty0 ty0Var, ex0<? extends qz0<?>> ex0Var, boolean z, vy0 vy0Var) {
        super(ex0Var, z, false);
        this.n = ty0Var;
        this.m = vy0Var;
    }

    @Override // com.google.android.gms.internal.ads.ly0.a
    final void a(boolean z, int i2, @NullableDecl Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.ly0.a
    final void c() {
        vy0 vy0Var = this.m;
        if (vy0Var != null) {
            vy0Var.interruptTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ly0.a
    public final void d() {
        super.d();
        this.m = null;
    }

    @Override // com.google.android.gms.internal.ads.ly0.a
    final void e() {
        vy0 vy0Var = this.m;
        if (vy0Var != null) {
            vy0Var.execute();
        } else {
            uw0.a(this.n.isDone());
        }
    }
}
