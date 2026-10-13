package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class a1 extends t7<a1> {

    /* renamed from: g, reason: collision with root package name */
    private static volatile a1[] f11736g;

    /* renamed from: c, reason: collision with root package name */
    public String f11737c = null;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f11738d = null;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f11739e = null;

    /* renamed from: f, reason: collision with root package name */
    public Integer f11740f = null;

    public a1() {
        this.f12115b = null;
        this.f12237a = -1;
    }

    public static a1[] d() {
        if (f11736g == null) {
            synchronized (x7.f12205b) {
                if (f11736g == null) {
                    f11736g = new a1[0];
                }
            }
        }
        return f11736g;
    }

    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final void a(r7 r7Var) {
        String str = this.f11737c;
        if (str != null) {
            r7Var.a(1, str);
        }
        Boolean bool = this.f11738d;
        if (bool != null) {
            r7Var.a(2, bool.booleanValue());
        }
        Boolean bool2 = this.f11739e;
        if (bool2 != null) {
            r7Var.a(3, bool2.booleanValue());
        }
        Integer num = this.f11740f;
        if (num != null) {
            r7Var.b(4, num.intValue());
        }
        super.a(r7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a1)) {
            return false;
        }
        a1 a1Var = (a1) obj;
        String str = this.f11737c;
        if (str == null) {
            if (a1Var.f11737c != null) {
                return false;
            }
        } else if (!str.equals(a1Var.f11737c)) {
            return false;
        }
        Boolean bool = this.f11738d;
        if (bool == null) {
            if (a1Var.f11738d != null) {
                return false;
            }
        } else if (!bool.equals(a1Var.f11738d)) {
            return false;
        }
        Boolean bool2 = this.f11739e;
        if (bool2 == null) {
            if (a1Var.f11739e != null) {
                return false;
            }
        } else if (!bool2.equals(a1Var.f11739e)) {
            return false;
        }
        Integer num = this.f11740f;
        if (num == null) {
            if (a1Var.f11740f != null) {
                return false;
            }
        } else if (!num.equals(a1Var.f11740f)) {
            return false;
        }
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            return this.f12115b.equals(a1Var.f12115b);
        }
        v7 v7Var2 = a1Var.f12115b;
        return v7Var2 == null || v7Var2.a();
    }

    public final int hashCode() {
        int hashCode = (a1.class.getName().hashCode() + 527) * 31;
        String str = this.f11737c;
        int i2 = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f11738d;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f11739e;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.f11740f;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            i2 = this.f12115b.hashCode();
        }
        return hashCode5 + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final int a() {
        int a2 = super.a();
        String str = this.f11737c;
        if (str != null) {
            a2 += r7.b(1, str);
        }
        Boolean bool = this.f11738d;
        if (bool != null) {
            bool.booleanValue();
            a2 += r7.b(2) + 1;
        }
        Boolean bool2 = this.f11739e;
        if (bool2 != null) {
            bool2.booleanValue();
            a2 += r7.b(3) + 1;
        }
        Integer num = this.f11740f;
        return num != null ? a2 + r7.c(4, num.intValue()) : a2;
    }

    @Override // com.google.android.gms.internal.measurement.z7
    public final /* synthetic */ z7 a(o7 o7Var) {
        while (true) {
            int c2 = o7Var.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 10) {
                this.f11737c = o7Var.b();
            } else if (c2 == 16) {
                this.f11738d = Boolean.valueOf(o7Var.d());
            } else if (c2 == 24) {
                this.f11739e = Boolean.valueOf(o7Var.d());
            } else if (c2 != 32) {
                if (!super.a(o7Var, c2)) {
                    return this;
                }
            } else {
                this.f11740f = Integer.valueOf(o7Var.e());
            }
        }
    }
}
