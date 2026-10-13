package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class g6<T> implements r6<T> {
    private static final int[] q = new int[0];
    private static final Unsafe r = o7.c();

    /* renamed from: a, reason: collision with root package name */
    private final int[] f12357a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f12358b;

    /* renamed from: c, reason: collision with root package name */
    private final int f12359c;

    /* renamed from: d, reason: collision with root package name */
    private final int f12360d;

    /* renamed from: e, reason: collision with root package name */
    private final d6 f12361e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f12362f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f12363g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f12364h;

    /* renamed from: i, reason: collision with root package name */
    private final int[] f12365i;

    /* renamed from: j, reason: collision with root package name */
    private final int f12366j;

    /* renamed from: k, reason: collision with root package name */
    private final int f12367k;

    /* renamed from: l, reason: collision with root package name */
    private final k6 f12368l;
    private final n5 m;
    private final i7<?, ?> n;
    private final f4<?> o;
    private final w5 p;

    private g6(int[] iArr, Object[] objArr, int i2, int i3, d6 d6Var, boolean z, boolean z2, int[] iArr2, int i4, int i5, k6 k6Var, n5 n5Var, i7<?, ?> i7Var, f4<?> f4Var, w5 w5Var) {
        this.f12357a = iArr;
        this.f12358b = objArr;
        this.f12359c = i2;
        this.f12360d = i3;
        boolean z3 = d6Var instanceof s4;
        this.f12363g = z;
        this.f12362f = f4Var != null && f4Var.a(d6Var);
        this.f12364h = false;
        this.f12365i = iArr2;
        this.f12366j = i4;
        this.f12367k = i5;
        this.f12368l = k6Var;
        this.m = n5Var;
        this.n = i7Var;
        this.o = f4Var;
        this.f12361e = d6Var;
        this.p = w5Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> g6<T> a(Class<T> cls, b6 b6Var, k6 k6Var, n5 n5Var, i7<?, ?> i7Var, f4<?> f4Var, w5 w5Var) {
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
        if (b6Var instanceof p6) {
            p6 p6Var = (p6) b6Var;
            int i27 = 0;
            boolean z = p6Var.b() == s4.e.f12520j;
            String d2 = p6Var.d();
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
                iArr = q;
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
            Unsafe unsafe = r;
            Object[] e2 = p6Var.e();
            Class<?> cls3 = p6Var.c().getClass();
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
            return new g6<>(iArr2, objArr, c3, charAt, p6Var.c(), z, false, iArr, i27, i62, k6Var, n5Var, i7Var, f4Var, w5Var);
        }
        ((f7) b6Var).b();
        throw null;
    }

    private static l7 d(Object obj) {
        s4 s4Var = (s4) obj;
        l7 l7Var = s4Var.zzwd;
        if (l7Var != l7.d()) {
            return l7Var;
        }
        l7 e2 = l7.e();
        s4Var.zzwd = e2;
        return e2;
    }

    private static <T> boolean f(T t, long j2) {
        return ((Boolean) o7.f(t, j2)).booleanValue();
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final void b(T t, T t2) {
        if (t2 != null) {
            for (int i2 = 0; i2 < this.f12357a.length; i2 += 3) {
                int d2 = d(i2);
                long j2 = 1048575 & d2;
                int i3 = this.f12357a[i2];
                switch ((d2 & 267386880) >>> 20) {
                    case 0:
                        if (a((g6<T>) t2, i2)) {
                            o7.a(t, j2, o7.e(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.d(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.b(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.b(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.b(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((g6<T>) t2, i2)) {
                            o7.a(t, j2, o7.c(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((g6<T>) t2, i2)) {
                            o7.a(t, j2, o7.f(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        a(t, t2, i2);
                        break;
                    case 10:
                        if (a((g6<T>) t2, i2)) {
                            o7.a(t, j2, o7.f(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.b(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.a(t2, j2));
                            b((g6<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((g6<T>) t2, i2)) {
                            o7.a((Object) t, j2, o7.b(t2, j2));
                            b((g6<T>) t, i2);
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
                        this.m.a(t, t2, j2);
                        break;
                    case 50:
                        s6.a(this.p, t, t2, j2);
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
                        if (a((g6<T>) t2, i3, i2)) {
                            o7.a(t, j2, o7.f(t2, j2));
                            b((g6<T>) t, i3, i2);
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
                        if (a((g6<T>) t2, i3, i2)) {
                            o7.a(t, j2, o7.f(t2, j2));
                            b((g6<T>) t, i3, i2);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        b(t, t2, i2);
                        break;
                }
            }
            if (this.f12363g) {
                return;
            }
            s6.a(this.n, t, t2);
            if (this.f12362f) {
                s6.a(this.o, t, t2);
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.vision.r6
    public final int c(T t) {
        int i2;
        int a2;
        int length = this.f12357a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d2 = d(i4);
            int i5 = this.f12357a[i4];
            long j2 = 1048575 & d2;
            int i6 = 37;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    i2 = i3 * 53;
                    a2 = t4.a(Double.doubleToLongBits(o7.e(t, j2)));
                    i3 = i2 + a2;
                    break;
                case 1:
                    i2 = i3 * 53;
                    a2 = Float.floatToIntBits(o7.d(t, j2));
                    i3 = i2 + a2;
                    break;
                case 2:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 3:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 4:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 5:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 6:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 7:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.c(t, j2));
                    i3 = i2 + a2;
                    break;
                case 8:
                    i2 = i3 * 53;
                    a2 = ((String) o7.f(t, j2)).hashCode();
                    i3 = i2 + a2;
                    break;
                case 9:
                    Object f2 = o7.f(t, j2);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i2 = i3 * 53;
                    a2 = o7.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 11:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 14:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 15:
                    i2 = i3 * 53;
                    a2 = o7.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 16:
                    i2 = i3 * 53;
                    a2 = t4.a(o7.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 17:
                    Object f3 = o7.f(t, j2);
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
                    a2 = o7.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 50:
                    i2 = i3 * 53;
                    a2 = o7.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 51:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(Double.doubleToLongBits(b(t, j2)));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = Float.floatToIntBits(c(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(f(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = ((String) o7.f(t, j2)).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = o7.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = o7.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = t4.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (a((g6<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = o7.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i3 * 53) + this.n.c(t).hashCode();
        return this.f12362f ? (hashCode * 53) + this.o.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final void e(T t) {
        int i2;
        int i3 = this.f12366j;
        while (true) {
            i2 = this.f12367k;
            if (i3 >= i2) {
                break;
            }
            long d2 = d(this.f12365i[i3]) & 1048575;
            Object f2 = o7.f(t, d2);
            if (f2 != null) {
                this.p.c(f2);
                o7.a(t, d2, f2);
            }
            i3++;
        }
        int length = this.f12365i.length;
        while (i2 < length) {
            this.m.a(t, this.f12365i[i2]);
            i2++;
        }
        this.n.a(t);
        if (this.f12362f) {
            this.o.c(t);
        }
    }

    private final int f(int i2) {
        if (i2 < this.f12359c || i2 > this.f12360d) {
            return -1;
        }
        return b(i2, 0);
    }

    private final int d(int i2) {
        return this.f12357a[i2 + 1];
    }

    private static <T> int d(T t, long j2) {
        return ((Integer) o7.f(t, j2)).intValue();
    }

    private final int e(int i2) {
        return this.f12357a[i2 + 2];
    }

    private static <T> long e(T t, long j2) {
        return ((Long) o7.f(t, j2)).longValue();
    }

    private final y4 c(int i2) {
        return (y4) this.f12358b[((i2 / 3) << 1) + 1];
    }

    private final void b(T t, T t2, int i2) {
        int d2 = d(i2);
        int i3 = this.f12357a[i2];
        long j2 = d2 & 1048575;
        if (a((g6<T>) t2, i3, i2)) {
            Object f2 = o7.f(t, j2);
            Object f3 = o7.f(t2, j2);
            if (f2 != null && f3 != null) {
                o7.a(t, j2, t4.a(f2, f3));
                b((g6<T>) t, i3, i2);
            } else if (f3 != null) {
                o7.a(t, j2, f3);
                b((g6<T>) t, i3, i2);
            }
        }
    }

    private static <T> float c(T t, long j2) {
        return ((Float) o7.f(t, j2)).floatValue();
    }

    private final boolean c(T t, T t2, int i2) {
        return a((g6<T>) t, i2) == a((g6<T>) t2, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:226:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(T r19, com.google.android.gms.internal.vision.e8 r20) {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g6.b(java.lang.Object, com.google.android.gms.internal.vision.e8):void");
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

    @Override // com.google.android.gms.internal.vision.r6
    public final T a() {
        return (T) this.f12368l.a(this.f12361e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
    
        if (com.google.android.gms.internal.vision.s6.a(com.google.android.gms.internal.vision.o7.f(r10, r6), com.google.android.gms.internal.vision.o7.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (com.google.android.gms.internal.vision.o7.b(r10, r6) == com.google.android.gms.internal.vision.o7.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        if (com.google.android.gms.internal.vision.o7.b(r10, r6) == com.google.android.gms.internal.vision.o7.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c8, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f0, code lost:
    
        if (com.google.android.gms.internal.vision.s6.a(com.google.android.gms.internal.vision.o7.f(r10, r6), com.google.android.gms.internal.vision.o7.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0106, code lost:
    
        if (com.google.android.gms.internal.vision.s6.a(com.google.android.gms.internal.vision.o7.f(r10, r6), com.google.android.gms.internal.vision.o7.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011c, code lost:
    
        if (com.google.android.gms.internal.vision.s6.a(com.google.android.gms.internal.vision.o7.f(r10, r6), com.google.android.gms.internal.vision.o7.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012e, code lost:
    
        if (com.google.android.gms.internal.vision.o7.c(r10, r6) == com.google.android.gms.internal.vision.o7.c(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
    
        if (com.google.android.gms.internal.vision.o7.b(r10, r6) == com.google.android.gms.internal.vision.o7.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0165, code lost:
    
        if (com.google.android.gms.internal.vision.o7.a(r10, r6) == com.google.android.gms.internal.vision.o7.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0178, code lost:
    
        if (com.google.android.gms.internal.vision.o7.b(r10, r6) == com.google.android.gms.internal.vision.o7.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018b, code lost:
    
        if (com.google.android.gms.internal.vision.o7.b(r10, r6) == com.google.android.gms.internal.vision.o7.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.vision.o7.d(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.vision.o7.d(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bf, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.vision.o7.e(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.vision.o7.e(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.vision.s6.a(com.google.android.gms.internal.vision.o7.f(r10, r6), com.google.android.gms.internal.vision.o7.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c5 A[LOOP:0: B:2:0x0005->B:86:0x01c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c4 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.r6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g6.a(java.lang.Object, java.lang.Object):boolean");
    }

    private final void a(T t, T t2, int i2) {
        long d2 = d(i2) & 1048575;
        if (a((g6<T>) t2, i2)) {
            Object f2 = o7.f(t, d2);
            Object f3 = o7.f(t2, d2);
            if (f2 != null && f3 != null) {
                o7.a(t, d2, t4.a(f2, f3));
                b((g6<T>) t, i2);
            } else if (f3 != null) {
                o7.a(t, d2, f3);
                b((g6<T>) t, i2);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:299:0x0548. Please report as an issue. */
    @Override // com.google.android.gms.internal.vision.r6
    public final int a(T t) {
        int i2;
        int i3;
        long j2;
        int d2;
        int b2;
        int j3;
        int h2;
        int i4;
        int e2;
        int g2;
        int b3;
        int i5;
        int e3;
        int g3;
        int i6 = 267386880;
        int i7 = 1048575;
        int i8 = 1;
        if (this.f12363g) {
            Unsafe unsafe = r;
            int i9 = 0;
            int i10 = 0;
            while (i9 < this.f12357a.length) {
                int d3 = d(i9);
                int i11 = (d3 & i6) >>> 20;
                int i12 = this.f12357a[i9];
                long j4 = d3 & 1048575;
                int i13 = (i11 < n4.DOUBLE_LIST_PACKED.id() || i11 > n4.SINT64_LIST_PACKED.id()) ? 0 : this.f12357a[i9 + 2] & 1048575;
                switch (i11) {
                    case 0:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.b(i12, 0.0d);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.b(i12, 0.0f);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.d(i12, o7.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.e(i12, o7.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.f(i12, o7.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.g(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.i(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.b(i12, true);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((g6<T>) t, i9)) {
                            Object f2 = o7.f(t, j4);
                            if (f2 instanceof j3) {
                                b3 = a4.c(i12, (j3) f2);
                            } else {
                                b3 = a4.b(i12, (String) f2);
                            }
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (a((g6<T>) t, i9)) {
                            b3 = s6.a(i12, o7.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.c(i12, (j3) o7.f(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.g(i12, o7.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.k(i12, o7.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.j(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.h(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.h(i12, o7.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.f(i12, o7.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (a((g6<T>) t, i9)) {
                            b3 = a4.c(i12, (d6) o7.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        b3 = s6.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 19:
                        b3 = s6.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 20:
                        b3 = s6.a(i12, (List<Long>) a(t, j4), false);
                        i10 += b3;
                        break;
                    case 21:
                        b3 = s6.b(i12, (List<Long>) a(t, j4), false);
                        i10 += b3;
                        break;
                    case 22:
                        b3 = s6.e(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 23:
                        b3 = s6.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 24:
                        b3 = s6.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 25:
                        b3 = s6.j(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 26:
                        b3 = s6.a(i12, a(t, j4));
                        i10 += b3;
                        break;
                    case 27:
                        b3 = s6.a(i12, a(t, j4), a(i9));
                        i10 += b3;
                        break;
                    case 28:
                        b3 = s6.b(i12, a(t, j4));
                        i10 += b3;
                        break;
                    case 29:
                        b3 = s6.f(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 30:
                        b3 = s6.d(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 31:
                        b3 = s6.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 32:
                        b3 = s6.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 33:
                        b3 = s6.g(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 34:
                        b3 = s6.c(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 35:
                        i5 = s6.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 36:
                        i5 = s6.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 37:
                        i5 = s6.a((List<Long>) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 38:
                        i5 = s6.b((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 39:
                        i5 = s6.e((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 40:
                        i5 = s6.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 41:
                        i5 = s6.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 42:
                        i5 = s6.j((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 43:
                        i5 = s6.f((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 44:
                        i5 = s6.d((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 45:
                        i5 = s6.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 46:
                        i5 = s6.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 47:
                        i5 = s6.g((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 48:
                        i5 = s6.c((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f12364h) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = a4.e(i12);
                            g3 = a4.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 49:
                        b3 = s6.b(i12, (List<d6>) a(t, j4), a(i9));
                        i10 += b3;
                        break;
                    case 50:
                        b3 = this.p.a(i12, o7.f(t, j4), b(i9));
                        i10 += b3;
                        break;
                    case 51:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.b(i12, 0.0d);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.b(i12, 0.0f);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.d(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.e(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.f(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.g(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.i(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.b(i12, true);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (a((g6<T>) t, i12, i9)) {
                            Object f3 = o7.f(t, j4);
                            if (f3 instanceof j3) {
                                b3 = a4.c(i12, (j3) f3);
                            } else {
                                b3 = a4.b(i12, (String) f3);
                            }
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = s6.a(i12, o7.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.c(i12, (j3) o7.f(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.g(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.k(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.j(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.h(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.h(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.f(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (a((g6<T>) t, i12, i9)) {
                            b3 = a4.c(i12, (d6) o7.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                }
                i9 += 3;
                i6 = 267386880;
            }
            return i10 + a((i7) this.n, (Object) t);
        }
        Unsafe unsafe2 = r;
        int i14 = 0;
        int i15 = 0;
        int i16 = -1;
        int i17 = 0;
        while (i14 < this.f12357a.length) {
            int d4 = d(i14);
            int[] iArr = this.f12357a;
            int i18 = iArr[i14];
            int i19 = (d4 & 267386880) >>> 20;
            if (i19 <= 17) {
                i2 = iArr[i14 + 2];
                int i20 = i2 & i7;
                i3 = i8 << (i2 >>> 20);
                if (i20 != i16) {
                    i17 = unsafe2.getInt(t, i20);
                } else {
                    i20 = i16;
                }
                i16 = i20;
            } else {
                i2 = (!this.f12364h || i19 < n4.DOUBLE_LIST_PACKED.id() || i19 > n4.SINT64_LIST_PACKED.id()) ? 0 : this.f12357a[i14 + 2] & i7;
                i3 = 0;
            }
            long j5 = d4 & i7;
            switch (i19) {
                case 0:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        i15 += a4.b(i18, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        i15 += a4.b(i18, 0.0f);
                    }
                    break;
                case 2:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = a4.d(i18, unsafe2.getLong(t, j5));
                        i15 += d2;
                    }
                    break;
                case 3:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = a4.e(i18, unsafe2.getLong(t, j5));
                        i15 += d2;
                    }
                    break;
                case 4:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = a4.f(i18, unsafe2.getInt(t, j5));
                        i15 += d2;
                    }
                    break;
                case 5:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = a4.g(i18, 0L);
                        i15 += d2;
                    }
                    break;
                case 6:
                    if ((i17 & i3) != 0) {
                        i15 += a4.i(i18, 0);
                    }
                    j2 = 0;
                    break;
                case 7:
                    if ((i17 & i3) != 0) {
                        i15 += a4.b(i18, true);
                        j2 = 0;
                        break;
                    }
                    j2 = 0;
                case 8:
                    if ((i17 & i3) != 0) {
                        Object object = unsafe2.getObject(t, j5);
                        if (object instanceof j3) {
                            b2 = a4.c(i18, (j3) object);
                        } else {
                            b2 = a4.b(i18, (String) object);
                        }
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 9:
                    if ((i17 & i3) != 0) {
                        b2 = s6.a(i18, unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 10:
                    if ((i17 & i3) != 0) {
                        b2 = a4.c(i18, (j3) unsafe2.getObject(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 11:
                    if ((i17 & i3) != 0) {
                        b2 = a4.g(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 12:
                    if ((i17 & i3) != 0) {
                        b2 = a4.k(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 13:
                    if ((i17 & i3) != 0) {
                        j3 = a4.j(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 14:
                    if ((i17 & i3) != 0) {
                        b2 = a4.h(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 15:
                    if ((i17 & i3) != 0) {
                        b2 = a4.h(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 16:
                    if ((i17 & i3) != 0) {
                        b2 = a4.f(i18, unsafe2.getLong(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 17:
                    if ((i17 & i3) != 0) {
                        b2 = a4.c(i18, (d6) unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 18:
                    b2 = s6.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += b2;
                    j2 = 0;
                    break;
                case 19:
                    h2 = s6.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 20:
                    h2 = s6.a(i18, (List<Long>) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 21:
                    h2 = s6.b(i18, (List<Long>) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 22:
                    h2 = s6.e(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 23:
                    h2 = s6.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 24:
                    h2 = s6.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 25:
                    h2 = s6.j(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 26:
                    b2 = s6.a(i18, (List<?>) unsafe2.getObject(t, j5));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 27:
                    b2 = s6.a(i18, (List<?>) unsafe2.getObject(t, j5), a(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 28:
                    b2 = s6.b(i18, (List) unsafe2.getObject(t, j5));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 29:
                    b2 = s6.f(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += b2;
                    j2 = 0;
                    break;
                case 30:
                    h2 = s6.d(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 31:
                    h2 = s6.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 32:
                    h2 = s6.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 33:
                    h2 = s6.g(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 34:
                    h2 = s6.c(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 35:
                    i4 = s6.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 36:
                    i4 = s6.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 37:
                    i4 = s6.a((List<Long>) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 38:
                    i4 = s6.b((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 39:
                    i4 = s6.e((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 40:
                    i4 = s6.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 41:
                    i4 = s6.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 42:
                    i4 = s6.j((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 43:
                    i4 = s6.f((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 44:
                    i4 = s6.d((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 45:
                    i4 = s6.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 46:
                    i4 = s6.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 47:
                    i4 = s6.g((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 48:
                    i4 = s6.c((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f12364h) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = a4.e(i18);
                        g2 = a4.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 49:
                    b2 = s6.b(i18, (List<d6>) unsafe2.getObject(t, j5), a(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 50:
                    b2 = this.p.a(i18, unsafe2.getObject(t, j5), b(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 51:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.b(i18, 0.0d);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 52:
                    if (a((g6<T>) t, i18, i14)) {
                        j3 = a4.b(i18, 0.0f);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 53:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.d(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 54:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.e(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 55:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.f(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 56:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.g(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 57:
                    if (a((g6<T>) t, i18, i14)) {
                        j3 = a4.i(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 58:
                    if (a((g6<T>) t, i18, i14)) {
                        j3 = a4.b(i18, true);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 59:
                    if (a((g6<T>) t, i18, i14)) {
                        Object object2 = unsafe2.getObject(t, j5);
                        if (object2 instanceof j3) {
                            b2 = a4.c(i18, (j3) object2);
                        } else {
                            b2 = a4.b(i18, (String) object2);
                        }
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 60:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = s6.a(i18, unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 61:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.c(i18, (j3) unsafe2.getObject(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 62:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.g(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 63:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.k(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 64:
                    if (a((g6<T>) t, i18, i14)) {
                        j3 = a4.j(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 65:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.h(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 66:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.h(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 67:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.f(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 68:
                    if (a((g6<T>) t, i18, i14)) {
                        b2 = a4.c(i18, (d6) unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                default:
                    j2 = 0;
                    break;
            }
            i14 += 3;
            i7 = 1048575;
            i8 = 1;
        }
        int a2 = i15 + a((i7) this.n, (Object) t);
        if (!this.f12362f) {
            return a2;
        }
        i4<?> a3 = this.o.a(t);
        int i21 = 0;
        for (int i22 = 0; i22 < a3.f12380a.c(); i22++) {
            Map.Entry<?, Object> a4 = a3.f12380a.a(i22);
            i21 += i4.c((k4) a4.getKey(), a4.getValue());
        }
        for (Map.Entry<?, Object> entry : a3.f12380a.d()) {
            i21 += i4.c((k4) entry.getKey(), entry.getValue());
        }
        return a2 + i21;
    }

    private final Object b(int i2) {
        return this.f12358b[(i2 / 3) << 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.r6
    public final boolean b(T t) {
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.f12366j) {
                return !this.f12362f || this.o.a(t).c();
            }
            int i6 = this.f12365i[i3];
            int i7 = this.f12357a[i6];
            int d2 = d(i6);
            if (this.f12363g) {
                i2 = 0;
            } else {
                int i8 = this.f12357a[i6 + 2];
                int i9 = i8 & 1048575;
                i2 = 1 << (i8 >>> 20);
                if (i9 != i4) {
                    i5 = r.getInt(t, i9);
                    i4 = i9;
                }
            }
            if (((268435456 & d2) != 0) && !a((g6<T>) t, i6, i5, i2)) {
                return false;
            }
            int i10 = (267386880 & d2) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (a((g6<T>) t, i7, i6) && !a(t, d2, a(i6))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.p.f(o7.f(t, d2 & 1048575)).isEmpty()) {
                            this.p.b(b(i6));
                            throw null;
                        }
                    }
                }
                List list = (List) o7.f(t, d2 & 1048575);
                if (!list.isEmpty()) {
                    r6 a2 = a(i6);
                    int i11 = 0;
                    while (true) {
                        if (i11 >= list.size()) {
                            break;
                        }
                        if (!a2.b(list.get(i11))) {
                            z = false;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (a((g6<T>) t, i6, i5, i2) && !a(t, d2, a(i6))) {
                return false;
            }
            i3++;
        }
    }

    private static <T> double b(T t, long j2) {
        return ((Double) o7.f(t, j2)).doubleValue();
    }

    private final void b(T t, int i2) {
        if (this.f12363g) {
            return;
        }
        int e2 = e(i2);
        long j2 = e2 & 1048575;
        o7.a((Object) t, j2, o7.a(t, j2) | (1 << (e2 >>> 20)));
    }

    private final void b(T t, int i2, int i3) {
        o7.a((Object) t, e(i3) & 1048575, i2);
    }

    private final int b(int i2, int i3) {
        int length = (this.f12357a.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f12357a[i5];
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

    private static <UT, UB> int a(i7<UT, UB> i7Var, T t) {
        return i7Var.b(i7Var.c(t));
    }

    private static List<?> a(Object obj, long j2) {
        return (List) o7.f(obj, j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x0a2b  */
    @Override // com.google.android.gms.internal.vision.r6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r14, com.google.android.gms.internal.vision.e8 r15) {
        /*
            Method dump skipped, instructions count: 2918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g6.a(java.lang.Object, com.google.android.gms.internal.vision.e8):void");
    }

    private final <K, V> void a(e8 e8Var, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.p.b(b(i3));
        throw null;
    }

    private static <UT, UB> void a(i7<UT, UB> i7Var, T t, e8 e8Var) {
        i7Var.a((i7<UT, UB>) i7Var.c(t), e8Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, g3 g3Var) {
        int a2;
        int i9 = i2;
        z4 z4Var = (z4) r.getObject(t, j3);
        if (!z4Var.S()) {
            int size = z4Var.size();
            z4Var = z4Var.c(size == 0 ? 10 : size << 1);
            r.putObject(t, j3, z4Var);
        }
        switch (i8) {
            case 18:
            case 35:
                if (i6 == 2) {
                    return e3.f(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 1) {
                    b4 b4Var = (b4) z4Var;
                    b4Var.a(e3.c(bArr, i2));
                    while (true) {
                        int i10 = i9 + 8;
                        if (i10 >= i3) {
                            return i10;
                        }
                        i9 = e3.a(bArr, i10, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return i10;
                        }
                        b4Var.a(e3.c(bArr, i9));
                    }
                }
                return i9;
            case 19:
            case 36:
                if (i6 == 2) {
                    return e3.e(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 5) {
                    o4 o4Var = (o4) z4Var;
                    o4Var.a(e3.d(bArr, i2));
                    while (true) {
                        int i11 = i9 + 4;
                        if (i11 >= i3) {
                            return i11;
                        }
                        i9 = e3.a(bArr, i11, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return i11;
                        }
                        o4Var.a(e3.d(bArr, i9));
                    }
                }
                return i9;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 == 2) {
                    return e3.b(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 0) {
                    r5 r5Var = (r5) z4Var;
                    int b2 = e3.b(bArr, i9, g3Var);
                    r5Var.a(g3Var.f12352b);
                    while (b2 < i3) {
                        int a3 = e3.a(bArr, b2, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return b2;
                        }
                        b2 = e3.b(bArr, a3, g3Var);
                        r5Var.a(g3Var.f12352b);
                    }
                    return b2;
                }
                return i9;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i6 == 2) {
                    return e3.a(bArr, i9, (z4<?>) z4Var, g3Var);
                }
                if (i6 == 0) {
                    return e3.a(i4, bArr, i2, i3, (z4<?>) z4Var, g3Var);
                }
                return i9;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 == 2) {
                    return e3.d(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 1) {
                    r5 r5Var2 = (r5) z4Var;
                    r5Var2.a(e3.b(bArr, i2));
                    while (true) {
                        int i12 = i9 + 8;
                        if (i12 >= i3) {
                            return i12;
                        }
                        i9 = e3.a(bArr, i12, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return i12;
                        }
                        r5Var2.a(e3.b(bArr, i9));
                    }
                }
                return i9;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i6 == 2) {
                    return e3.c(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 5) {
                    u4 u4Var = (u4) z4Var;
                    u4Var.b(e3.a(bArr, i2));
                    while (true) {
                        int i13 = i9 + 4;
                        if (i13 >= i3) {
                            return i13;
                        }
                        i9 = e3.a(bArr, i13, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return i13;
                        }
                        u4Var.b(e3.a(bArr, i9));
                    }
                }
                return i9;
            case 25:
            case 42:
                if (i6 == 2) {
                    return e3.g(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 0) {
                    i3 i3Var = (i3) z4Var;
                    int b3 = e3.b(bArr, i9, g3Var);
                    i3Var.a(g3Var.f12352b != 0);
                    while (b3 < i3) {
                        int a4 = e3.a(bArr, b3, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return b3;
                        }
                        b3 = e3.b(bArr, a4, g3Var);
                        i3Var.a(g3Var.f12352b != 0);
                    }
                    return b3;
                }
                return i9;
            case 26:
                if (i6 == 2) {
                    if ((j2 & 536870912) == 0) {
                        i9 = e3.a(bArr, i9, g3Var);
                        int i14 = g3Var.f12351a;
                        if (i14 < 0) {
                            throw d5.zzgn();
                        }
                        if (i14 == 0) {
                            z4Var.add("");
                        } else {
                            z4Var.add(new String(bArr, i9, i14, t4.f12540a));
                            i9 += i14;
                        }
                        while (i9 < i3) {
                            int a5 = e3.a(bArr, i9, g3Var);
                            if (i4 == g3Var.f12351a) {
                                i9 = e3.a(bArr, a5, g3Var);
                                int i15 = g3Var.f12351a;
                                if (i15 < 0) {
                                    throw d5.zzgn();
                                }
                                if (i15 == 0) {
                                    z4Var.add("");
                                } else {
                                    z4Var.add(new String(bArr, i9, i15, t4.f12540a));
                                    i9 += i15;
                                }
                            }
                        }
                    } else {
                        i9 = e3.a(bArr, i9, g3Var);
                        int i16 = g3Var.f12351a;
                        if (i16 < 0) {
                            throw d5.zzgn();
                        }
                        if (i16 == 0) {
                            z4Var.add("");
                        } else {
                            int i17 = i9 + i16;
                            if (r7.a(bArr, i9, i17)) {
                                z4Var.add(new String(bArr, i9, i16, t4.f12540a));
                                i9 = i17;
                            } else {
                                throw d5.zzgt();
                            }
                        }
                        while (i9 < i3) {
                            int a6 = e3.a(bArr, i9, g3Var);
                            if (i4 == g3Var.f12351a) {
                                i9 = e3.a(bArr, a6, g3Var);
                                int i18 = g3Var.f12351a;
                                if (i18 < 0) {
                                    throw d5.zzgn();
                                }
                                if (i18 == 0) {
                                    z4Var.add("");
                                } else {
                                    int i19 = i9 + i18;
                                    if (r7.a(bArr, i9, i19)) {
                                        z4Var.add(new String(bArr, i9, i18, t4.f12540a));
                                        i9 = i19;
                                    } else {
                                        throw d5.zzgt();
                                    }
                                }
                            }
                        }
                    }
                }
                return i9;
            case 27:
                if (i6 == 2) {
                    return e3.a(a(i7), i4, bArr, i2, i3, z4Var, g3Var);
                }
                return i9;
            case 28:
                if (i6 == 2) {
                    int a7 = e3.a(bArr, i9, g3Var);
                    int i20 = g3Var.f12351a;
                    if (i20 >= 0) {
                        if (i20 > bArr.length - a7) {
                            throw d5.zzgm();
                        }
                        if (i20 == 0) {
                            z4Var.add(j3.zzrx);
                        } else {
                            z4Var.add(j3.zza(bArr, a7, i20));
                            a7 += i20;
                        }
                        while (a7 < i3) {
                            int a8 = e3.a(bArr, a7, g3Var);
                            if (i4 != g3Var.f12351a) {
                                return a7;
                            }
                            a7 = e3.a(bArr, a8, g3Var);
                            int i21 = g3Var.f12351a;
                            if (i21 >= 0) {
                                if (i21 > bArr.length - a7) {
                                    throw d5.zzgm();
                                }
                                if (i21 == 0) {
                                    z4Var.add(j3.zzrx);
                                } else {
                                    z4Var.add(j3.zza(bArr, a7, i21));
                                    a7 += i21;
                                }
                            } else {
                                throw d5.zzgn();
                            }
                        }
                        return a7;
                    }
                    throw d5.zzgn();
                }
                return i9;
            case 30:
            case 44:
                if (i6 != 2) {
                    if (i6 == 0) {
                        a2 = e3.a(i4, bArr, i2, i3, (z4<?>) z4Var, g3Var);
                    }
                    return i9;
                }
                a2 = e3.a(bArr, i9, (z4<?>) z4Var, g3Var);
                s4 s4Var = (s4) t;
                l7 l7Var = s4Var.zzwd;
                if (l7Var == l7.d()) {
                    l7Var = null;
                }
                l7 l7Var2 = (l7) s6.a(i5, (List<Integer>) z4Var, c(i7), l7Var, (i7<UT, l7>) this.n);
                if (l7Var2 != null) {
                    s4Var.zzwd = l7Var2;
                }
                return a2;
            case 33:
            case 47:
                if (i6 == 2) {
                    return e3.h(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 0) {
                    u4 u4Var2 = (u4) z4Var;
                    int a9 = e3.a(bArr, i9, g3Var);
                    u4Var2.b(v3.a(g3Var.f12351a));
                    while (a9 < i3) {
                        int a10 = e3.a(bArr, a9, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return a9;
                        }
                        a9 = e3.a(bArr, a10, g3Var);
                        u4Var2.b(v3.a(g3Var.f12351a));
                    }
                    return a9;
                }
                return i9;
            case 34:
            case 48:
                if (i6 == 2) {
                    return e3.i(bArr, i9, z4Var, g3Var);
                }
                if (i6 == 0) {
                    r5 r5Var3 = (r5) z4Var;
                    int b4 = e3.b(bArr, i9, g3Var);
                    r5Var3.a(v3.a(g3Var.f12352b));
                    while (b4 < i3) {
                        int a11 = e3.a(bArr, b4, g3Var);
                        if (i4 != g3Var.f12351a) {
                            return b4;
                        }
                        b4 = e3.b(bArr, a11, g3Var);
                        r5Var3.a(v3.a(g3Var.f12352b));
                    }
                    return b4;
                }
                return i9;
            case 49:
                if (i6 == 3) {
                    r6 a12 = a(i7);
                    int i22 = (i4 & (-8)) | 4;
                    i9 = e3.a(a12, bArr, i2, i3, i22, g3Var);
                    z4Var.add(g3Var.f12353c);
                    while (i9 < i3) {
                        int a13 = e3.a(bArr, i9, g3Var);
                        if (i4 == g3Var.f12351a) {
                            i9 = e3.a(a12, bArr, a13, i3, i22, g3Var);
                            z4Var.add(g3Var.f12353c);
                        }
                    }
                }
                return i9;
            default:
                return i9;
        }
    }

    private final <K, V> int a(T t, byte[] bArr, int i2, int i3, int i4, long j2, g3 g3Var) {
        Unsafe unsafe = r;
        Object b2 = b(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.p.d(object)) {
            Object e2 = this.p.e(b2);
            this.p.b(e2, object);
            unsafe.putObject(t, j2, e2);
        }
        this.p.b(b2);
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, g3 g3Var) {
        int b2;
        Unsafe unsafe = r;
        long j3 = this.f12357a[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Double.valueOf(e3.c(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 52:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Float.valueOf(e3.d(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 53:
            case 54:
                if (i6 == 0) {
                    b2 = e3.b(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, Long.valueOf(g3Var.f12352b));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 55:
            case 62:
                if (i6 == 0) {
                    b2 = e3.a(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, Integer.valueOf(g3Var.f12351a));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 56:
            case 65:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Long.valueOf(e3.b(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 57:
            case 64:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Integer.valueOf(e3.a(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 58:
                if (i6 == 0) {
                    b2 = e3.b(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, Boolean.valueOf(g3Var.f12352b != 0));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 59:
                if (i6 == 2) {
                    int a2 = e3.a(bArr, i2, g3Var);
                    int i10 = g3Var.f12351a;
                    if (i10 == 0) {
                        unsafe.putObject(t, j2, "");
                    } else {
                        if ((i7 & 536870912) != 0 && !r7.a(bArr, a2, a2 + i10)) {
                            throw d5.zzgt();
                        }
                        unsafe.putObject(t, j2, new String(bArr, a2, i10, t4.f12540a));
                        a2 += i10;
                    }
                    unsafe.putInt(t, j3, i5);
                    return a2;
                }
                return i2;
            case 60:
                if (i6 == 2) {
                    int a3 = e3.a(a(i9), bArr, i2, i3, g3Var);
                    Object object = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object == null) {
                        unsafe.putObject(t, j2, g3Var.f12353c);
                    } else {
                        unsafe.putObject(t, j2, t4.a(object, g3Var.f12353c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return a3;
                }
                return i2;
            case 61:
                if (i6 == 2) {
                    b2 = e3.e(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, g3Var.f12353c);
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 63:
                if (i6 == 0) {
                    int a4 = e3.a(bArr, i2, g3Var);
                    int i11 = g3Var.f12351a;
                    y4 c2 = c(i9);
                    if (c2 != null && !c2.a(i11)) {
                        d(t).a(i4, Long.valueOf(i11));
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
                    b2 = e3.a(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, Integer.valueOf(v3.a(g3Var.f12351a)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 67:
                if (i6 == 0) {
                    b2 = e3.b(bArr, i2, g3Var);
                    unsafe.putObject(t, j2, Long.valueOf(v3.a(g3Var.f12352b)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 68:
                if (i6 == 3) {
                    b2 = e3.a(a(i9), bArr, i2, i3, (i4 & (-8)) | 4, g3Var);
                    Object object2 = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j2, g3Var.f12353c);
                    } else {
                        unsafe.putObject(t, j2, t4.a(object2, g3Var.f12353c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            default:
                return i2;
        }
    }

    private final r6 a(int i2) {
        int i3 = (i2 / 3) << 1;
        r6 r6Var = (r6) this.f12358b[i3];
        if (r6Var != null) {
            return r6Var;
        }
        r6<T> a2 = n6.a().a((Class) this.f12358b[i3 + 1]);
        this.f12358b[i3] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x061f, code lost:
    
        if (r1 != 18) goto L221;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:114:0x0521. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:177:0x008a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:68:0x041b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x060b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x060f  */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(T r33, byte[] r34, int r35, int r36, int r37, com.google.android.gms.internal.vision.g3 r38) {
        /*
            Method dump skipped, instructions count: 1850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g6.a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.vision.g3):int");
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
    @Override // com.google.android.gms.internal.vision.r6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.vision.g3 r32) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g6.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.g3):void");
    }

    private final <UT, UB> UB a(Object obj, int i2, UB ub, i7<UT, UB> i7Var) {
        y4 c2;
        int i3 = this.f12357a[i2];
        Object f2 = o7.f(obj, d(i2) & 1048575);
        if (f2 == null || (c2 = c(i2)) == null) {
            return ub;
        }
        a(i2, i3, this.p.g(f2), c2, (y4) ub, (i7<UT, y4>) i7Var);
        throw null;
    }

    private final <K, V, UT, UB> UB a(int i2, int i3, Map<K, V> map, y4 y4Var, UB ub, i7<UT, UB> i7Var) {
        this.p.b(b(i2));
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i2, r6 r6Var) {
        return r6Var.b(o7.f(obj, i2 & 1048575));
    }

    private static void a(int i2, Object obj, e8 e8Var) {
        if (obj instanceof String) {
            e8Var.a(i2, (String) obj);
        } else {
            e8Var.a(i2, (j3) obj);
        }
    }

    private final boolean a(T t, int i2, int i3, int i4) {
        if (this.f12363g) {
            return a((g6<T>) t, i2);
        }
        return (i3 & i4) != 0;
    }

    private final boolean a(T t, int i2) {
        if (this.f12363g) {
            int d2 = d(i2);
            long j2 = d2 & 1048575;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    return o7.e(t, j2) != 0.0d;
                case 1:
                    return o7.d(t, j2) != 0.0f;
                case 2:
                    return o7.b(t, j2) != 0;
                case 3:
                    return o7.b(t, j2) != 0;
                case 4:
                    return o7.a(t, j2) != 0;
                case 5:
                    return o7.b(t, j2) != 0;
                case 6:
                    return o7.a(t, j2) != 0;
                case 7:
                    return o7.c(t, j2);
                case 8:
                    Object f2 = o7.f(t, j2);
                    if (f2 instanceof String) {
                        return !((String) f2).isEmpty();
                    }
                    if (f2 instanceof j3) {
                        return !j3.zzrx.equals(f2);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return o7.f(t, j2) != null;
                case 10:
                    return !j3.zzrx.equals(o7.f(t, j2));
                case 11:
                    return o7.a(t, j2) != 0;
                case 12:
                    return o7.a(t, j2) != 0;
                case 13:
                    return o7.a(t, j2) != 0;
                case 14:
                    return o7.b(t, j2) != 0;
                case 15:
                    return o7.a(t, j2) != 0;
                case 16:
                    return o7.b(t, j2) != 0;
                case 17:
                    return o7.f(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int e2 = e(i2);
        return (o7.a(t, (long) (e2 & 1048575)) & (1 << (e2 >>> 20))) != 0;
    }

    private final boolean a(T t, int i2, int i3) {
        return o7.a(t, (long) (e(i3) & 1048575)) == i2;
    }

    private final int a(int i2, int i3) {
        if (i2 < this.f12359c || i2 > this.f12360d) {
            return -1;
        }
        return b(i2, i3);
    }
}
