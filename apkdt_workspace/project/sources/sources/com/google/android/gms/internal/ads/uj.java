package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uj {

    /* renamed from: a, reason: collision with root package name */
    private final int f9743a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9744b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9745c;

    private uj(int i2, int i3, int i4) {
        this.f9743a = i2;
        this.f9745c = i3;
        this.f9744b = i4;
    }

    public static uj a(zztw zztwVar) {
        if (zztwVar.f11249h) {
            return new uj(3, 0, 0);
        }
        if (zztwVar.m) {
            return new uj(2, 0, 0);
        }
        if (zztwVar.f11253l) {
            return f();
        }
        return a(zztwVar.f11251j, zztwVar.f11248g);
    }

    public static uj f() {
        return new uj(0, 0, 0);
    }

    public static uj g() {
        return new uj(4, 0, 0);
    }

    public static uj h() {
        return new uj(5, 0, 0);
    }

    public final boolean b() {
        return this.f9743a == 3;
    }

    public final boolean c() {
        return this.f9743a == 0;
    }

    public final boolean d() {
        return this.f9743a == 4;
    }

    public final boolean e() {
        return this.f9743a == 5;
    }

    public static uj a(int i2, int i3) {
        return new uj(1, i2, i3);
    }

    public final boolean a() {
        return this.f9743a == 2;
    }
}
