package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n5<T> implements y5<T> {
    private static final int[] r = new int[0];
    private static final Unsafe s = x6.c();

    /* renamed from: a, reason: collision with root package name */
    private final int[] f11988a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f11989b;

    /* renamed from: c, reason: collision with root package name */
    private final int f11990c;

    /* renamed from: d, reason: collision with root package name */
    private final int f11991d;

    /* renamed from: e, reason: collision with root package name */
    private final k5 f11992e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f11993f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f11994g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f11995h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f11996i;

    /* renamed from: j, reason: collision with root package name */
    private final int[] f11997j;

    /* renamed from: k, reason: collision with root package name */
    private final int f11998k;

    /* renamed from: l, reason: collision with root package name */
    private final int f11999l;
    private final r5 m;
    private final v4 n;
    private final r6<?, ?> o;
    private final q3<?> p;
    private final d5 q;

    private n5(int[] iArr, Object[] objArr, int i2, int i3, k5 k5Var, boolean z, boolean z2, int[] iArr2, int i4, int i5, r5 r5Var, v4 v4Var, r6<?, ?> r6Var, q3<?> q3Var, d5 d5Var) {
        this.f11988a = iArr;
        this.f11989b = objArr;
        this.f11990c = i2;
        this.f11991d = i3;
        this.f11994g = k5Var instanceof b4;
        this.f11995h = z;
        this.f11993f = q3Var != null && q3Var.a(k5Var);
        this.f11996i = false;
        this.f11997j = iArr2;
        this.f11998k = i4;
        this.f11999l = i5;
        this.m = r5Var;
        this.n = v4Var;
        this.o = r6Var;
        this.p = q3Var;
        this.f11992e = k5Var;
        this.q = d5Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> n5<T> a(Class<T> cls, i5 i5Var, r5 r5Var, v4 v4Var, r6<?, ?> r6Var, q3<?> q3Var, d5 d5Var) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char charAt;
        int i7;
        int charAt2;
        int charAt3;
        int i8;
        int[] iArr;
        int i9;
        char c2;
        char c3;
        int i10;
        char charAt4;
        int i11;
        char charAt5;
        int i12;
        char charAt6;
        int i13;
        char charAt7;
        char charAt8;
        char charAt9;
        char charAt10;
        char charAt11;
        int i14;
        int i15;
        char c4;
        char c5;
        int i16;
        int objectFieldOffset;
        String str;
        Class<?> cls2;
        int i17;
        int i18;
        int i19;
        int i20;
        Field a2;
        int i21;
        char charAt12;
        int i22;
        int i23;
        Field a3;
        Field a4;
        int i24;
        char charAt13;
        int i25;
        char charAt14;
        int i26;
        char charAt15;
        char charAt16;
        char charAt17;
        if (i5Var instanceof w5) {
            w5 w5Var = (w5) i5Var;
            int i27 = 0;
            boolean z = w5Var.c() == b4.d.f11774j;
            String d2 = w5Var.d();
            int length = d2.length();
            int charAt18 = d2.charAt(0);
            if (charAt18 >= 55296) {
                int i28 = charAt18 & 8191;
                int i29 = 1;
                int i30 = 13;
                while (true) {
                    i2 = i29 + 1;
                    charAt17 = d2.charAt(i29);
                    if (charAt17 < 55296) {
                        break;
                    }
                    i28 |= (charAt17 & 8191) << i30;
                    i30 += 13;
                    i29 = i2;
                }
                charAt18 = (charAt17 << i30) | i28;
            } else {
                i2 = 1;
            }
            int i31 = i2 + 1;
            int charAt19 = d2.charAt(i2);
            if (charAt19 >= 55296) {
                int i32 = charAt19 & 8191;
                int i33 = 13;
                while (true) {
                    i3 = i31 + 1;
                    charAt16 = d2.charAt(i31);
                    if (charAt16 < 55296) {
                        break;
                    }
                    i32 |= (charAt16 & 8191) << i33;
                    i33 += 13;
                    i31 = i3;
                }
                charAt19 = i32 | (charAt16 << i33);
            } else {
                i3 = i31;
            }
            if (charAt19 == 0) {
                iArr = r;
                charAt3 = 0;
                c3 = 0;
                i9 = 0;
                charAt = 0;
                charAt2 = 0;
                c2 = 0;
            } else {
                int i34 = i3 + 1;
                char charAt20 = d2.charAt(i3);
                if (charAt20 >= 55296) {
                    int i35 = charAt20 & 8191;
                    int i36 = 13;
                    while (true) {
                        i4 = i34 + 1;
                        charAt11 = d2.charAt(i34);
                        if (charAt11 < 55296) {
                            break;
                        }
                        i35 |= (charAt11 & 8191) << i36;
                        i36 += 13;
                        i34 = i4;
                    }
                    charAt20 = ((charAt11 << i36) | i35) == true ? 1 : 0;
                } else {
                    i4 = i34;
                }
                int i37 = i4 + 1;
                int charAt21 = d2.charAt(i4);
                if (charAt21 >= 55296) {
                    int i38 = charAt21 & 8191;
                    int i39 = 13;
                    while (true) {
                        i5 = i37 + 1;
                        charAt10 = d2.charAt(i37);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i38 |= (charAt10 & 8191) << i39;
                        i39 += 13;
                        i37 = i5;
                    }
                    charAt21 = i38 | (charAt10 << i39);
                } else {
                    i5 = i37;
                }
                int i40 = i5 + 1;
                char charAt22 = d2.charAt(i5);
                if (charAt22 >= 55296) {
                    int i41 = charAt22 & 8191;
                    int i42 = 13;
                    while (true) {
                        i6 = i40 + 1;
                        charAt9 = d2.charAt(i40);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i41 |= (charAt9 & 8191) << i42;
                        i42 += 13;
                        i40 = i6;
                    }
                    charAt22 = ((charAt9 << i42) | i41) == true ? 1 : 0;
                } else {
                    i6 = i40;
                }
                int i43 = i6 + 1;
                charAt = d2.charAt(i6);
                if (charAt >= 55296) {
                    int i44 = charAt & 8191;
                    int i45 = 13;
                    while (true) {
                        i7 = i43 + 1;
                        charAt8 = d2.charAt(i43);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i44 |= (charAt8 & 8191) << i45;
                        i45 += 13;
                        i43 = i7;
                    }
                    charAt = ((charAt8 << i45) | i44) == true ? 1 : 0;
                } else {
                    i7 = i43;
                }
                int i46 = i7 + 1;
                charAt2 = d2.charAt(i7);
                if (charAt2 >= 55296) {
                    int i47 = charAt2 & 8191;
                    int i48 = 13;
                    while (true) {
                        i13 = i46 + 1;
                        charAt7 = d2.charAt(i46);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i47 |= (charAt7 & 8191) << i48;
                        i48 += 13;
                        i46 = i13;
                    }
                    charAt2 = (charAt7 << i48) | i47;
                    i46 = i13;
                }
                int i49 = i46 + 1;
                charAt3 = d2.charAt(i46);
                if (charAt3 >= 55296) {
                    int i50 = charAt3 & 8191;
                    int i51 = 13;
                    while (true) {
                        i12 = i49 + 1;
                        charAt6 = d2.charAt(i49);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i50 |= (charAt6 & 8191) << i51;
                        i51 += 13;
                        i49 = i12;
                    }
                    charAt3 = i50 | (charAt6 << i51);
                    i49 = i12;
                }
                int i52 = i49 + 1;
                int charAt23 = d2.charAt(i49);
                if (charAt23 >= 55296) {
                    int i53 = 13;
                    int i54 = charAt23 & 8191;
                    int i55 = i52;
                    while (true) {
                        i11 = i55 + 1;
                        charAt5 = d2.charAt(i55);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i54 |= (charAt5 & 8191) << i53;
                        i53 += 13;
                        i55 = i11;
                    }
                    charAt23 = i54 | (charAt5 << i53);
                    i8 = i11;
                } else {
                    i8 = i52;
                }
                int i56 = i8 + 1;
                i27 = d2.charAt(i8);
                if (i27 >= 55296) {
                    int i57 = 13;
                    int i58 = i27 & 8191;
                    int i59 = i56;
                    while (true) {
                        i10 = i59 + 1;
                        charAt4 = d2.charAt(i59);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i58 |= (charAt4 & 8191) << i57;
                        i57 += 13;
                        i59 = i10;
                    }
                    i27 = i58 | (charAt4 << i57);
                    i56 = i10;
                }
                iArr = new int[i27 + charAt3 + charAt23];
                i9 = (charAt20 << 1) + charAt21;
                int i60 = i56;
                c2 = charAt20;
                c3 = charAt22;
                i3 = i60;
            }
            Unsafe unsafe = s;
            Object[] e2 = w5Var.e();
            Class<?> cls3 = w5Var.a().getClass();
            int i61 = i9;
            int[] iArr2 = new int[charAt2 * 3];
            Object[] objArr = new Object[charAt2 << 1];
            int i62 = i27 + charAt3;
            int i63 = i27;
            int i64 = i62;
            int i65 = 0;
            int i66 = 0;
            while (i3 < length) {
                int i67 = i3 + 1;
                int charAt24 = d2.charAt(i3);
                char c6 = 55296;
                if (charAt24 >= 55296) {
                    int i68 = 13;
                    int i69 = charAt24 & 8191;
                    int i70 = i67;
                    while (true) {
                        i26 = i70 + 1;
                        charAt15 = d2.charAt(i70);
                        if (charAt15 < c6) {
                            break;
                        }
                        i69 |= (charAt15 & 8191) << i68;
                        i68 += 13;
                        i70 = i26;
                        c6 = 55296;
                    }
                    charAt24 = i69 | (charAt15 << i68);
                    i14 = i26;
                } else {
                    i14 = i67;
                }
                int i71 = i14 + 1;
                int charAt25 = d2.charAt(i14);
                int i72 = length;
                char c7 = 55296;
                if (charAt25 >= 55296) {
                    int i73 = 13;
                    int i74 = charAt25 & 8191;
                    int i75 = i71;
                    while (true) {
                        i25 = i75 + 1;
                        charAt14 = d2.charAt(i75);
                        if (charAt14 < c7) {
                            break;
                        }
                        i74 |= (charAt14 & 8191) << i73;
                        i73 += 13;
                        i75 = i25;
                        c7 = 55296;
                    }
                    charAt25 = i74 | (charAt14 << i73);
                    i15 = i25;
                } else {
                    i15 = i71;
                }
                int i76 = i27;
                int i77 = charAt25 & 255;
                boolean z2 = z;
                if ((charAt25 & 1024) != 0) {
                    iArr[i65] = i66;
                    i65++;
                }
                int i78 = i65;
                if (i77 >= 51) {
                    int i79 = i15 + 1;
                    int charAt26 = d2.charAt(i15);
                    char c8 = 55296;
                    if (charAt26 >= 55296) {
                        int i80 = charAt26 & 8191;
                        int i81 = 13;
                        while (true) {
                            i24 = i79 + 1;
                            charAt13 = d2.charAt(i79);
                            if (charAt13 < c8) {
                                break;
                            }
                            i80 |= (charAt13 & 8191) << i81;
                            i81 += 13;
                            i79 = i24;
                            c8 = 55296;
                        }
                        charAt26 = i80 | (charAt13 << i81);
                        i79 = i24;
                    }
                    int i82 = i77 - 51;
                    int i83 = i79;
                    if (i82 == 9 || i82 == 17) {
                        i23 = 1;
                        objArr[((i66 / 3) << 1) + 1] = e2[i61];
                        i61++;
                    } else {
                        if (i82 == 12 && (charAt18 & 1) == 1) {
                            objArr[((i66 / 3) << 1) + 1] = e2[i61];
                            i61++;
                        }
                        i23 = 1;
                    }
                    int i84 = charAt26 << i23;
                    Object obj = e2[i84];
                    if (obj instanceof Field) {
                        a3 = (Field) obj;
                    } else {
                        a3 = a(cls3, (String) obj);
                        e2[i84] = a3;
                    }
                    char c9 = c3;
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(a3);
                    int i85 = i84 + 1;
                    Object obj2 = e2[i85];
                    if (obj2 instanceof Field) {
                        a4 = (Field) obj2;
                    } else {
                        a4 = a(cls3, (String) obj2);
                        e2[i85] = a4;
                    }
                    str = d2;
                    i20 = (int) unsafe.objectFieldOffset(a4);
                    cls2 = cls3;
                    i17 = i61;
                    objectFieldOffset = objectFieldOffset2;
                    i19 = 0;
                    c5 = c9;
                    c4 = charAt;
                    i16 = charAt24;
                    i3 = i83;
                } else {
                    char c10 = c3;
                    int i86 = i61 + 1;
                    Field a5 = a(cls3, (String) e2[i61]);
                    c4 = charAt;
                    if (i77 == 9 || i77 == 17) {
                        c5 = c10;
                        objArr[((i66 / 3) << 1) + 1] = a5.getType();
                    } else {
                        if (i77 == 27 || i77 == 49) {
                            c5 = c10;
                            i22 = i86 + 1;
                            objArr[((i66 / 3) << 1) + 1] = e2[i86];
                        } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                            c5 = c10;
                            if ((charAt18 & 1) == 1) {
                                i22 = i86 + 1;
                                objArr[((i66 / 3) << 1) + 1] = e2[i86];
                            }
                        } else if (i77 == 50) {
                            int i87 = i63 + 1;
                            iArr[i63] = i66;
                            int i88 = (i66 / 3) << 1;
                            int i89 = i86 + 1;
                            objArr[i88] = e2[i86];
                            if ((charAt25 & 2048) != 0) {
                                i86 = i89 + 1;
                                objArr[i88 + 1] = e2[i89];
                                c5 = c10;
                                i63 = i87;
                            } else {
                                i63 = i87;
                                i86 = i89;
                                c5 = c10;
                            }
                        } else {
                            c5 = c10;
                        }
                        i16 = charAt24;
                        i86 = i22;
                        objectFieldOffset = (int) unsafe.objectFieldOffset(a5);
                        if ((charAt18 & 1) == 1 || i77 > 17) {
                            str = d2;
                            cls2 = cls3;
                            i17 = i86;
                            i18 = i15;
                            i19 = 0;
                            i20 = 0;
                        } else {
                            i18 = i15 + 1;
                            int charAt27 = d2.charAt(i15);
                            if (charAt27 >= 55296) {
                                int i90 = charAt27 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i21 = i18 + 1;
                                    charAt12 = d2.charAt(i18);
                                    if (charAt12 < 55296) {
                                        break;
                                    }
                                    i90 |= (charAt12 & 8191) << i91;
                                    i91 += 13;
                                    i18 = i21;
                                }
                                charAt27 = i90 | (charAt12 << i91);
                                i18 = i21;
                            }
                            int i92 = (c2 << 1) + (charAt27 / 32);
                            Object obj3 = e2[i92];
                            str = d2;
                            if (obj3 instanceof Field) {
                                a2 = (Field) obj3;
                            } else {
                                a2 = a(cls3, (String) obj3);
                                e2[i92] = a2;
                            }
                            cls2 = cls3;
                            i17 = i86;
                            i20 = (int) unsafe.objectFieldOffset(a2);
                            i19 = charAt27 % 32;
                        }
                        if (i77 >= 18 && i77 <= 49) {
                            iArr[i64] = objectFieldOffset;
                            i64++;
                        }
                        i3 = i18;
                    }
                    i16 = charAt24;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(a5);
                    if ((charAt18 & 1) == 1) {
                    }
                    str = d2;
                    cls2 = cls3;
                    i17 = i86;
                    i18 = i15;
                    i19 = 0;
                    i20 = 0;
                    if (i77 >= 18) {
                        iArr[i64] = objectFieldOffset;
                        i64++;
                    }
                    i3 = i18;
                }
                int i93 = i66 + 1;
                iArr2[i66] = i16;
                int i94 = i93 + 1;
                iArr2[i93] = (i77 << 20) | ((charAt25 & 256) != 0 ? 268435456 : 0) | ((charAt25 & 512) != 0 ? 536870912 : 0) | objectFieldOffset;
                i66 = i94 + 1;
                iArr2[i94] = (i19 << 20) | i20;
                cls3 = cls2;
                charAt = c4;
                i27 = i76;
                i61 = i17;
                length = i72;
                z = z2;
                c3 = c5;
                i65 = i78;
                d2 = str;
            }
            return new n5<>(iArr2, objArr, c3, charAt, w5Var.a(), z, false, iArr, i27, i62, r5Var, v4Var, r6Var, q3Var, d5Var);
        }
        ((o6) i5Var).c();
        throw null;
    }

    private static u6 e(Object obj) {
        b4 b4Var = (b4) obj;
        u6 u6Var = b4Var.zzahz;
        if (u6Var != u6.d()) {
            return u6Var;
        }
        u6 e2 = u6.e();
        b4Var.zzahz = e2;
        return e2;
    }

    private static boolean f(int i2) {
        return (i2 & 536870912) != 0;
    }

    private static <T> boolean f(T t, long j2) {
        return ((Boolean) x6.f(t, j2)).booleanValue();
    }

    private final int g(int i2) {
        if (i2 < this.f11990c || i2 > this.f11991d) {
            return -1;
        }
        return b(i2, 0);
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void b(T t, T t2) {
        if (t2 != null) {
            for (int i2 = 0; i2 < this.f11988a.length; i2 += 3) {
                int d2 = d(i2);
                long j2 = 1048575 & d2;
                int i3 = this.f11988a[i2];
                switch ((d2 & 267386880) >>> 20) {
                    case 0:
                        if (a((n5<T>) t2, i2)) {
                            x6.a(t, j2, x6.e(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.d(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.b(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.b(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.b(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((n5<T>) t2, i2)) {
                            x6.a(t, j2, x6.c(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((n5<T>) t2, i2)) {
                            x6.a(t, j2, x6.f(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        a(t, t2, i2);
                        break;
                    case 10:
                        if (a((n5<T>) t2, i2)) {
                            x6.a(t, j2, x6.f(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.b(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.a(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((n5<T>) t2, i2)) {
                            x6.a((Object) t, j2, x6.b(t2, j2));
                            b((n5<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        a(t, t2, i2);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.n.a(t, t2, j2);
                        break;
                    case 50:
                        a6.a(this.q, t, t2, j2);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (a((n5<T>) t2, i3, i2)) {
                            x6.a(t, j2, x6.f(t2, j2));
                            b((n5<T>) t, i3, i2);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        b(t, t2, i2);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (a((n5<T>) t2, i3, i2)) {
                            x6.a(t, j2, x6.f(t2, j2));
                            b((n5<T>) t, i3, i2);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        b(t, t2, i2);
                        break;
                }
            }
            if (this.f11995h) {
                return;
            }
            a6.a(this.o, t, t2);
            if (this.f11993f) {
                a6.a(this.p, t, t2);
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.y5
    public final int c(T t) {
        int i2;
        int a2;
        int length = this.f11988a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d2 = d(i4);
            int i5 = this.f11988a[i4];
            long j2 = 1048575 & d2;
            int i6 = 37;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    i2 = i3 * 53;
                    a2 = c4.a(Double.doubleToLongBits(x6.e(t, j2)));
                    i3 = i2 + a2;
                    break;
                case 1:
                    i2 = i3 * 53;
                    a2 = Float.floatToIntBits(x6.d(t, j2));
                    i3 = i2 + a2;
                    break;
                case 2:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 3:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 4:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 5:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 6:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 7:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.c(t, j2));
                    i3 = i2 + a2;
                    break;
                case 8:
                    i2 = i3 * 53;
                    a2 = ((String) x6.f(t, j2)).hashCode();
                    i3 = i2 + a2;
                    break;
                case 9:
                    Object f2 = x6.f(t, j2);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i2 = i3 * 53;
                    a2 = x6.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 11:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 14:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 15:
                    i2 = i3 * 53;
                    a2 = x6.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 16:
                    i2 = i3 * 53;
                    a2 = c4.a(x6.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 17:
                    Object f3 = x6.f(t, j2);
                    if (f3 != null) {
                        i6 = f3.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i3 * 53;
                    a2 = x6.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 50:
                    i2 = i3 * 53;
                    a2 = x6.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 51:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(Double.doubleToLongBits(b(t, j2)));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = Float.floatToIntBits(c(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(f(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = ((String) x6.f(t, j2)).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = x6.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = x6.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = c4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (a((n5<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = x6.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i3 * 53) + this.o.d(t).hashCode();
        return this.f11993f ? (hashCode * 53) + this.p.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void d(T t) {
        int i2;
        int i3 = this.f11998k;
        while (true) {
            i2 = this.f11999l;
            if (i3 >= i2) {
                break;
            }
            long d2 = d(this.f11997j[i3]) & 1048575;
            Object f2 = x6.f(t, d2);
            if (f2 != null) {
                this.q.b(f2);
                x6.a(t, d2, f2);
            }
            i3++;
        }
        int length = this.f11997j.length;
        while (i2 < length) {
            this.n.b(t, this.f11997j[i2]);
            i2++;
        }
        this.o.a(t);
        if (this.f11993f) {
            this.p.c(t);
        }
    }

    private final int e(int i2) {
        return this.f11988a[i2 + 2];
    }

    private static <T> long e(T t, long j2) {
        return ((Long) x6.f(t, j2)).longValue();
    }

    private final int d(int i2) {
        return this.f11988a[i2 + 1];
    }

    private static <T> int d(T t, long j2) {
        return ((Integer) x6.f(t, j2)).intValue();
    }

    private final h4 c(int i2) {
        return (h4) this.f11989b[((i2 / 3) << 1) + 1];
    }

    private final void b(T t, T t2, int i2) {
        int d2 = d(i2);
        int i3 = this.f11988a[i2];
        long j2 = d2 & 1048575;
        if (a((n5<T>) t2, i3, i2)) {
            Object f2 = x6.f(t, j2);
            Object f3 = x6.f(t2, j2);
            if (f2 != null && f3 != null) {
                x6.a(t, j2, c4.a(f2, f3));
                b((n5<T>) t, i3, i2);
            } else if (f3 != null) {
                x6.a(t, j2, f3);
                b((n5<T>) t, i3, i2);
            }
        }
    }

    private static <T> float c(T t, long j2) {
        return ((Float) x6.f(t, j2)).floatValue();
    }

    private final boolean c(T t, T t2, int i2) {
        return a((n5<T>) t, i2) == a((n5<T>) t2, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:299:0x0548. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.y5
    public final int b(T t) {
        int i2;
        int i3;
        long j2;
        int d2;
        int b2;
        int j3;
        int h2;
        int c2;
        int e2;
        int g2;
        int b3;
        int c3;
        int e3;
        int g3;
        int i4 = 267386880;
        int i5 = 1048575;
        int i6 = 1;
        if (this.f11995h) {
            Unsafe unsafe = s;
            int i7 = 0;
            int i8 = 0;
            while (i7 < this.f11988a.length) {
                int d3 = d(i7);
                int i9 = (d3 & i4) >>> 20;
                int i10 = this.f11988a[i7];
                long j4 = d3 & 1048575;
                int i11 = (i9 < w3.DOUBLE_LIST_PACKED.id() || i9 > w3.SINT64_LIST_PACKED.id()) ? 0 : this.f11988a[i7 + 2] & 1048575;
                switch (i9) {
                    case 0:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.b(i10, 0.0d);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.b(i10, 0.0f);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.d(i10, x6.b(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.e(i10, x6.b(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.f(i10, x6.a(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.g(i10, 0L);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.i(i10, 0);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.b(i10, true);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((n5<T>) t, i7)) {
                            Object f2 = x6.f(t, j4);
                            if (f2 instanceof t2) {
                                b3 = i3.c(i10, (t2) f2);
                            } else {
                                b3 = i3.b(i10, (String) f2);
                            }
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (a((n5<T>) t, i7)) {
                            b3 = a6.a(i10, x6.f(t, j4), a(i7));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.c(i10, (t2) x6.f(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.g(i10, x6.a(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.k(i10, x6.a(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.j(i10, 0);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.h(i10, 0L);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.h(i10, x6.a(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.f(i10, x6.b(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (a((n5<T>) t, i7)) {
                            b3 = i3.c(i10, (k5) x6.f(t, j4), a(i7));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        b3 = a6.i(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 19:
                        b3 = a6.h(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 20:
                        b3 = a6.a(i10, (List<Long>) a(t, j4), false);
                        i8 += b3;
                        break;
                    case 21:
                        b3 = a6.b(i10, (List<Long>) a(t, j4), false);
                        i8 += b3;
                        break;
                    case 22:
                        b3 = a6.e(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 23:
                        b3 = a6.i(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 24:
                        b3 = a6.h(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 25:
                        b3 = a6.j(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 26:
                        b3 = a6.a(i10, a(t, j4));
                        i8 += b3;
                        break;
                    case 27:
                        b3 = a6.a(i10, a(t, j4), a(i7));
                        i8 += b3;
                        break;
                    case 28:
                        b3 = a6.b(i10, a(t, j4));
                        i8 += b3;
                        break;
                    case 29:
                        b3 = a6.f(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 30:
                        b3 = a6.d(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 31:
                        b3 = a6.h(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 32:
                        b3 = a6.i(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 33:
                        b3 = a6.g(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 34:
                        b3 = a6.c(i10, a(t, j4), false);
                        i8 += b3;
                        break;
                    case 35:
                        c3 = a6.c((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 36:
                        c3 = a6.b((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 37:
                        c3 = a6.e((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 38:
                        c3 = a6.f((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 39:
                        c3 = a6.i((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 40:
                        c3 = a6.c((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 41:
                        c3 = a6.b((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 42:
                        c3 = a6.d((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 43:
                        c3 = a6.j((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 44:
                        c3 = a6.h((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 45:
                        c3 = a6.b((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 46:
                        c3 = a6.c((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 47:
                        c3 = a6.a((List<Integer>) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 48:
                        c3 = a6.g((List) unsafe.getObject(t, j4));
                        if (c3 <= 0) {
                            break;
                        } else {
                            if (this.f11996i) {
                                unsafe.putInt(t, i11, c3);
                            }
                            e3 = i3.e(i10);
                            g3 = i3.g(c3);
                            b3 = e3 + g3 + c3;
                            i8 += b3;
                            break;
                        }
                    case 49:
                        b3 = a6.b(i10, (List<k5>) a(t, j4), a(i7));
                        i8 += b3;
                        break;
                    case 50:
                        b3 = this.q.a(i10, x6.f(t, j4), b(i7));
                        i8 += b3;
                        break;
                    case 51:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.b(i10, 0.0d);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.b(i10, 0.0f);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.d(i10, e(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.e(i10, e(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.f(i10, d(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.g(i10, 0L);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.i(i10, 0);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.b(i10, true);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (a((n5<T>) t, i10, i7)) {
                            Object f3 = x6.f(t, j4);
                            if (f3 instanceof t2) {
                                b3 = i3.c(i10, (t2) f3);
                            } else {
                                b3 = i3.b(i10, (String) f3);
                            }
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = a6.a(i10, x6.f(t, j4), a(i7));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.c(i10, (t2) x6.f(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.g(i10, d(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.k(i10, d(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.j(i10, 0);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.h(i10, 0L);
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.h(i10, d(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.f(i10, e(t, j4));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (a((n5<T>) t, i10, i7)) {
                            b3 = i3.c(i10, (k5) x6.f(t, j4), a(i7));
                            i8 += b3;
                            break;
                        } else {
                            break;
                        }
                }
                i7 += 3;
                i4 = 267386880;
            }
            return i8 + a((r6) this.o, (Object) t);
        }
        Unsafe unsafe2 = s;
        int i12 = 0;
        int i13 = 0;
        int i14 = -1;
        int i15 = 0;
        while (i12 < this.f11988a.length) {
            int d4 = d(i12);
            int[] iArr = this.f11988a;
            int i16 = iArr[i12];
            int i17 = (d4 & 267386880) >>> 20;
            if (i17 <= 17) {
                i2 = iArr[i12 + 2];
                int i18 = i2 & i5;
                i3 = i6 << (i2 >>> 20);
                if (i18 != i14) {
                    i15 = unsafe2.getInt(t, i18);
                } else {
                    i18 = i14;
                }
                i14 = i18;
            } else {
                i2 = (!this.f11996i || i17 < w3.DOUBLE_LIST_PACKED.id() || i17 > w3.SINT64_LIST_PACKED.id()) ? 0 : this.f11988a[i12 + 2] & i5;
                i3 = 0;
            }
            long j5 = d4 & i5;
            switch (i17) {
                case 0:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        i13 += i3.b(i16, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        i13 += i3.b(i16, 0.0f);
                    }
                    break;
                case 2:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        d2 = i3.d(i16, unsafe2.getLong(t, j5));
                        i13 += d2;
                    }
                    break;
                case 3:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        d2 = i3.e(i16, unsafe2.getLong(t, j5));
                        i13 += d2;
                    }
                    break;
                case 4:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        d2 = i3.f(i16, unsafe2.getInt(t, j5));
                        i13 += d2;
                    }
                    break;
                case 5:
                    j2 = 0;
                    if ((i15 & i3) != 0) {
                        d2 = i3.g(i16, 0L);
                        i13 += d2;
                    }
                    break;
                case 6:
                    if ((i15 & i3) != 0) {
                        i13 += i3.i(i16, 0);
                    }
                    j2 = 0;
                    break;
                case 7:
                    if ((i15 & i3) != 0) {
                        i13 += i3.b(i16, true);
                        j2 = 0;
                        break;
                    }
                    j2 = 0;
                case 8:
                    if ((i15 & i3) != 0) {
                        Object object = unsafe2.getObject(t, j5);
                        if (object instanceof t2) {
                            b2 = i3.c(i16, (t2) object);
                        } else {
                            b2 = i3.b(i16, (String) object);
                        }
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 9:
                    if ((i15 & i3) != 0) {
                        b2 = a6.a(i16, unsafe2.getObject(t, j5), a(i12));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 10:
                    if ((i15 & i3) != 0) {
                        b2 = i3.c(i16, (t2) unsafe2.getObject(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 11:
                    if ((i15 & i3) != 0) {
                        b2 = i3.g(i16, unsafe2.getInt(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 12:
                    if ((i15 & i3) != 0) {
                        b2 = i3.k(i16, unsafe2.getInt(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 13:
                    if ((i15 & i3) != 0) {
                        j3 = i3.j(i16, 0);
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 14:
                    if ((i15 & i3) != 0) {
                        b2 = i3.h(i16, 0L);
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 15:
                    if ((i15 & i3) != 0) {
                        b2 = i3.h(i16, unsafe2.getInt(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 16:
                    if ((i15 & i3) != 0) {
                        b2 = i3.f(i16, unsafe2.getLong(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 17:
                    if ((i15 & i3) != 0) {
                        b2 = i3.c(i16, (k5) unsafe2.getObject(t, j5), a(i12));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 18:
                    b2 = a6.i(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += b2;
                    j2 = 0;
                    break;
                case 19:
                    h2 = a6.h(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 20:
                    h2 = a6.a(i16, (List<Long>) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 21:
                    h2 = a6.b(i16, (List<Long>) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 22:
                    h2 = a6.e(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 23:
                    h2 = a6.i(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 24:
                    h2 = a6.h(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 25:
                    h2 = a6.j(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 26:
                    b2 = a6.a(i16, (List<?>) unsafe2.getObject(t, j5));
                    i13 += b2;
                    j2 = 0;
                    break;
                case 27:
                    b2 = a6.a(i16, (List<?>) unsafe2.getObject(t, j5), a(i12));
                    i13 += b2;
                    j2 = 0;
                    break;
                case 28:
                    b2 = a6.b(i16, (List) unsafe2.getObject(t, j5));
                    i13 += b2;
                    j2 = 0;
                    break;
                case 29:
                    b2 = a6.f(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += b2;
                    j2 = 0;
                    break;
                case 30:
                    h2 = a6.d(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 31:
                    h2 = a6.h(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 32:
                    h2 = a6.i(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 33:
                    h2 = a6.g(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 34:
                    h2 = a6.c(i16, (List) unsafe2.getObject(t, j5), false);
                    i13 += h2;
                    j2 = 0;
                    break;
                case 35:
                    c2 = a6.c((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 36:
                    c2 = a6.b((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 37:
                    c2 = a6.e((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 38:
                    c2 = a6.f((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 39:
                    c2 = a6.i((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 40:
                    c2 = a6.c((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 41:
                    c2 = a6.b((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 42:
                    c2 = a6.d((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 43:
                    c2 = a6.j((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 44:
                    c2 = a6.h((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 45:
                    c2 = a6.b((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 46:
                    c2 = a6.c((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 47:
                    c2 = a6.a((List<Integer>) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 48:
                    c2 = a6.g((List) unsafe2.getObject(t, j5));
                    if (c2 > 0) {
                        if (this.f11996i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        e2 = i3.e(i16);
                        g2 = i3.g(c2);
                        j3 = e2 + g2 + c2;
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 49:
                    b2 = a6.b(i16, (List<k5>) unsafe2.getObject(t, j5), a(i12));
                    i13 += b2;
                    j2 = 0;
                    break;
                case 50:
                    b2 = this.q.a(i16, unsafe2.getObject(t, j5), b(i12));
                    i13 += b2;
                    j2 = 0;
                    break;
                case 51:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.b(i16, 0.0d);
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 52:
                    if (a((n5<T>) t, i16, i12)) {
                        j3 = i3.b(i16, 0.0f);
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 53:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.d(i16, e(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 54:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.e(i16, e(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 55:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.f(i16, d(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 56:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.g(i16, 0L);
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 57:
                    if (a((n5<T>) t, i16, i12)) {
                        j3 = i3.i(i16, 0);
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 58:
                    if (a((n5<T>) t, i16, i12)) {
                        j3 = i3.b(i16, true);
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 59:
                    if (a((n5<T>) t, i16, i12)) {
                        Object object2 = unsafe2.getObject(t, j5);
                        if (object2 instanceof t2) {
                            b2 = i3.c(i16, (t2) object2);
                        } else {
                            b2 = i3.b(i16, (String) object2);
                        }
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 60:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = a6.a(i16, unsafe2.getObject(t, j5), a(i12));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 61:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.c(i16, (t2) unsafe2.getObject(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 62:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.g(i16, d(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 63:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.k(i16, d(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 64:
                    if (a((n5<T>) t, i16, i12)) {
                        j3 = i3.j(i16, 0);
                        i13 += j3;
                    }
                    j2 = 0;
                    break;
                case 65:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.h(i16, 0L);
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 66:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.h(i16, d(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 67:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.f(i16, e(t, j5));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                case 68:
                    if (a((n5<T>) t, i16, i12)) {
                        b2 = i3.c(i16, (k5) unsafe2.getObject(t, j5), a(i12));
                        i13 += b2;
                    }
                    j2 = 0;
                    break;
                default:
                    j2 = 0;
                    break;
            }
            i12 += 3;
            i5 = 1048575;
            i6 = 1;
        }
        int a2 = i13 + a((r6) this.o, (Object) t);
        if (!this.f11993f) {
            return a2;
        }
        r3<?> a3 = this.p.a(t);
        int i19 = 0;
        for (int i20 = 0; i20 < a3.f12068a.c(); i20++) {
            Map.Entry<?, Object> a4 = a3.f12068a.a(i20);
            i19 += r3.b((t3<?>) a4.getKey(), a4.getValue());
        }
        for (Map.Entry<?, Object> entry : a3.f12068a.d()) {
            i19 += r3.b((t3<?>) entry.getKey(), entry.getValue());
        }
        return a2 + i19;
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final T a() {
        return (T) this.m.a(this.f11992e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
    
        if (com.google.android.gms.internal.measurement.a6.a(com.google.android.gms.internal.measurement.x6.f(r10, r6), com.google.android.gms.internal.measurement.x6.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.b(r10, r6) == com.google.android.gms.internal.measurement.x6.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.b(r10, r6) == com.google.android.gms.internal.measurement.x6.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c8, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f0, code lost:
    
        if (com.google.android.gms.internal.measurement.a6.a(com.google.android.gms.internal.measurement.x6.f(r10, r6), com.google.android.gms.internal.measurement.x6.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0106, code lost:
    
        if (com.google.android.gms.internal.measurement.a6.a(com.google.android.gms.internal.measurement.x6.f(r10, r6), com.google.android.gms.internal.measurement.x6.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011c, code lost:
    
        if (com.google.android.gms.internal.measurement.a6.a(com.google.android.gms.internal.measurement.x6.f(r10, r6), com.google.android.gms.internal.measurement.x6.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012e, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.c(r10, r6) == com.google.android.gms.internal.measurement.x6.c(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.b(r10, r6) == com.google.android.gms.internal.measurement.x6.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0165, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.a(r10, r6) == com.google.android.gms.internal.measurement.x6.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0178, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.b(r10, r6) == com.google.android.gms.internal.measurement.x6.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018b, code lost:
    
        if (com.google.android.gms.internal.measurement.x6.b(r10, r6) == com.google.android.gms.internal.measurement.x6.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.x6.d(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.x6.d(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bf, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.x6.e(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.x6.e(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.measurement.a6.a(com.google.android.gms.internal.measurement.x6.f(r10, r6), com.google.android.gms.internal.measurement.x6.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c5 A[LOOP:0: B:2:0x0005->B:86:0x01c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c4 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.y5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.n5.a(java.lang.Object, java.lang.Object):boolean");
    }

    private final void a(T t, T t2, int i2) {
        long d2 = d(i2) & 1048575;
        if (a((n5<T>) t2, i2)) {
            Object f2 = x6.f(t, d2);
            Object f3 = x6.f(t2, d2);
            if (f2 != null && f3 != null) {
                x6.a(t, d2, c4.a(f2, f3));
                b((n5<T>) t, i2);
            } else if (f3 != null) {
                x6.a(t, d2, f3);
                b((n5<T>) t, i2);
            }
        }
    }

    private static <UT, UB> int a(r6<UT, UB> r6Var, T t) {
        return r6Var.c(r6Var.d(t));
    }

    private static List<?> a(Object obj, long j2) {
        return (List) x6.f(obj, j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x096d  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0973  */
    @Override // com.google.android.gms.internal.measurement.y5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r13, com.google.android.gms.internal.measurement.p7 r14) {
        /*
            Method dump skipped, instructions count: 2714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.n5.a(java.lang.Object, com.google.android.gms.internal.measurement.p7):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:276:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(T r18, com.google.android.gms.internal.measurement.p7 r19) {
        /*
            Method dump skipped, instructions count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.n5.b(java.lang.Object, com.google.android.gms.internal.measurement.p7):void");
    }

    private final <K, V> void a(p7 p7Var, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.q.a(b(i3));
        throw null;
    }

    private static <UT, UB> void a(r6<UT, UB> r6Var, T t, p7 p7Var) {
        r6Var.a((r6<UT, UB>) r6Var.d(t), p7Var);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0079. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.y5
    public final void a(T t, z5 z5Var, o3 o3Var) {
        if (o3Var != null) {
            r6 r6Var = this.o;
            q3<?> q3Var = this.p;
            Object obj = null;
            while (true) {
                try {
                    int e2 = z5Var.e();
                    int g2 = g(e2);
                    if (g2 < 0) {
                        if (e2 == Integer.MAX_VALUE) {
                            for (int i2 = this.f11998k; i2 < this.f11999l; i2++) {
                                a((Object) t, this.f11997j[i2], (int) obj, (r6<UT, int>) r6Var);
                            }
                            if (obj != null) {
                                r6Var.b((Object) t, (T) obj);
                                return;
                            }
                            return;
                        }
                        Object a2 = !this.f11993f ? null : q3Var.a(o3Var, this.f11992e, e2);
                        if (a2 != null) {
                            q3Var.a(z5Var, a2, o3Var, q3Var.b(t), obj, r6Var);
                            throw null;
                        }
                        r6Var.a(z5Var);
                        if (obj == null) {
                            obj = r6Var.e(t);
                        }
                        if (!r6Var.a((r6) obj, z5Var)) {
                            for (int i3 = this.f11998k; i3 < this.f11999l; i3++) {
                                a((Object) t, this.f11997j[i3], (int) obj, (r6<UT, int>) r6Var);
                            }
                            if (obj != null) {
                                r6Var.b((Object) t, (T) obj);
                                return;
                            }
                            return;
                        }
                    } else {
                        int d2 = d(g2);
                        switch ((267386880 & d2) >>> 20) {
                            case 0:
                                x6.a(t, d2 & 1048575, z5Var.readDouble());
                                b((n5<T>) t, g2);
                                break;
                            case 1:
                                x6.a((Object) t, d2 & 1048575, z5Var.readFloat());
                                b((n5<T>) t, g2);
                                break;
                            case 2:
                                x6.a((Object) t, d2 & 1048575, z5Var.a());
                                b((n5<T>) t, g2);
                                break;
                            case 3:
                                x6.a((Object) t, d2 & 1048575, z5Var.f());
                                b((n5<T>) t, g2);
                                break;
                            case 4:
                                x6.a((Object) t, d2 & 1048575, z5Var.j());
                                b((n5<T>) t, g2);
                                break;
                            case 5:
                                x6.a((Object) t, d2 & 1048575, z5Var.zzsk());
                                b((n5<T>) t, g2);
                                break;
                            case 6:
                                x6.a((Object) t, d2 & 1048575, z5Var.zzsl());
                                b((n5<T>) t, g2);
                                break;
                            case 7:
                                x6.a(t, d2 & 1048575, z5Var.b());
                                b((n5<T>) t, g2);
                                break;
                            case 8:
                                a(t, d2, z5Var);
                                b((n5<T>) t, g2);
                                break;
                            case 9:
                                if (a((n5<T>) t, g2)) {
                                    long j2 = d2 & 1048575;
                                    x6.a(t, j2, c4.a(x6.f(t, j2), z5Var.b(a(g2), o3Var)));
                                    break;
                                } else {
                                    x6.a(t, d2 & 1048575, z5Var.b(a(g2), o3Var));
                                    b((n5<T>) t, g2);
                                    break;
                                }
                            case 10:
                                x6.a(t, d2 & 1048575, z5Var.l());
                                b((n5<T>) t, g2);
                                break;
                            case 11:
                                x6.a((Object) t, d2 & 1048575, z5Var.c());
                                b((n5<T>) t, g2);
                                break;
                            case 12:
                                int zzsq = z5Var.zzsq();
                                h4 c2 = c(g2);
                                if (c2 != null && !c2.a(zzsq)) {
                                    obj = a6.a(e2, zzsq, obj, (r6<UT, Object>) r6Var);
                                    break;
                                }
                                x6.a((Object) t, d2 & 1048575, zzsq);
                                b((n5<T>) t, g2);
                                break;
                            case 13:
                                x6.a((Object) t, d2 & 1048575, z5Var.zzsr());
                                b((n5<T>) t, g2);
                                break;
                            case 14:
                                x6.a((Object) t, d2 & 1048575, z5Var.i());
                                b((n5<T>) t, g2);
                                break;
                            case 15:
                                x6.a((Object) t, d2 & 1048575, z5Var.g());
                                b((n5<T>) t, g2);
                                break;
                            case 16:
                                x6.a((Object) t, d2 & 1048575, z5Var.h());
                                b((n5<T>) t, g2);
                                break;
                            case 17:
                                if (a((n5<T>) t, g2)) {
                                    long j3 = d2 & 1048575;
                                    x6.a(t, j3, c4.a(x6.f(t, j3), z5Var.a(a(g2), o3Var)));
                                    break;
                                } else {
                                    x6.a(t, d2 & 1048575, z5Var.a(a(g2), o3Var));
                                    b((n5<T>) t, g2);
                                    break;
                                }
                            case 18:
                                z5Var.q(this.n.a(t, d2 & 1048575));
                                break;
                            case 19:
                                z5Var.n(this.n.a(t, d2 & 1048575));
                                break;
                            case 20:
                                z5Var.l(this.n.a(t, d2 & 1048575));
                                break;
                            case 21:
                                z5Var.m(this.n.a(t, d2 & 1048575));
                                break;
                            case 22:
                                z5Var.p(this.n.a(t, d2 & 1048575));
                                break;
                            case 23:
                                z5Var.o(this.n.a(t, d2 & 1048575));
                                break;
                            case 24:
                                z5Var.g(this.n.a(t, d2 & 1048575));
                                break;
                            case 25:
                                z5Var.e(this.n.a(t, d2 & 1048575));
                                break;
                            case 26:
                                if (f(d2)) {
                                    z5Var.k(this.n.a(t, d2 & 1048575));
                                    break;
                                } else {
                                    z5Var.i(this.n.a(t, d2 & 1048575));
                                    break;
                                }
                            case 27:
                                z5Var.a(this.n.a(t, d2 & 1048575), a(g2), o3Var);
                                break;
                            case 28:
                                z5Var.j(this.n.a(t, d2 & 1048575));
                                break;
                            case 29:
                                z5Var.b(this.n.a(t, d2 & 1048575));
                                break;
                            case 30:
                                List<Integer> a3 = this.n.a(t, d2 & 1048575);
                                z5Var.a(a3);
                                obj = a6.a(e2, a3, c(g2), obj, r6Var);
                                break;
                            case 31:
                                z5Var.d(this.n.a(t, d2 & 1048575));
                                break;
                            case 32:
                                z5Var.c(this.n.a(t, d2 & 1048575));
                                break;
                            case 33:
                                z5Var.h(this.n.a(t, d2 & 1048575));
                                break;
                            case 34:
                                z5Var.f(this.n.a(t, d2 & 1048575));
                                break;
                            case 35:
                                z5Var.q(this.n.a(t, d2 & 1048575));
                                break;
                            case 36:
                                z5Var.n(this.n.a(t, d2 & 1048575));
                                break;
                            case 37:
                                z5Var.l(this.n.a(t, d2 & 1048575));
                                break;
                            case 38:
                                z5Var.m(this.n.a(t, d2 & 1048575));
                                break;
                            case 39:
                                z5Var.p(this.n.a(t, d2 & 1048575));
                                break;
                            case 40:
                                z5Var.o(this.n.a(t, d2 & 1048575));
                                break;
                            case 41:
                                z5Var.g(this.n.a(t, d2 & 1048575));
                                break;
                            case 42:
                                z5Var.e(this.n.a(t, d2 & 1048575));
                                break;
                            case 43:
                                z5Var.b(this.n.a(t, d2 & 1048575));
                                break;
                            case 44:
                                List<Integer> a4 = this.n.a(t, d2 & 1048575);
                                z5Var.a(a4);
                                obj = a6.a(e2, a4, c(g2), obj, r6Var);
                                break;
                            case 45:
                                z5Var.d(this.n.a(t, d2 & 1048575));
                                break;
                            case 46:
                                z5Var.c(this.n.a(t, d2 & 1048575));
                                break;
                            case 47:
                                z5Var.h(this.n.a(t, d2 & 1048575));
                                break;
                            case 48:
                                z5Var.f(this.n.a(t, d2 & 1048575));
                                break;
                            case 49:
                                z5Var.b(this.n.a(t, d2 & 1048575), a(g2), o3Var);
                                break;
                            case 50:
                                Object b2 = b(g2);
                                long d3 = d(g2) & 1048575;
                                Object f2 = x6.f(t, d3);
                                if (f2 != null) {
                                    if (this.q.e(f2)) {
                                        Object f3 = this.q.f(b2);
                                        this.q.a(f3, f2);
                                        x6.a(t, d3, f3);
                                        f2 = f3;
                                    }
                                } else {
                                    f2 = this.q.f(b2);
                                    x6.a(t, d3, f2);
                                }
                                this.q.d(f2);
                                this.q.a(b2);
                                throw null;
                            case 51:
                                x6.a(t, d2 & 1048575, Double.valueOf(z5Var.readDouble()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 52:
                                x6.a(t, d2 & 1048575, Float.valueOf(z5Var.readFloat()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 53:
                                x6.a(t, d2 & 1048575, Long.valueOf(z5Var.a()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 54:
                                x6.a(t, d2 & 1048575, Long.valueOf(z5Var.f()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 55:
                                x6.a(t, d2 & 1048575, Integer.valueOf(z5Var.j()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 56:
                                x6.a(t, d2 & 1048575, Long.valueOf(z5Var.zzsk()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 57:
                                x6.a(t, d2 & 1048575, Integer.valueOf(z5Var.zzsl()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 58:
                                x6.a(t, d2 & 1048575, Boolean.valueOf(z5Var.b()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 59:
                                a(t, d2, z5Var);
                                b((n5<T>) t, e2, g2);
                                break;
                            case 60:
                                if (a((n5<T>) t, e2, g2)) {
                                    long j4 = d2 & 1048575;
                                    x6.a(t, j4, c4.a(x6.f(t, j4), z5Var.b(a(g2), o3Var)));
                                } else {
                                    x6.a(t, d2 & 1048575, z5Var.b(a(g2), o3Var));
                                    b((n5<T>) t, g2);
                                }
                                b((n5<T>) t, e2, g2);
                                break;
                            case 61:
                                x6.a(t, d2 & 1048575, z5Var.l());
                                b((n5<T>) t, e2, g2);
                                break;
                            case 62:
                                x6.a(t, d2 & 1048575, Integer.valueOf(z5Var.c()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 63:
                                int zzsq2 = z5Var.zzsq();
                                h4 c3 = c(g2);
                                if (c3 != null && !c3.a(zzsq2)) {
                                    obj = a6.a(e2, zzsq2, obj, (r6<UT, Object>) r6Var);
                                    break;
                                }
                                x6.a(t, d2 & 1048575, Integer.valueOf(zzsq2));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 64:
                                x6.a(t, d2 & 1048575, Integer.valueOf(z5Var.zzsr()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 65:
                                x6.a(t, d2 & 1048575, Long.valueOf(z5Var.i()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 66:
                                x6.a(t, d2 & 1048575, Integer.valueOf(z5Var.g()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 67:
                                x6.a(t, d2 & 1048575, Long.valueOf(z5Var.h()));
                                b((n5<T>) t, e2, g2);
                                break;
                            case 68:
                                x6.a(t, d2 & 1048575, z5Var.a(a(g2), o3Var));
                                b((n5<T>) t, e2, g2);
                                break;
                            default:
                                if (obj == null) {
                                    try {
                                        obj = r6Var.a();
                                    } catch (k4 unused) {
                                        r6Var.a(z5Var);
                                        if (obj == null) {
                                            obj = r6Var.e(t);
                                        }
                                        if (!r6Var.a((r6) obj, z5Var)) {
                                            for (int i4 = this.f11998k; i4 < this.f11999l; i4++) {
                                                a((Object) t, this.f11997j[i4], (int) obj, (r6<UT, int>) r6Var);
                                            }
                                            if (obj != null) {
                                                r6Var.b((Object) t, (T) obj);
                                                return;
                                            }
                                            return;
                                        }
                                        break;
                                    }
                                }
                                if (!r6Var.a((r6) obj, z5Var)) {
                                    for (int i5 = this.f11998k; i5 < this.f11999l; i5++) {
                                        a((Object) t, this.f11997j[i5], (int) obj, (r6<UT, int>) r6Var);
                                    }
                                    if (obj != null) {
                                        r6Var.b((Object) t, (T) obj);
                                        return;
                                    }
                                    return;
                                }
                                break;
                        }
                    }
                } catch (Throwable th) {
                    for (int i6 = this.f11998k; i6 < this.f11999l; i6++) {
                        a((Object) t, this.f11997j[i6], (int) obj, (r6<UT, int>) r6Var);
                    }
                    if (obj != null) {
                        r6Var.b((Object) t, (T) obj);
                    }
                    throw th;
                }
            }
        } else {
            throw new NullPointerException();
        }
    }

    private final Object b(int i2) {
        return this.f11989b[(i2 / 3) << 1];
    }

    private static <T> double b(T t, long j2) {
        return ((Double) x6.f(t, j2)).doubleValue();
    }

    private final void b(T t, int i2) {
        if (this.f11995h) {
            return;
        }
        int e2 = e(i2);
        long j2 = e2 & 1048575;
        x6.a((Object) t, j2, x6.a(t, j2) | (1 << (e2 >>> 20)));
    }

    private final void b(T t, int i2, int i3) {
        x6.a((Object) t, e(i3) & 1048575, i2);
    }

    private final int b(int i2, int i3) {
        int length = (this.f11988a.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f11988a[i5];
            if (i2 == i6) {
                return i5;
            }
            if (i2 < i6) {
                length = i4 - 1;
            } else {
                i3 = i4 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, o2 o2Var) {
        int a2;
        int i9 = i2;
        i4 i4Var = (i4) s.getObject(t, j3);
        if (!i4Var.Q()) {
            int size = i4Var.size();
            i4Var = i4Var.zzap(size == 0 ? 10 : size << 1);
            s.putObject(t, j3, i4Var);
        }
        switch (i8) {
            case 18:
            case 35:
                if (i6 == 2) {
                    k3 k3Var = (k3) i4Var;
                    int a3 = p2.a(bArr, i9, o2Var);
                    int i10 = o2Var.f12007a + a3;
                    while (a3 < i10) {
                        k3Var.a(p2.c(bArr, a3));
                        a3 += 8;
                    }
                    if (a3 == i10) {
                        return a3;
                    }
                    throw l4.zzut();
                }
                if (i6 == 1) {
                    k3 k3Var2 = (k3) i4Var;
                    k3Var2.a(p2.c(bArr, i2));
                    while (true) {
                        int i11 = i9 + 8;
                        if (i11 >= i3) {
                            return i11;
                        }
                        i9 = p2.a(bArr, i11, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return i11;
                        }
                        k3Var2.a(p2.c(bArr, i9));
                    }
                }
                return i9;
            case 19:
            case 36:
                if (i6 == 2) {
                    x3 x3Var = (x3) i4Var;
                    int a4 = p2.a(bArr, i9, o2Var);
                    int i12 = o2Var.f12007a + a4;
                    while (a4 < i12) {
                        x3Var.a(p2.d(bArr, a4));
                        a4 += 4;
                    }
                    if (a4 == i12) {
                        return a4;
                    }
                    throw l4.zzut();
                }
                if (i6 == 5) {
                    x3 x3Var2 = (x3) i4Var;
                    x3Var2.a(p2.d(bArr, i2));
                    while (true) {
                        int i13 = i9 + 4;
                        if (i13 >= i3) {
                            return i13;
                        }
                        i9 = p2.a(bArr, i13, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return i13;
                        }
                        x3Var2.a(p2.d(bArr, i9));
                    }
                }
                return i9;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 == 2) {
                    z4 z4Var = (z4) i4Var;
                    int a5 = p2.a(bArr, i9, o2Var);
                    int i14 = o2Var.f12007a + a5;
                    while (a5 < i14) {
                        a5 = p2.b(bArr, a5, o2Var);
                        z4Var.h(o2Var.f12008b);
                    }
                    if (a5 == i14) {
                        return a5;
                    }
                    throw l4.zzut();
                }
                if (i6 == 0) {
                    z4 z4Var2 = (z4) i4Var;
                    int b2 = p2.b(bArr, i9, o2Var);
                    z4Var2.h(o2Var.f12008b);
                    while (b2 < i3) {
                        int a6 = p2.a(bArr, b2, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return b2;
                        }
                        b2 = p2.b(bArr, a6, o2Var);
                        z4Var2.h(o2Var.f12008b);
                    }
                    return b2;
                }
                return i9;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i6 == 2) {
                    return p2.a(bArr, i9, (i4<?>) i4Var, o2Var);
                }
                if (i6 == 0) {
                    return p2.a(i4, bArr, i2, i3, (i4<?>) i4Var, o2Var);
                }
                return i9;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 == 2) {
                    z4 z4Var3 = (z4) i4Var;
                    int a7 = p2.a(bArr, i9, o2Var);
                    int i15 = o2Var.f12007a + a7;
                    while (a7 < i15) {
                        z4Var3.h(p2.b(bArr, a7));
                        a7 += 8;
                    }
                    if (a7 == i15) {
                        return a7;
                    }
                    throw l4.zzut();
                }
                if (i6 == 1) {
                    z4 z4Var4 = (z4) i4Var;
                    z4Var4.h(p2.b(bArr, i2));
                    while (true) {
                        int i16 = i9 + 8;
                        if (i16 >= i3) {
                            return i16;
                        }
                        i9 = p2.a(bArr, i16, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return i16;
                        }
                        z4Var4.h(p2.b(bArr, i9));
                    }
                }
                return i9;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i6 == 2) {
                    d4 d4Var = (d4) i4Var;
                    int a8 = p2.a(bArr, i9, o2Var);
                    int i17 = o2Var.f12007a + a8;
                    while (a8 < i17) {
                        d4Var.b(p2.a(bArr, a8));
                        a8 += 4;
                    }
                    if (a8 == i17) {
                        return a8;
                    }
                    throw l4.zzut();
                }
                if (i6 == 5) {
                    d4 d4Var2 = (d4) i4Var;
                    d4Var2.b(p2.a(bArr, i2));
                    while (true) {
                        int i18 = i9 + 4;
                        if (i18 >= i3) {
                            return i18;
                        }
                        i9 = p2.a(bArr, i18, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return i18;
                        }
                        d4Var2.b(p2.a(bArr, i9));
                    }
                }
                return i9;
            case 25:
            case 42:
                if (i6 == 2) {
                    r2 r2Var = (r2) i4Var;
                    a2 = p2.a(bArr, i9, o2Var);
                    int i19 = o2Var.f12007a + a2;
                    while (a2 < i19) {
                        a2 = p2.b(bArr, a2, o2Var);
                        r2Var.a(o2Var.f12008b != 0);
                    }
                    if (a2 != i19) {
                        throw l4.zzut();
                    }
                    return a2;
                }
                if (i6 == 0) {
                    r2 r2Var2 = (r2) i4Var;
                    i9 = p2.b(bArr, i9, o2Var);
                    r2Var2.a(o2Var.f12008b != 0);
                    while (i9 < i3) {
                        int a9 = p2.a(bArr, i9, o2Var);
                        if (i4 == o2Var.f12007a) {
                            i9 = p2.b(bArr, a9, o2Var);
                            r2Var2.a(o2Var.f12008b != 0);
                        }
                    }
                }
                return i9;
            case 26:
                if (i6 == 2) {
                    if ((j2 & 536870912) == 0) {
                        i9 = p2.a(bArr, i9, o2Var);
                        int i20 = o2Var.f12007a;
                        if (i20 < 0) {
                            throw l4.zzuu();
                        }
                        if (i20 == 0) {
                            i4Var.add("");
                        } else {
                            i4Var.add(new String(bArr, i9, i20, c4.f11799a));
                            i9 += i20;
                        }
                        while (i9 < i3) {
                            int a10 = p2.a(bArr, i9, o2Var);
                            if (i4 == o2Var.f12007a) {
                                i9 = p2.a(bArr, a10, o2Var);
                                int i21 = o2Var.f12007a;
                                if (i21 < 0) {
                                    throw l4.zzuu();
                                }
                                if (i21 == 0) {
                                    i4Var.add("");
                                } else {
                                    i4Var.add(new String(bArr, i9, i21, c4.f11799a));
                                    i9 += i21;
                                }
                            }
                        }
                    } else {
                        i9 = p2.a(bArr, i9, o2Var);
                        int i22 = o2Var.f12007a;
                        if (i22 < 0) {
                            throw l4.zzuu();
                        }
                        if (i22 == 0) {
                            i4Var.add("");
                        } else {
                            int i23 = i9 + i22;
                            if (a7.a(bArr, i9, i23)) {
                                i4Var.add(new String(bArr, i9, i22, c4.f11799a));
                                i9 = i23;
                            } else {
                                throw l4.zzvb();
                            }
                        }
                        while (i9 < i3) {
                            int a11 = p2.a(bArr, i9, o2Var);
                            if (i4 == o2Var.f12007a) {
                                i9 = p2.a(bArr, a11, o2Var);
                                int i24 = o2Var.f12007a;
                                if (i24 < 0) {
                                    throw l4.zzuu();
                                }
                                if (i24 == 0) {
                                    i4Var.add("");
                                } else {
                                    int i25 = i9 + i24;
                                    if (a7.a(bArr, i9, i25)) {
                                        i4Var.add(new String(bArr, i9, i24, c4.f11799a));
                                        i9 = i25;
                                    } else {
                                        throw l4.zzvb();
                                    }
                                }
                            }
                        }
                    }
                }
                return i9;
            case 27:
                if (i6 == 2) {
                    return p2.a(a(i7), i4, bArr, i2, i3, i4Var, o2Var);
                }
                return i9;
            case 28:
                if (i6 == 2) {
                    int a12 = p2.a(bArr, i9, o2Var);
                    int i26 = o2Var.f12007a;
                    if (i26 >= 0) {
                        if (i26 > bArr.length - a12) {
                            throw l4.zzut();
                        }
                        if (i26 == 0) {
                            i4Var.add(t2.zzadh);
                        } else {
                            i4Var.add(t2.zzb(bArr, a12, i26));
                            a12 += i26;
                        }
                        while (a12 < i3) {
                            int a13 = p2.a(bArr, a12, o2Var);
                            if (i4 != o2Var.f12007a) {
                                return a12;
                            }
                            a12 = p2.a(bArr, a13, o2Var);
                            int i27 = o2Var.f12007a;
                            if (i27 >= 0) {
                                if (i27 > bArr.length - a12) {
                                    throw l4.zzut();
                                }
                                if (i27 == 0) {
                                    i4Var.add(t2.zzadh);
                                } else {
                                    i4Var.add(t2.zzb(bArr, a12, i27));
                                    a12 += i27;
                                }
                            } else {
                                throw l4.zzuu();
                            }
                        }
                        return a12;
                    }
                    throw l4.zzuu();
                }
                return i9;
            case 30:
            case 44:
                if (i6 != 2) {
                    if (i6 == 0) {
                        a2 = p2.a(i4, bArr, i2, i3, (i4<?>) i4Var, o2Var);
                    }
                    return i9;
                }
                a2 = p2.a(bArr, i9, (i4<?>) i4Var, o2Var);
                b4 b4Var = (b4) t;
                u6 u6Var = b4Var.zzahz;
                if (u6Var == u6.d()) {
                    u6Var = null;
                }
                u6 u6Var2 = (u6) a6.a(i5, i4Var, c(i7), u6Var, this.o);
                if (u6Var2 != null) {
                    b4Var.zzahz = u6Var2;
                }
                return a2;
            case 33:
            case 47:
                if (i6 == 2) {
                    d4 d4Var3 = (d4) i4Var;
                    int a14 = p2.a(bArr, i9, o2Var);
                    int i28 = o2Var.f12007a + a14;
                    while (a14 < i28) {
                        a14 = p2.a(bArr, a14, o2Var);
                        d4Var3.b(f3.g(o2Var.f12007a));
                    }
                    if (a14 == i28) {
                        return a14;
                    }
                    throw l4.zzut();
                }
                if (i6 == 0) {
                    d4 d4Var4 = (d4) i4Var;
                    int a15 = p2.a(bArr, i9, o2Var);
                    d4Var4.b(f3.g(o2Var.f12007a));
                    while (a15 < i3) {
                        int a16 = p2.a(bArr, a15, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return a15;
                        }
                        a15 = p2.a(bArr, a16, o2Var);
                        d4Var4.b(f3.g(o2Var.f12007a));
                    }
                    return a15;
                }
                return i9;
            case 34:
            case 48:
                if (i6 == 2) {
                    z4 z4Var5 = (z4) i4Var;
                    int a17 = p2.a(bArr, i9, o2Var);
                    int i29 = o2Var.f12007a + a17;
                    while (a17 < i29) {
                        a17 = p2.b(bArr, a17, o2Var);
                        z4Var5.h(f3.a(o2Var.f12008b));
                    }
                    if (a17 == i29) {
                        return a17;
                    }
                    throw l4.zzut();
                }
                if (i6 == 0) {
                    z4 z4Var6 = (z4) i4Var;
                    int b3 = p2.b(bArr, i9, o2Var);
                    z4Var6.h(f3.a(o2Var.f12008b));
                    while (b3 < i3) {
                        int a18 = p2.a(bArr, b3, o2Var);
                        if (i4 != o2Var.f12007a) {
                            return b3;
                        }
                        b3 = p2.b(bArr, a18, o2Var);
                        z4Var6.h(f3.a(o2Var.f12008b));
                    }
                    return b3;
                }
                return i9;
            case 49:
                if (i6 == 3) {
                    y5 a19 = a(i7);
                    int i30 = (i4 & (-8)) | 4;
                    i9 = p2.a(a19, bArr, i2, i3, i30, o2Var);
                    i4Var.add(o2Var.f12009c);
                    while (i9 < i3) {
                        int a20 = p2.a(bArr, i9, o2Var);
                        if (i4 == o2Var.f12007a) {
                            i9 = p2.a(a19, bArr, a20, i3, i30, o2Var);
                            i4Var.add(o2Var.f12009c);
                        }
                    }
                }
                return i9;
            default:
                return i9;
        }
    }

    private final <K, V> int a(T t, byte[] bArr, int i2, int i3, int i4, long j2, o2 o2Var) {
        Unsafe unsafe = s;
        Object b2 = b(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.q.e(object)) {
            Object f2 = this.q.f(b2);
            this.q.a(f2, object);
            unsafe.putObject(t, j2, f2);
        }
        this.q.a(b2);
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, o2 o2Var) {
        int b2;
        Unsafe unsafe = s;
        long j3 = this.f11988a[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Double.valueOf(p2.c(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 52:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Float.valueOf(p2.d(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 53:
            case 54:
                if (i6 == 0) {
                    b2 = p2.b(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, Long.valueOf(o2Var.f12008b));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 55:
            case 62:
                if (i6 == 0) {
                    b2 = p2.a(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, Integer.valueOf(o2Var.f12007a));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 56:
            case 65:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Long.valueOf(p2.b(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 57:
            case 64:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Integer.valueOf(p2.a(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 58:
                if (i6 == 0) {
                    b2 = p2.b(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, Boolean.valueOf(o2Var.f12008b != 0));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 59:
                if (i6 == 2) {
                    int a2 = p2.a(bArr, i2, o2Var);
                    int i10 = o2Var.f12007a;
                    if (i10 == 0) {
                        unsafe.putObject(t, j2, "");
                    } else {
                        if ((i7 & 536870912) != 0 && !a7.a(bArr, a2, a2 + i10)) {
                            throw l4.zzvb();
                        }
                        unsafe.putObject(t, j2, new String(bArr, a2, i10, c4.f11799a));
                        a2 += i10;
                    }
                    unsafe.putInt(t, j3, i5);
                    return a2;
                }
                return i2;
            case 60:
                if (i6 == 2) {
                    int a3 = p2.a(a(i9), bArr, i2, i3, o2Var);
                    Object object = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object == null) {
                        unsafe.putObject(t, j2, o2Var.f12009c);
                    } else {
                        unsafe.putObject(t, j2, c4.a(object, o2Var.f12009c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return a3;
                }
                return i2;
            case 61:
                if (i6 == 2) {
                    b2 = p2.e(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, o2Var.f12009c);
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 63:
                if (i6 == 0) {
                    int a4 = p2.a(bArr, i2, o2Var);
                    int i11 = o2Var.f12007a;
                    h4 c2 = c(i9);
                    if (c2 != null && !c2.a(i11)) {
                        e(t).a(i4, Long.valueOf(i11));
                        return a4;
                    }
                    unsafe.putObject(t, j2, Integer.valueOf(i11));
                    b2 = a4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 66:
                if (i6 == 0) {
                    b2 = p2.a(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, Integer.valueOf(f3.g(o2Var.f12007a)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 67:
                if (i6 == 0) {
                    b2 = p2.b(bArr, i2, o2Var);
                    unsafe.putObject(t, j2, Long.valueOf(f3.a(o2Var.f12008b)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 68:
                if (i6 == 3) {
                    b2 = p2.a(a(i9), bArr, i2, i3, (i4 & (-8)) | 4, o2Var);
                    Object object2 = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j2, o2Var.f12009c);
                    } else {
                        unsafe.putObject(t, j2, c4.a(object2, o2Var.f12009c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            default:
                return i2;
        }
    }

    private final y5 a(int i2) {
        int i3 = (i2 / 3) << 1;
        y5 y5Var = (y5) this.f11989b[i3];
        if (y5Var != null) {
            return y5Var;
        }
        y5<T> a2 = u5.a().a((Class) this.f11989b[i3 + 1]);
        this.f11989b[i3] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:105:0x0085. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public final int a(T t, byte[] bArr, int i2, int i3, int i4, o2 o2Var) {
        Unsafe unsafe;
        int i5;
        Object obj;
        n5<T> n5Var;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int g2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Object obj2;
        int i18;
        int i19;
        int i20;
        o2 o2Var2;
        int i21;
        o2 o2Var3;
        int i22;
        int i23;
        o2 o2Var4;
        int i24;
        int i25;
        n5<T> n5Var2 = this;
        Object obj3 = t;
        byte[] bArr2 = bArr;
        int i26 = i3;
        int i27 = i4;
        o2 o2Var5 = o2Var;
        Unsafe unsafe2 = s;
        int i28 = i2;
        int i29 = -1;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = -1;
        while (true) {
            if (i28 < i26) {
                int i34 = i28 + 1;
                byte b2 = bArr2[i28];
                if (b2 < 0) {
                    i11 = p2.a(b2, bArr2, i34, o2Var5);
                    i10 = o2Var5.f12007a;
                } else {
                    i10 = b2;
                    i11 = i34;
                }
                int i35 = i10 >>> 3;
                int i36 = i10 & 7;
                if (i35 > i29) {
                    g2 = n5Var2.a(i35, i30 / 3);
                } else {
                    g2 = n5Var2.g(i35);
                }
                int i37 = g2;
                if (i37 == -1) {
                    i12 = i35;
                    i6 = i11;
                    i13 = i32;
                    i14 = i33;
                    unsafe = unsafe2;
                    i5 = i27;
                    i15 = 0;
                    i16 = i10;
                } else {
                    int[] iArr = n5Var2.f11988a;
                    int i38 = iArr[i37 + 1];
                    int i39 = (i38 & 267386880) >>> 20;
                    int i40 = i10;
                    long j2 = i38 & 1048575;
                    if (i39 <= 17) {
                        int i41 = iArr[i37 + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i33) {
                            if (i33 != -1) {
                                unsafe2.putInt(obj3, i33, i32);
                            }
                            i32 = unsafe2.getInt(obj3, i43);
                            i33 = i43;
                        }
                        switch (i39) {
                            case 0:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                i22 = i11;
                                if (i36 != 1) {
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    x6.a(obj3, j2, p2.c(bArr2, i22));
                                    i28 = i22 + 8;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 1:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                i22 = i11;
                                if (i36 != 5) {
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    x6.a(obj3, j2, p2.d(bArr2, i22));
                                    i28 = i22 + 4;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 2:
                            case 3:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                bArr2 = bArr;
                                i22 = i11;
                                if (i36 != 0) {
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    int b3 = p2.b(bArr2, i22, o2Var);
                                    unsafe2.putLong(t, j2, o2Var.f12008b);
                                    i32 |= i42;
                                    i28 = b3;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var;
                                    i33 = i21;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 4:
                            case 11:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                i22 = i11;
                                if (i36 != 0) {
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i28 = p2.a(bArr2, i22, o2Var3);
                                    unsafe2.putInt(obj3, j2, o2Var3.f12007a);
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 5:
                            case 14:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                if (i36 != 1) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i21 = i33;
                                    i22 = i11;
                                    unsafe2.putLong(t, j2, p2.b(bArr2, i11));
                                    i28 = i22 + 8;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 6:
                            case 13:
                                i23 = i3;
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var4 = o2Var;
                                if (i36 != 5) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    unsafe2.putInt(obj3, j2, p2.a(bArr2, i11));
                                    i28 = i11 + 4;
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 7:
                                i23 = i3;
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var4 = o2Var;
                                if (i36 != 0) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    int b4 = p2.b(bArr2, i11, o2Var4);
                                    x6.a(obj3, j2, o2Var4.f12008b != 0);
                                    i32 |= i42;
                                    i28 = b4;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 8:
                                i23 = i3;
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var4 = o2Var;
                                if (i36 != 2) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    if ((i38 & 536870912) == 0) {
                                        i28 = p2.c(bArr2, i11, o2Var4);
                                    } else {
                                        i28 = p2.d(bArr2, i11, o2Var4);
                                    }
                                    unsafe2.putObject(obj3, j2, o2Var4.f12009c);
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 9:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var4 = o2Var;
                                if (i36 != 2) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i23 = i3;
                                    i28 = p2.a(n5Var2.a(i18), bArr2, i11, i23, o2Var4);
                                    if ((i32 & i42) == 0) {
                                        unsafe2.putObject(obj3, j2, o2Var4.f12009c);
                                    } else {
                                        unsafe2.putObject(obj3, j2, c4.a(unsafe2.getObject(obj3, j2), o2Var4.f12009c));
                                    }
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 10:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                if (i36 != 2) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i28 = p2.e(bArr2, i11, o2Var3);
                                    unsafe2.putObject(obj3, j2, o2Var3.f12009c);
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 12:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                if (i36 != 0) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i28 = p2.a(bArr2, i11, o2Var3);
                                    int i44 = o2Var3.f12007a;
                                    h4 c2 = n5Var2.c(i18);
                                    if (c2 != null && !c2.a(i44)) {
                                        e(t).a(i20, Long.valueOf(i44));
                                        i31 = i20;
                                        i30 = i18;
                                        i29 = i19;
                                        o2Var5 = o2Var3;
                                        i26 = i3;
                                        i27 = i4;
                                    } else {
                                        unsafe2.putInt(obj3, j2, i44);
                                        i32 |= i42;
                                        i31 = i20;
                                        i30 = i18;
                                        i29 = i19;
                                        o2Var5 = o2Var3;
                                        i26 = i3;
                                        i27 = i4;
                                    }
                                }
                                break;
                            case 15:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                o2Var3 = o2Var;
                                if (i36 != 0) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i28 = p2.a(bArr2, i11, o2Var3);
                                    unsafe2.putInt(obj3, j2, f3.g(o2Var3.f12007a));
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 16:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                if (i36 != 0) {
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    int b5 = p2.b(bArr2, i11, o2Var);
                                    o2Var3 = o2Var;
                                    unsafe2.putLong(t, j2, f3.a(o2Var.f12008b));
                                    i32 |= i42;
                                    i28 = b5;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    o2Var5 = o2Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 17:
                                if (i36 != 3) {
                                    i18 = i37;
                                    i19 = i35;
                                    i20 = i40;
                                    i21 = i33;
                                    i22 = i11;
                                    i14 = i21;
                                    i13 = i32;
                                    i6 = i22;
                                    i16 = i20;
                                    i15 = i18;
                                    unsafe = unsafe2;
                                    i12 = i19;
                                    i5 = i4;
                                    break;
                                } else {
                                    i28 = p2.a(n5Var2.a(i37), bArr, i11, i3, (i35 << 3) | 4, o2Var);
                                    if ((i32 & i42) == 0) {
                                        o2Var2 = o2Var;
                                        unsafe2.putObject(obj3, j2, o2Var2.f12009c);
                                    } else {
                                        o2Var2 = o2Var;
                                        unsafe2.putObject(obj3, j2, c4.a(unsafe2.getObject(obj3, j2), o2Var2.f12009c));
                                    }
                                    i32 |= i42;
                                    bArr2 = bArr;
                                    i26 = i3;
                                    i31 = i40;
                                    i30 = i37;
                                    i29 = i35;
                                    i27 = i4;
                                    o2Var5 = o2Var2;
                                }
                            default:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                i22 = i11;
                                i14 = i21;
                                i13 = i32;
                                i6 = i22;
                                i16 = i20;
                                i15 = i18;
                                unsafe = unsafe2;
                                i12 = i19;
                                i5 = i4;
                                break;
                        }
                    } else {
                        i14 = i33;
                        int i45 = i11;
                        bArr2 = bArr;
                        o2 o2Var6 = o2Var5;
                        if (i39 != 27) {
                            i13 = i32;
                            if (i39 <= 49) {
                                i12 = i35;
                                i25 = i40;
                                i15 = i37;
                                unsafe = unsafe2;
                                i28 = a((n5<T>) t, bArr, i45, i3, i40, i35, i36, i37, i38, i39, j2, o2Var);
                                if (i28 != i45) {
                                    n5Var2 = this;
                                    obj3 = t;
                                    bArr2 = bArr;
                                    i26 = i3;
                                    i27 = i4;
                                    o2Var5 = o2Var;
                                    i33 = i14;
                                    i30 = i15;
                                    i32 = i13;
                                    i29 = i12;
                                    i31 = i25;
                                }
                            } else {
                                i12 = i35;
                                i24 = i45;
                                i25 = i40;
                                i15 = i37;
                                unsafe = unsafe2;
                                if (i39 != 50) {
                                    i28 = a((n5<T>) t, bArr, i24, i3, i25, i12, i36, i38, i39, j2, i15, o2Var);
                                    if (i28 != i24) {
                                        i17 = i12;
                                        n5Var2 = this;
                                        obj3 = t;
                                        bArr2 = bArr;
                                        i26 = i3;
                                        i27 = i4;
                                        o2Var5 = o2Var;
                                        i31 = i25;
                                        i29 = i17;
                                        i33 = i14;
                                        i30 = i15;
                                        i32 = i13;
                                    }
                                } else if (i36 == 2) {
                                    a((n5<T>) t, bArr, i24, i3, i15, j2, o2Var);
                                    throw null;
                                }
                            }
                            i5 = i4;
                            i6 = i28;
                            i16 = i25;
                        } else if (i36 == 2) {
                            i4 i4Var = (i4) unsafe2.getObject(obj3, j2);
                            if (!i4Var.Q()) {
                                int size = i4Var.size();
                                i4Var = i4Var.zzap(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(obj3, j2, i4Var);
                            }
                            i28 = p2.a(n5Var2.a(i37), i40, bArr, i45, i3, i4Var, o2Var);
                            i27 = i4;
                            i29 = i35;
                            i31 = i40;
                            i30 = i37;
                            o2Var5 = o2Var6;
                            i33 = i14;
                            i32 = i32;
                            i26 = i3;
                        } else {
                            i13 = i32;
                            i12 = i35;
                            i24 = i45;
                            i25 = i40;
                            i15 = i37;
                            unsafe = unsafe2;
                        }
                        i5 = i4;
                        i6 = i24;
                        i16 = i25;
                    }
                    unsafe2 = unsafe;
                }
                if (i16 != i5 || i5 == 0) {
                    if (this.f11993f) {
                        o2Var5 = o2Var;
                        if (o2Var5.f12010d != o3.c()) {
                            i17 = i12;
                            if (o2Var5.f12010d.a(this.f11992e, i17) == null) {
                                i28 = p2.a(i16, bArr, i6, i3, e(t), o2Var);
                                obj3 = t;
                                bArr2 = bArr;
                                i26 = i3;
                                i27 = i5;
                                i31 = i16;
                                n5Var2 = this;
                                i29 = i17;
                                i33 = i14;
                                i30 = i15;
                                i32 = i13;
                                unsafe2 = unsafe;
                            } else {
                                b4.b bVar = (b4.b) t;
                                bVar.n();
                                r3<Object> r3Var = bVar.zzaic;
                                throw new NoSuchMethodError();
                            }
                        } else {
                            obj2 = t;
                        }
                    } else {
                        obj2 = t;
                        o2Var5 = o2Var;
                    }
                    i28 = p2.a(i16, bArr, i6, i3, e(t), o2Var);
                    bArr2 = bArr;
                    i26 = i3;
                    i31 = i16;
                    n5Var2 = this;
                    i29 = i12;
                    obj3 = obj2;
                    i33 = i14;
                    i30 = i15;
                    unsafe2 = unsafe;
                    i27 = i5;
                    i32 = i13;
                } else {
                    i9 = -1;
                    n5Var = this;
                    obj = t;
                    i31 = i16;
                    i7 = i14;
                    i8 = i13;
                }
            } else {
                int i46 = i32;
                unsafe = unsafe2;
                i5 = i27;
                obj = obj3;
                n5Var = n5Var2;
                i6 = i28;
                i7 = i33;
                i8 = i46;
                i9 = -1;
            }
        }
        if (i7 != i9) {
            unsafe.putInt(obj, i7, i8);
        }
        u6 u6Var = null;
        for (int i47 = n5Var.f11998k; i47 < n5Var.f11999l; i47++) {
            n5Var.a(obj, n5Var.f11997j[i47], (int) u6Var, (r6<UT, int>) n5Var.o);
            u6Var = u6Var;
        }
        if (u6Var != null) {
            n5Var.o.b(obj, u6Var);
        }
        if (i5 == 0) {
            if (i6 != i3) {
                throw l4.zzva();
            }
        } else if (i6 > i3 || i31 != i5) {
            throw l4.zzva();
        }
        return i6;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x022b, code lost:
    
        if (r0 == r15) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e1, code lost:
    
        if (r0 == r15) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x022d, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0061. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [int] */
    @Override // com.google.android.gms.internal.measurement.y5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.measurement.o2 r32) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.n5.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.o2):void");
    }

    private final <UT, UB> UB a(Object obj, int i2, UB ub, r6<UT, UB> r6Var) {
        h4 c2;
        int i3 = this.f11988a[i2];
        Object f2 = x6.f(obj, d(i2) & 1048575);
        if (f2 == null || (c2 = c(i2)) == null) {
            return ub;
        }
        a(i2, i3, this.q.d(f2), c2, (h4) ub, (r6<UT, h4>) r6Var);
        throw null;
    }

    private final <K, V, UT, UB> UB a(int i2, int i3, Map<K, V> map, h4 h4Var, UB ub, r6<UT, UB> r6Var) {
        this.q.a(b(i2));
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.y5
    public final boolean a(T t) {
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.f11998k) {
                return !this.f11993f || this.p.a(t).c();
            }
            int i6 = this.f11997j[i3];
            int i7 = this.f11988a[i6];
            int d2 = d(i6);
            if (this.f11995h) {
                i2 = 0;
            } else {
                int i8 = this.f11988a[i6 + 2];
                int i9 = i8 & 1048575;
                i2 = 1 << (i8 >>> 20);
                if (i9 != i4) {
                    i5 = s.getInt(t, i9);
                    i4 = i9;
                }
            }
            if (((268435456 & d2) != 0) && !a((n5<T>) t, i6, i5, i2)) {
                return false;
            }
            int i10 = (267386880 & d2) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (a((n5<T>) t, i7, i6) && !a(t, d2, a(i6))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.q.c(x6.f(t, d2 & 1048575)).isEmpty()) {
                            this.q.a(b(i6));
                            throw null;
                        }
                    }
                }
                List list = (List) x6.f(t, d2 & 1048575);
                if (!list.isEmpty()) {
                    y5 a2 = a(i6);
                    int i11 = 0;
                    while (true) {
                        if (i11 >= list.size()) {
                            break;
                        }
                        if (!a2.a(list.get(i11))) {
                            z = false;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (a((n5<T>) t, i6, i5, i2) && !a(t, d2, a(i6))) {
                return false;
            }
            i3++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i2, y5 y5Var) {
        return y5Var.a(x6.f(obj, i2 & 1048575));
    }

    private static void a(int i2, Object obj, p7 p7Var) {
        if (obj instanceof String) {
            p7Var.a(i2, (String) obj);
        } else {
            p7Var.a(i2, (t2) obj);
        }
    }

    private final void a(Object obj, int i2, z5 z5Var) {
        if (f(i2)) {
            x6.a(obj, i2 & 1048575, z5Var.m());
        } else if (this.f11994g) {
            x6.a(obj, i2 & 1048575, z5Var.d());
        } else {
            x6.a(obj, i2 & 1048575, z5Var.l());
        }
    }

    private final boolean a(T t, int i2, int i3, int i4) {
        if (this.f11995h) {
            return a((n5<T>) t, i2);
        }
        return (i3 & i4) != 0;
    }

    private final boolean a(T t, int i2) {
        if (this.f11995h) {
            int d2 = d(i2);
            long j2 = d2 & 1048575;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    return x6.e(t, j2) != 0.0d;
                case 1:
                    return x6.d(t, j2) != 0.0f;
                case 2:
                    return x6.b(t, j2) != 0;
                case 3:
                    return x6.b(t, j2) != 0;
                case 4:
                    return x6.a(t, j2) != 0;
                case 5:
                    return x6.b(t, j2) != 0;
                case 6:
                    return x6.a(t, j2) != 0;
                case 7:
                    return x6.c(t, j2);
                case 8:
                    Object f2 = x6.f(t, j2);
                    if (f2 instanceof String) {
                        return !((String) f2).isEmpty();
                    }
                    if (f2 instanceof t2) {
                        return !t2.zzadh.equals(f2);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return x6.f(t, j2) != null;
                case 10:
                    return !t2.zzadh.equals(x6.f(t, j2));
                case 11:
                    return x6.a(t, j2) != 0;
                case 12:
                    return x6.a(t, j2) != 0;
                case 13:
                    return x6.a(t, j2) != 0;
                case 14:
                    return x6.b(t, j2) != 0;
                case 15:
                    return x6.a(t, j2) != 0;
                case 16:
                    return x6.b(t, j2) != 0;
                case 17:
                    return x6.f(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int e2 = e(i2);
        return (x6.a(t, (long) (e2 & 1048575)) & (1 << (e2 >>> 20))) != 0;
    }

    private final boolean a(T t, int i2, int i3) {
        return x6.a(t, (long) (e(i3) & 1048575)) == i2;
    }

    private final int a(int i2, int i3) {
        if (i2 < this.f11990c || i2 > this.f11991d) {
            return -1;
        }
        return b(i2, i3);
    }
}
