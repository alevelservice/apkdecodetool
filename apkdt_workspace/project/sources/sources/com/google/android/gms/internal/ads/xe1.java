package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xe1<T> implements af1<T> {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f10330c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private volatile af1<T> f10331a;

    /* renamed from: b, reason: collision with root package name */
    private volatile Object f10332b = f10330c;

    private xe1(af1<T> af1Var) {
        this.f10331a = af1Var;
    }

    public static <P extends af1<T>, T> af1<T> a(P p) {
        if ((p instanceof xe1) || (p instanceof pe1)) {
            return p;
        }
        ue1.a(p);
        return new xe1(p);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final T get() {
        T t = (T) this.f10332b;
        if (t != f10330c) {
            return t;
        }
        af1<T> af1Var = this.f10331a;
        if (af1Var == null) {
            return (T) this.f10332b;
        }
        T t2 = af1Var.get();
        this.f10332b = t2;
        this.f10331a = null;
        return t2;
    }
}
