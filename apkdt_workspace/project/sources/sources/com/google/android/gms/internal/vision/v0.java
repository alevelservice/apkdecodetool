package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class v0<E> extends s0<E> {

    /* renamed from: g, reason: collision with root package name */
    private final w0<E> f12549g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(w0<E> w0Var, int i2) {
        super(w0Var.size(), i2);
        this.f12549g = w0Var;
    }

    @Override // com.google.android.gms.internal.vision.s0
    protected final E a(int i2) {
        return this.f12549g.get(i2);
    }
}
