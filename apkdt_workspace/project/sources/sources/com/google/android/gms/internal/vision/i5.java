package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class i5 {

    /* renamed from: a, reason: collision with root package name */
    private volatile d6 f12383a;

    /* renamed from: b, reason: collision with root package name */
    private volatile j3 f12384b;

    static {
        d4.a();
    }

    private final d6 b(d6 d6Var) {
        if (this.f12383a == null) {
            synchronized (this) {
                if (this.f12383a == null) {
                    try {
                        this.f12383a = d6Var;
                        this.f12384b = j3.zzrx;
                    } catch (d5 unused) {
                        this.f12383a = d6Var;
                        this.f12384b = j3.zzrx;
                    }
                }
            }
        }
        return this.f12383a;
    }

    public final d6 a(d6 d6Var) {
        d6 d6Var2 = this.f12383a;
        this.f12384b = null;
        this.f12383a = d6Var;
        return d6Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i5)) {
            return false;
        }
        i5 i5Var = (i5) obj;
        d6 d6Var = this.f12383a;
        d6 d6Var2 = i5Var.f12383a;
        if (d6Var == null && d6Var2 == null) {
            return a().equals(i5Var.a());
        }
        if (d6Var != null && d6Var2 != null) {
            return d6Var.equals(d6Var2);
        }
        if (d6Var != null) {
            return d6Var.equals(i5Var.b(d6Var.c()));
        }
        return b(d6Var2.c()).equals(d6Var2);
    }

    public int hashCode() {
        return 1;
    }

    public final j3 a() {
        if (this.f12384b != null) {
            return this.f12384b;
        }
        synchronized (this) {
            if (this.f12384b != null) {
                return this.f12384b;
            }
            if (this.f12383a == null) {
                this.f12384b = j3.zzrx;
            } else {
                this.f12384b = this.f12383a.k();
            }
            return this.f12384b;
        }
    }

    public final int b() {
        if (this.f12384b != null) {
            return this.f12384b.size();
        }
        if (this.f12383a != null) {
            return this.f12383a.d();
        }
        return 0;
    }
}
