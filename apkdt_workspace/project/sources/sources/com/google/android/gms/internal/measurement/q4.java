package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public class q4 {

    /* renamed from: a, reason: collision with root package name */
    private volatile k5 f12056a;

    /* renamed from: b, reason: collision with root package name */
    private volatile t2 f12057b;

    static {
        o3.c();
    }

    private final k5 b(k5 k5Var) {
        if (this.f12056a == null) {
            synchronized (this) {
                if (this.f12056a == null) {
                    try {
                        this.f12056a = k5Var;
                        this.f12057b = t2.zzadh;
                    } catch (l4 unused) {
                        this.f12056a = k5Var;
                        this.f12057b = t2.zzadh;
                    }
                }
            }
        }
        return this.f12056a;
    }

    public final k5 a(k5 k5Var) {
        k5 k5Var2 = this.f12056a;
        this.f12057b = null;
        this.f12056a = k5Var;
        return k5Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q4)) {
            return false;
        }
        q4 q4Var = (q4) obj;
        k5 k5Var = this.f12056a;
        k5 k5Var2 = q4Var.f12056a;
        if (k5Var == null && k5Var2 == null) {
            return a().equals(q4Var.a());
        }
        if (k5Var != null && k5Var2 != null) {
            return k5Var.equals(k5Var2);
        }
        if (k5Var != null) {
            return k5Var.equals(q4Var.b(k5Var.a()));
        }
        return b(k5Var2.a()).equals(k5Var2);
    }

    public int hashCode() {
        return 1;
    }

    public final t2 a() {
        if (this.f12057b != null) {
            return this.f12057b;
        }
        synchronized (this) {
            if (this.f12057b != null) {
                return this.f12057b;
            }
            if (this.f12056a == null) {
                this.f12057b = t2.zzadh;
            } else {
                this.f12057b = this.f12056a.zzrs();
            }
            return this.f12057b;
        }
    }

    public final int b() {
        if (this.f12057b != null) {
            return this.f12057b.size();
        }
        if (this.f12056a != null) {
            return this.f12056a.b();
        }
        return 0;
    }
}
