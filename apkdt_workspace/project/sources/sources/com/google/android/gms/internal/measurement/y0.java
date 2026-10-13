package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class y0 extends t7<y0> {

    /* renamed from: h, reason: collision with root package name */
    private static volatile y0[] f12210h;

    /* renamed from: c, reason: collision with root package name */
    public Integer f12211c = null;

    /* renamed from: d, reason: collision with root package name */
    public c0[] f12212d = new c0[0];

    /* renamed from: e, reason: collision with root package name */
    public z[] f12213e = new z[0];

    /* renamed from: f, reason: collision with root package name */
    private Boolean f12214f = null;

    /* renamed from: g, reason: collision with root package name */
    private Boolean f12215g = null;

    public y0() {
        this.f12115b = null;
        this.f12237a = -1;
    }

    public static y0[] d() {
        if (f12210h == null) {
            synchronized (x7.f12205b) {
                if (f12210h == null) {
                    f12210h = new y0[0];
                }
            }
        }
        return f12210h;
    }

    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final void a(r7 r7Var) {
        Integer num = this.f12211c;
        if (num != null) {
            r7Var.b(1, num.intValue());
        }
        c0[] c0VarArr = this.f12212d;
        int i2 = 0;
        if (c0VarArr != null && c0VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                c0[] c0VarArr2 = this.f12212d;
                if (i3 >= c0VarArr2.length) {
                    break;
                }
                c0 c0Var = c0VarArr2[i3];
                if (c0Var != null) {
                    r7Var.a(2, c0Var);
                }
                i3++;
            }
        }
        z[] zVarArr = this.f12213e;
        if (zVarArr != null && zVarArr.length > 0) {
            while (true) {
                z[] zVarArr2 = this.f12213e;
                if (i2 >= zVarArr2.length) {
                    break;
                }
                z zVar = zVarArr2[i2];
                if (zVar != null) {
                    r7Var.a(3, zVar);
                }
                i2++;
            }
        }
        Boolean bool = this.f12214f;
        if (bool != null) {
            r7Var.a(4, bool.booleanValue());
        }
        Boolean bool2 = this.f12215g;
        if (bool2 != null) {
            r7Var.a(5, bool2.booleanValue());
        }
        super.a(r7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        Integer num = this.f12211c;
        if (num == null) {
            if (y0Var.f12211c != null) {
                return false;
            }
        } else if (!num.equals(y0Var.f12211c)) {
            return false;
        }
        if (!x7.a(this.f12212d, y0Var.f12212d) || !x7.a(this.f12213e, y0Var.f12213e)) {
            return false;
        }
        Boolean bool = this.f12214f;
        if (bool == null) {
            if (y0Var.f12214f != null) {
                return false;
            }
        } else if (!bool.equals(y0Var.f12214f)) {
            return false;
        }
        Boolean bool2 = this.f12215g;
        if (bool2 == null) {
            if (y0Var.f12215g != null) {
                return false;
            }
        } else if (!bool2.equals(y0Var.f12215g)) {
            return false;
        }
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            return this.f12115b.equals(y0Var.f12115b);
        }
        v7 v7Var2 = y0Var.f12115b;
        return v7Var2 == null || v7Var2.a();
    }

    public final int hashCode() {
        int hashCode = (y0.class.getName().hashCode() + 527) * 31;
        Integer num = this.f12211c;
        int i2 = 0;
        int hashCode2 = (((((hashCode + (num == null ? 0 : num.hashCode())) * 31) + x7.a(this.f12212d)) * 31) + x7.a(this.f12213e)) * 31;
        Boolean bool = this.f12214f;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f12215g;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            i2 = this.f12115b.hashCode();
        }
        return hashCode4 + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final int a() {
        int a2 = super.a();
        Integer num = this.f12211c;
        if (num != null) {
            a2 += r7.c(1, num.intValue());
        }
        c0[] c0VarArr = this.f12212d;
        int i2 = 0;
        if (c0VarArr != null && c0VarArr.length > 0) {
            int i3 = a2;
            int i4 = 0;
            while (true) {
                c0[] c0VarArr2 = this.f12212d;
                if (i4 >= c0VarArr2.length) {
                    break;
                }
                c0 c0Var = c0VarArr2[i4];
                if (c0Var != null) {
                    i3 += i3.c(2, c0Var);
                }
                i4++;
            }
            a2 = i3;
        }
        z[] zVarArr = this.f12213e;
        if (zVarArr != null && zVarArr.length > 0) {
            while (true) {
                z[] zVarArr2 = this.f12213e;
                if (i2 >= zVarArr2.length) {
                    break;
                }
                z zVar = zVarArr2[i2];
                if (zVar != null) {
                    a2 += i3.c(3, zVar);
                }
                i2++;
            }
        }
        Boolean bool = this.f12214f;
        if (bool != null) {
            bool.booleanValue();
            a2 += r7.b(4) + 1;
        }
        Boolean bool2 = this.f12215g;
        if (bool2 == null) {
            return a2;
        }
        bool2.booleanValue();
        return a2 + r7.b(5) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.z7
    public final /* synthetic */ z7 a(o7 o7Var) {
        while (true) {
            int c2 = o7Var.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                this.f12211c = Integer.valueOf(o7Var.e());
            } else if (c2 == 18) {
                int a2 = a8.a(o7Var, 18);
                c0[] c0VarArr = this.f12212d;
                int length = c0VarArr == null ? 0 : c0VarArr.length;
                c0[] c0VarArr2 = new c0[a2 + length];
                if (length != 0) {
                    System.arraycopy(this.f12212d, 0, c0VarArr2, 0, length);
                }
                while (length < c0VarArr2.length - 1) {
                    c0VarArr2[length] = (c0) o7Var.a(c0.x());
                    o7Var.c();
                    length++;
                }
                c0VarArr2[length] = (c0) o7Var.a(c0.x());
                this.f12212d = c0VarArr2;
            } else if (c2 == 26) {
                int a3 = a8.a(o7Var, 26);
                z[] zVarArr = this.f12213e;
                int length2 = zVarArr == null ? 0 : zVarArr.length;
                z[] zVarArr2 = new z[a3 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.f12213e, 0, zVarArr2, 0, length2);
                }
                while (length2 < zVarArr2.length - 1) {
                    zVarArr2[length2] = (z) o7Var.a(z.A());
                    o7Var.c();
                    length2++;
                }
                zVarArr2[length2] = (z) o7Var.a(z.A());
                this.f12213e = zVarArr2;
            } else if (c2 == 32) {
                this.f12214f = Boolean.valueOf(o7Var.d());
            } else if (c2 != 40) {
                if (!super.a(o7Var, c2)) {
                    return this;
                }
            } else {
                this.f12215g = Boolean.valueOf(o7Var.d());
            }
        }
    }
}
