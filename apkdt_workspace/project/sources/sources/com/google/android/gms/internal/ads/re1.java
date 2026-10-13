package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class re1<T> implements ie1<T>, oe1<T> {

    /* renamed from: b, reason: collision with root package name */
    private static final re1<Object> f9110b = new re1<>(null);

    /* renamed from: a, reason: collision with root package name */
    private final T f9111a;

    private re1(T t) {
        this.f9111a = t;
    }

    public static <T> oe1<T> a(T t) {
        ue1.a(t, "instance cannot be null");
        return new re1(t);
    }

    public static <T> oe1<T> b(T t) {
        if (t == null) {
            return f9110b;
        }
        return new re1(t);
    }

    @Override // com.google.android.gms.internal.ads.ie1, com.google.android.gms.internal.ads.af1
    public final T get() {
        return this.f9111a;
    }
}
