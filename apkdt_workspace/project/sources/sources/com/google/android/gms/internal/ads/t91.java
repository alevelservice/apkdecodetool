package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class t91 {

    /* renamed from: a, reason: collision with root package name */
    private volatile oa1 f9536a;

    /* renamed from: b, reason: collision with root package name */
    private volatile t71 f9537b;

    static {
        q81.b();
    }

    private final oa1 b(oa1 oa1Var) {
        if (this.f9536a == null) {
            synchronized (this) {
                if (this.f9536a == null) {
                    try {
                        this.f9536a = oa1Var;
                        this.f9537b = t71.zzhfn;
                    } catch (o91 unused) {
                        this.f9536a = oa1Var;
                        this.f9537b = t71.zzhfn;
                    }
                }
            }
        }
        return this.f9536a;
    }

    public final oa1 a(oa1 oa1Var) {
        oa1 oa1Var2 = this.f9536a;
        this.f9537b = null;
        this.f9536a = oa1Var;
        return oa1Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t91)) {
            return false;
        }
        t91 t91Var = (t91) obj;
        oa1 oa1Var = this.f9536a;
        oa1 oa1Var2 = t91Var.f9536a;
        if (oa1Var == null && oa1Var2 == null) {
            return a().equals(t91Var.a());
        }
        if (oa1Var != null && oa1Var2 != null) {
            return oa1Var.equals(oa1Var2);
        }
        if (oa1Var != null) {
            return oa1Var.equals(t91Var.b(oa1Var.a()));
        }
        return b(oa1Var2.a()).equals(oa1Var2);
    }

    public int hashCode() {
        return 1;
    }

    public final t71 a() {
        if (this.f9537b != null) {
            return this.f9537b;
        }
        synchronized (this) {
            if (this.f9537b != null) {
                return this.f9537b;
            }
            if (this.f9536a == null) {
                this.f9537b = t71.zzhfn;
            } else {
                this.f9537b = this.f9536a.f();
            }
            return this.f9537b;
        }
    }

    public final int b() {
        if (this.f9537b != null) {
            return this.f9537b.size();
        }
        if (this.f9536a != null) {
            return this.f9536a.d();
        }
        return 0;
    }
}
