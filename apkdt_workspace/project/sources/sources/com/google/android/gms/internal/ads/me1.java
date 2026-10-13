package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class me1<T> implements oe1<T> {

    /* renamed from: a, reason: collision with root package name */
    private af1<T> f8091a;

    public static <T> void a(af1<T> af1Var, af1<T> af1Var2) {
        ue1.a(af1Var2);
        me1 me1Var = (me1) af1Var;
        if (me1Var.f8091a == null) {
            me1Var.f8091a = af1Var2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final T get() {
        af1<T> af1Var = this.f8091a;
        if (af1Var != null) {
            return af1Var.get();
        }
        throw new IllegalStateException();
    }
}
