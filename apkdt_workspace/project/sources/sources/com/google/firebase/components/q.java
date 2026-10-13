package com.google.firebase.components;

/* compiled from: Dependency.java */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    private final Class<?> f14347a;

    /* renamed from: b, reason: collision with root package name */
    private final int f14348b;

    /* renamed from: c, reason: collision with root package name */
    private final int f14349c;

    private q(Class<?> cls, int i2, int i3) {
        c0.a(cls, "Null dependency anInterface.");
        this.f14347a = cls;
        this.f14348b = i2;
        this.f14349c = i3;
    }

    public static q a(Class<?> cls) {
        return new q(cls, 0, 0);
    }

    public static q b(Class<?> cls) {
        return new q(cls, 0, 1);
    }

    public static q c(Class<?> cls) {
        return new q(cls, 1, 0);
    }

    public static q d(Class<?> cls) {
        return new q(cls, 2, 0);
    }

    public boolean e() {
        return this.f14348b == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f14347a == qVar.f14347a && this.f14348b == qVar.f14348b && this.f14349c == qVar.f14349c;
    }

    public int hashCode() {
        return ((((this.f14347a.hashCode() ^ 1000003) * 1000003) ^ this.f14348b) * 1000003) ^ this.f14349c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f14347a);
        sb.append(", type=");
        int i2 = this.f14348b;
        sb.append(i2 == 1 ? "required" : i2 == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(a(this.f14349c));
        sb.append("}");
        return sb.toString();
    }

    public Class<?> a() {
        return this.f14347a;
    }

    public boolean b() {
        return this.f14349c == 2;
    }

    public boolean c() {
        return this.f14349c == 0;
    }

    public boolean d() {
        return this.f14348b == 1;
    }

    private static String a(int i2) {
        if (i2 == 0) {
            return "direct";
        }
        if (i2 == 1) {
            return "provider";
        }
        if (i2 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i2);
    }
}
