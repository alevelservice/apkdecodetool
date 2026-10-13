package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public class q1 {

    /* renamed from: a, reason: collision with root package name */
    private volatile i2 f11528a;

    /* renamed from: b, reason: collision with root package name */
    private volatile y f11529b;

    static {
        p0.b();
    }

    private final i2 b(i2 i2Var) {
        if (this.f11528a == null) {
            synchronized (this) {
                if (this.f11528a == null) {
                    try {
                        this.f11528a = i2Var;
                        this.f11529b = y.zzfi;
                    } catch (j1 unused) {
                        this.f11528a = i2Var;
                        this.f11529b = y.zzfi;
                    }
                }
            }
        }
        return this.f11528a;
    }

    public final int a() {
        if (this.f11529b != null) {
            return this.f11529b.size();
        }
        if (this.f11528a != null) {
            return this.f11528a.e();
        }
        return 0;
    }

    public final i2 a(i2 i2Var) {
        i2 i2Var2 = this.f11528a;
        this.f11529b = null;
        this.f11528a = i2Var;
        return i2Var2;
    }

    public final y b() {
        if (this.f11529b != null) {
            return this.f11529b;
        }
        synchronized (this) {
            if (this.f11529b != null) {
                return this.f11529b;
            }
            this.f11529b = this.f11528a == null ? y.zzfi : this.f11528a.c();
            return this.f11529b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        i2 i2Var = this.f11528a;
        i2 i2Var2 = q1Var.f11528a;
        return (i2Var == null && i2Var2 == null) ? b().equals(q1Var.b()) : (i2Var == null || i2Var2 == null) ? i2Var != null ? i2Var.equals(q1Var.b(i2Var.a())) : b(i2Var2.a()).equals(i2Var2) : i2Var.equals(i2Var2);
    }

    public int hashCode() {
        return 1;
    }
}
