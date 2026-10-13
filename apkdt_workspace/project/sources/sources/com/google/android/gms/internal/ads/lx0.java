package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class lx0<E> extends yw0<E> {

    /* renamed from: g, reason: collision with root package name */
    private final jx0<E> f7987g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lx0(jx0<E> jx0Var, int i2) {
        super(jx0Var.size(), i2);
        this.f7987g = jx0Var;
    }

    @Override // com.google.android.gms.internal.ads.yw0
    protected final E a(int i2) {
        return this.f7987g.get(i2);
    }
}
