package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class z0 extends t7<z0> {

    /* renamed from: c, reason: collision with root package name */
    public Long f12225c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f12226d = null;

    /* renamed from: e, reason: collision with root package name */
    private Integer f12227e = null;

    /* renamed from: f, reason: collision with root package name */
    public j0[] f12228f = new j0[0];

    /* renamed from: g, reason: collision with root package name */
    public a1[] f12229g = a1.d();

    /* renamed from: h, reason: collision with root package name */
    public y0[] f12230h = y0.d();

    /* renamed from: i, reason: collision with root package name */
    private String f12231i = null;

    /* renamed from: j, reason: collision with root package name */
    public Boolean f12232j = null;

    public z0() {
        this.f12115b = null;
        this.f12237a = -1;
    }

    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final void a(r7 r7Var) {
        Long l2 = this.f12225c;
        int i2 = 0;
        if (l2 != null) {
            long longValue = l2.longValue();
            r7Var.a(1, 0);
            r7Var.a(longValue);
        }
        String str = this.f12226d;
        if (str != null) {
            r7Var.a(2, str);
        }
        Integer num = this.f12227e;
        if (num != null) {
            r7Var.b(3, num.intValue());
        }
        j0[] j0VarArr = this.f12228f;
        if (j0VarArr != null && j0VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                j0[] j0VarArr2 = this.f12228f;
                if (i3 >= j0VarArr2.length) {
                    break;
                }
                j0 j0Var = j0VarArr2[i3];
                if (j0Var != null) {
                    r7Var.a(4, j0Var);
                }
                i3++;
            }
        }
        a1[] a1VarArr = this.f12229g;
        if (a1VarArr != null && a1VarArr.length > 0) {
            int i4 = 0;
            while (true) {
                a1[] a1VarArr2 = this.f12229g;
                if (i4 >= a1VarArr2.length) {
                    break;
                }
                a1 a1Var = a1VarArr2[i4];
                if (a1Var != null) {
                    r7Var.a(5, a1Var);
                }
                i4++;
            }
        }
        y0[] y0VarArr = this.f12230h;
        if (y0VarArr != null && y0VarArr.length > 0) {
            while (true) {
                y0[] y0VarArr2 = this.f12230h;
                if (i2 >= y0VarArr2.length) {
                    break;
                }
                y0 y0Var = y0VarArr2[i2];
                if (y0Var != null) {
                    r7Var.a(6, y0Var);
                }
                i2++;
            }
        }
        String str2 = this.f12231i;
        if (str2 != null) {
            r7Var.a(7, str2);
        }
        Boolean bool = this.f12232j;
        if (bool != null) {
            r7Var.a(8, bool.booleanValue());
        }
        super.a(r7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        Long l2 = this.f12225c;
        if (l2 == null) {
            if (z0Var.f12225c != null) {
                return false;
            }
        } else if (!l2.equals(z0Var.f12225c)) {
            return false;
        }
        String str = this.f12226d;
        if (str == null) {
            if (z0Var.f12226d != null) {
                return false;
            }
        } else if (!str.equals(z0Var.f12226d)) {
            return false;
        }
        Integer num = this.f12227e;
        if (num == null) {
            if (z0Var.f12227e != null) {
                return false;
            }
        } else if (!num.equals(z0Var.f12227e)) {
            return false;
        }
        if (!x7.a(this.f12228f, z0Var.f12228f) || !x7.a(this.f12229g, z0Var.f12229g) || !x7.a(this.f12230h, z0Var.f12230h)) {
            return false;
        }
        String str2 = this.f12231i;
        if (str2 == null) {
            if (z0Var.f12231i != null) {
                return false;
            }
        } else if (!str2.equals(z0Var.f12231i)) {
            return false;
        }
        Boolean bool = this.f12232j;
        if (bool == null) {
            if (z0Var.f12232j != null) {
                return false;
            }
        } else if (!bool.equals(z0Var.f12232j)) {
            return false;
        }
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            return this.f12115b.equals(z0Var.f12115b);
        }
        v7 v7Var2 = z0Var.f12115b;
        return v7Var2 == null || v7Var2.a();
    }

    public final int hashCode() {
        int hashCode = (z0.class.getName().hashCode() + 527) * 31;
        Long l2 = this.f12225c;
        int i2 = 0;
        int hashCode2 = (hashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.f12226d;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.f12227e;
        int hashCode4 = (((((((hashCode3 + (num == null ? 0 : num.hashCode())) * 31) + x7.a(this.f12228f)) * 31) + x7.a(this.f12229g)) * 31) + x7.a(this.f12230h)) * 31;
        String str2 = this.f12231i;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.f12232j;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        v7 v7Var = this.f12115b;
        if (v7Var != null && !v7Var.a()) {
            i2 = this.f12115b.hashCode();
        }
        return hashCode6 + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.t7, com.google.android.gms.internal.measurement.z7
    public final int a() {
        int a2 = super.a();
        Long l2 = this.f12225c;
        if (l2 != null) {
            long longValue = l2.longValue();
            a2 += r7.b(1) + (((-128) & longValue) == 0 ? 1 : ((-16384) & longValue) == 0 ? 2 : ((-2097152) & longValue) == 0 ? 3 : ((-268435456) & longValue) == 0 ? 4 : ((-34359738368L) & longValue) == 0 ? 5 : ((-4398046511104L) & longValue) == 0 ? 6 : ((-562949953421312L) & longValue) == 0 ? 7 : ((-72057594037927936L) & longValue) == 0 ? 8 : (longValue & Long.MIN_VALUE) == 0 ? 9 : 10);
        }
        String str = this.f12226d;
        if (str != null) {
            a2 += r7.b(2, str);
        }
        Integer num = this.f12227e;
        if (num != null) {
            a2 += r7.c(3, num.intValue());
        }
        j0[] j0VarArr = this.f12228f;
        int i2 = 0;
        if (j0VarArr != null && j0VarArr.length > 0) {
            int i3 = a2;
            int i4 = 0;
            while (true) {
                j0[] j0VarArr2 = this.f12228f;
                if (i4 >= j0VarArr2.length) {
                    break;
                }
                j0 j0Var = j0VarArr2[i4];
                if (j0Var != null) {
                    i3 += i3.c(4, j0Var);
                }
                i4++;
            }
            a2 = i3;
        }
        a1[] a1VarArr = this.f12229g;
        if (a1VarArr != null && a1VarArr.length > 0) {
            int i5 = a2;
            int i6 = 0;
            while (true) {
                a1[] a1VarArr2 = this.f12229g;
                if (i6 >= a1VarArr2.length) {
                    break;
                }
                a1 a1Var = a1VarArr2[i6];
                if (a1Var != null) {
                    i5 += r7.b(5, a1Var);
                }
                i6++;
            }
            a2 = i5;
        }
        y0[] y0VarArr = this.f12230h;
        if (y0VarArr != null && y0VarArr.length > 0) {
            while (true) {
                y0[] y0VarArr2 = this.f12230h;
                if (i2 >= y0VarArr2.length) {
                    break;
                }
                y0 y0Var = y0VarArr2[i2];
                if (y0Var != null) {
                    a2 += r7.b(6, y0Var);
                }
                i2++;
            }
        }
        String str2 = this.f12231i;
        if (str2 != null) {
            a2 += r7.b(7, str2);
        }
        Boolean bool = this.f12232j;
        if (bool == null) {
            return a2;
        }
        bool.booleanValue();
        return a2 + r7.b(8) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.z7
    public final /* synthetic */ z7 a(o7 o7Var) {
        while (true) {
            int c2 = o7Var.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                this.f12225c = Long.valueOf(o7Var.f());
            } else if (c2 == 18) {
                this.f12226d = o7Var.b();
            } else if (c2 == 24) {
                this.f12227e = Integer.valueOf(o7Var.e());
            } else if (c2 == 34) {
                int a2 = a8.a(o7Var, 34);
                j0[] j0VarArr = this.f12228f;
                int length = j0VarArr == null ? 0 : j0VarArr.length;
                j0[] j0VarArr2 = new j0[a2 + length];
                if (length != 0) {
                    System.arraycopy(this.f12228f, 0, j0VarArr2, 0, length);
                }
                while (length < j0VarArr2.length - 1) {
                    j0VarArr2[length] = (j0) o7Var.a(j0.p());
                    o7Var.c();
                    length++;
                }
                j0VarArr2[length] = (j0) o7Var.a(j0.p());
                this.f12228f = j0VarArr2;
            } else if (c2 == 42) {
                int a3 = a8.a(o7Var, 42);
                a1[] a1VarArr = this.f12229g;
                int length2 = a1VarArr == null ? 0 : a1VarArr.length;
                a1[] a1VarArr2 = new a1[a3 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.f12229g, 0, a1VarArr2, 0, length2);
                }
                while (length2 < a1VarArr2.length - 1) {
                    a1VarArr2[length2] = new a1();
                    o7Var.a(a1VarArr2[length2]);
                    o7Var.c();
                    length2++;
                }
                a1VarArr2[length2] = new a1();
                o7Var.a(a1VarArr2[length2]);
                this.f12229g = a1VarArr2;
            } else if (c2 == 50) {
                int a4 = a8.a(o7Var, 50);
                y0[] y0VarArr = this.f12230h;
                int length3 = y0VarArr == null ? 0 : y0VarArr.length;
                y0[] y0VarArr2 = new y0[a4 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.f12230h, 0, y0VarArr2, 0, length3);
                }
                while (length3 < y0VarArr2.length - 1) {
                    y0VarArr2[length3] = new y0();
                    o7Var.a(y0VarArr2[length3]);
                    o7Var.c();
                    length3++;
                }
                y0VarArr2[length3] = new y0();
                o7Var.a(y0VarArr2[length3]);
                this.f12230h = y0VarArr2;
            } else if (c2 == 58) {
                this.f12231i = o7Var.b();
            } else if (c2 != 64) {
                if (!super.a(o7Var, c2)) {
                    return this;
                }
            } else {
                this.f12232j = Boolean.valueOf(o7Var.d());
            }
        }
    }
}
