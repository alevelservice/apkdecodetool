package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pe1<T> implements ie1<T>, af1<T> {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f8689c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private volatile af1<T> f8690a;

    /* renamed from: b, reason: collision with root package name */
    private volatile Object f8691b = f8689c;

    private pe1(af1<T> af1Var) {
        this.f8690a = af1Var;
    }

    public static <P extends af1<T>, T> af1<T> a(P p) {
        ue1.a(p);
        return p instanceof pe1 ? p : new pe1(p);
    }

    public static <P extends af1<T>, T> ie1<T> b(P p) {
        if (p instanceof ie1) {
            return (ie1) p;
        }
        ue1.a(p);
        return new pe1(p);
    }

    @Override // com.google.android.gms.internal.ads.ie1, com.google.android.gms.internal.ads.af1
    public final T get() {
        T t = (T) this.f8691b;
        if (t == f8689c) {
            synchronized (this) {
                t = (T) this.f8691b;
                if (t == f8689c) {
                    t = this.f8690a.get();
                    Object obj = this.f8691b;
                    if ((obj != f8689c) && obj != t) {
                        String valueOf = String.valueOf(obj);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f8691b = t;
                    this.f8690a = null;
                }
            }
        }
        return t;
    }
}
