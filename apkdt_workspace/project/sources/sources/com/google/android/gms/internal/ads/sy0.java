package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ly0;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class sy0 extends ly0.a {
    private List<vw0<V>> m;
    private final /* synthetic */ py0 n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sy0(py0 py0Var, ex0<? extends qz0<? extends V>> ex0Var, boolean z) {
        super(ex0Var, z, true);
        List a2;
        this.n = py0Var;
        if (ex0Var.isEmpty()) {
            a2 = jx0.zzaok();
        } else {
            a2 = rx0.a(ex0Var.size());
        }
        this.m = a2;
        for (int i2 = 0; i2 < ex0Var.size(); i2++) {
            this.m.add(null);
        }
    }

    abstract C a(List<vw0<V>> list);

    @Override // com.google.android.gms.internal.ads.ly0.a
    final void a(boolean z, int i2, @NullableDecl V v) {
        List<vw0<V>> list = this.m;
        if (list != 0) {
            list.set(i2, vw0.zzz(v));
        } else {
            uw0.b(z || this.n.isCancelled(), "Future was done before all dependencies completed");
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
        Collection collection = this.m;
        if (collection != null) {
            this.n.a((py0) a((List) collection));
        } else {
            uw0.a(this.n.isDone());
        }
    }
}
