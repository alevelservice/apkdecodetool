package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hw1<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f7193a;

    /* renamed from: b, reason: collision with root package name */
    public final zw0 f7194b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f7195c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7196d;

    private hw1(T t, zw0 zw0Var) {
        this.f7196d = false;
        this.f7193a = t;
        this.f7194b = zw0Var;
        this.f7195c = null;
    }

    public static <T> hw1<T> a(T t, zw0 zw0Var) {
        return new hw1<>(t, zw0Var);
    }

    public static <T> hw1<T> a(r0 r0Var) {
        return new hw1<>(r0Var);
    }

    private hw1(r0 r0Var) {
        this.f7196d = false;
        this.f7193a = null;
        this.f7194b = null;
        this.f7195c = r0Var;
    }
}
