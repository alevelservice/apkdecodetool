package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class ra1<T> implements db1<T> {
    private static final int[] r = new int[0];
    private static final Unsafe s = bc1.c();

    /* renamed from: a, reason: collision with root package name */
    private final int[] f9068a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f9069b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9070c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9071d;

    /* renamed from: e, reason: collision with root package name */
    private final oa1 f9072e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f9073f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f9074g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f9075h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f9076i;

    /* renamed from: j, reason: collision with root package name */
    private final int[] f9077j;

    /* renamed from: k, reason: collision with root package name */
    private final int f9078k;

    /* renamed from: l, reason: collision with root package name */
    private final int f9079l;
    private final va1 m;
    private final y91 n;
    private final vb1<?, ?> o;
    private final s81<?> p;
    private final ha1 q;

    private ra1(int[] iArr, Object[] objArr, int i2, int i3, oa1 oa1Var, boolean z, boolean z2, int[] iArr2, int i4, int i5, va1 va1Var, y91 y91Var, vb1<?, ?> vb1Var, s81<?> s81Var, ha1 ha1Var) {
        this.f9068a = iArr;
        this.f9069b = objArr;
        this.f9070c = i2;
        this.f9071d = i3;
        this.f9074g = oa1Var instanceof e91;
        this.f9075h = z;
        this.f9073f = s81Var != null && s81Var.a(oa1Var);
        this.f9076i = false;
        this.f9077j = iArr2;
        this.f9078k = i4;
        this.f9079l = i5;
        this.m = va1Var;
        this.n = y91Var;
        this.o = vb1Var;
        this.p = s81Var;
        this.f9072e = oa1Var;
        this.q = ha1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> ra1<T> a(Class<T> cls, ma1 ma1Var, va1 va1Var, y91 y91Var, vb1<?, ?> vb1Var, s81<?> s81Var, ha1 ha1Var) {
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
        if (ma1Var instanceof ab1) {
            ab1 ab1Var = (ab1) ma1Var;
            int i27 = 0;
            boolean z = ab1Var.a() == e91.d.f6381j;
            String d2 = ab1Var.d();
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
            Object[] e2 = ab1Var.e();
            Class<?> cls3 = ab1Var.c().getClass();
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
            return new ra1<>(iArr2, objArr, c3, charAt, ab1Var.c(), z, false, iArr, i27, i62, va1Var, y91Var, vb1Var, s81Var, ha1Var);
        }
        ((sb1) ma1Var).a();
        throw null;
    }

    private static boolean f(int i2) {
        return (i2 & 536870912) != 0;
    }

    private final int g(int i2) {
        if (i2 < this.f9070c || i2 > this.f9071d) {
            return -1;
        }
        return b(i2, 0);
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void b(T t, T t2) {
        if (t2 != null) {
            for (int i2 = 0; i2 < this.f9068a.length; i2 += 3) {
                int d2 = d(i2);
                long j2 = 1048575 & d2;
                int i3 = this.f9068a[i2];
                switch ((d2 & 267386880) >>> 20) {
                    case 0:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a(t, j2, bc1.e(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.d(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.b(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.b(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.b(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a(t, j2, bc1.c(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a(t, j2, bc1.f(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        a(t, t2, i2);
                        break;
                    case 10:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a(t, j2, bc1.f(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.b(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.a(t2, j2));
                            b((ra1<T>) t, i2);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((ra1<T>) t2, i2)) {
                            bc1.a((Object) t, j2, bc1.b(t2, j2));
                            b((ra1<T>) t, i2);
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
                        fb1.a(this.q, t, t2, j2);
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
                        if (a((ra1<T>) t2, i3, i2)) {
                            bc1.a(t, j2, bc1.f(t2, j2));
                            b((ra1<T>) t, i3, i2);
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
                        if (a((ra1<T>) t2, i3, i2)) {
                            bc1.a(t, j2, bc1.f(t2, j2));
                            b((ra1<T>) t, i3, i2);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        b(t, t2, i2);
                        break;
                }
            }
            if (this.f9075h) {
                return;
            }
            fb1.a(this.o, t, t2);
            if (this.f9073f) {
                fb1.a(this.p, t, t2);
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.db1
    public final int c(T t) {
        int i2;
        int a2;
        int length = this.f9068a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d2 = d(i4);
            int i5 = this.f9068a[i4];
            long j2 = 1048575 & d2;
            int i6 = 37;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    i2 = i3 * 53;
                    a2 = f91.a(Double.doubleToLongBits(bc1.e(t, j2)));
                    i3 = i2 + a2;
                    break;
                case 1:
                    i2 = i3 * 53;
                    a2 = Float.floatToIntBits(bc1.d(t, j2));
                    i3 = i2 + a2;
                    break;
                case 2:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 3:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 4:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 5:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 6:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 7:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.c(t, j2));
                    i3 = i2 + a2;
                    break;
                case 8:
                    i2 = i3 * 53;
                    a2 = ((String) bc1.f(t, j2)).hashCode();
                    i3 = i2 + a2;
                    break;
                case 9:
                    Object f2 = bc1.f(t, j2);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i2 = i3 * 53;
                    a2 = bc1.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 11:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 14:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 15:
                    i2 = i3 * 53;
                    a2 = bc1.a(t, j2);
                    i3 = i2 + a2;
                    break;
                case 16:
                    i2 = i3 * 53;
                    a2 = f91.a(bc1.b(t, j2));
                    i3 = i2 + a2;
                    break;
                case 17:
                    Object f3 = bc1.f(t, j2);
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
                    a2 = bc1.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 50:
                    i2 = i3 * 53;
                    a2 = bc1.f(t, j2).hashCode();
                    i3 = i2 + a2;
                    break;
                case 51:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(Double.doubleToLongBits(b(t, j2)));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = Float.floatToIntBits(c(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(f(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = ((String) bc1.f(t, j2)).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = bc1.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = bc1.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = d(t, j2);
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = f91.a(e(t, j2));
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (a((ra1<T>) t, i5, i4)) {
                        i2 = i3 * 53;
                        a2 = bc1.f(t, j2).hashCode();
                        i3 = i2 + a2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i3 * 53) + this.o.d(t).hashCode();
        return this.f9073f ? (hashCode * 53) + this.p.a(t).hashCode() : hashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.db1
    public final boolean d(T t) {
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.f9078k) {
                return !this.f9073f || this.p.a(t).c();
            }
            int i6 = this.f9077j[i3];
            int i7 = this.f9068a[i6];
            int d2 = d(i6);
            if (this.f9075h) {
                i2 = 0;
            } else {
                int i8 = this.f9068a[i6 + 2];
                int i9 = i8 & 1048575;
                i2 = 1 << (i8 >>> 20);
                if (i9 != i4) {
                    i5 = s.getInt(t, i9);
                    i4 = i9;
                }
            }
            if (((268435456 & d2) != 0) && !a((ra1<T>) t, i6, i5, i2)) {
                return false;
            }
            int i10 = (267386880 & d2) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (a((ra1<T>) t, i7, i6) && !a(t, d2, a(i6))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.q.a(bc1.f(t, d2 & 1048575)).isEmpty()) {
                            this.q.e(b(i6));
                            throw null;
                        }
                    }
                }
                List list = (List) bc1.f(t, d2 & 1048575);
                if (!list.isEmpty()) {
                    db1 a2 = a(i6);
                    int i11 = 0;
                    while (true) {
                        if (i11 >= list.size()) {
                            break;
                        }
                        if (!a2.d(list.get(i11))) {
                            z = false;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (a((ra1<T>) t, i6, i5, i2) && !a(t, d2, a(i6))) {
                return false;
            }
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void e(T t) {
        int i2;
        int i3 = this.f9078k;
        while (true) {
            i2 = this.f9079l;
            if (i3 >= i2) {
                break;
            }
            long d2 = d(this.f9077j[i3]) & 1048575;
            Object f2 = bc1.f(t, d2);
            if (f2 != null) {
                this.q.c(f2);
                bc1.a(t, d2, f2);
            }
            i3++;
        }
        int length = this.f9077j.length;
        while (i2 < length) {
            this.n.b(t, this.f9077j[i2]);
            i2++;
        }
        this.o.a(t);
        if (this.f9073f) {
            this.p.c(t);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:299:0x0548. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.db1
    public final int f(T t) {
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
        if (this.f9075h) {
            Unsafe unsafe = s;
            int i9 = 0;
            int i10 = 0;
            while (i9 < this.f9068a.length) {
                int d3 = d(i9);
                int i11 = (d3 & i6) >>> 20;
                int i12 = this.f9068a[i9];
                long j4 = d3 & 1048575;
                int i13 = (i11 < y81.DOUBLE_LIST_PACKED.id() || i11 > y81.SINT64_LIST_PACKED.id()) ? 0 : this.f9068a[i9 + 2] & 1048575;
                switch (i11) {
                    case 0:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.b(i12, 0.0d);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.b(i12, 0.0f);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.d(i12, bc1.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.e(i12, bc1.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.f(i12, bc1.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.g(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.i(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.b(i12, true);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (a((ra1<T>) t, i9)) {
                            Object f2 = bc1.f(t, j4);
                            if (f2 instanceof t71) {
                                b3 = m81.c(i12, (t71) f2);
                            } else {
                                b3 = m81.b(i12, (String) f2);
                            }
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (a((ra1<T>) t, i9)) {
                            b3 = fb1.a(i12, bc1.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.c(i12, (t71) bc1.f(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.g(i12, bc1.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.k(i12, bc1.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.j(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.h(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.h(i12, bc1.a(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.f(i12, bc1.b(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (a((ra1<T>) t, i9)) {
                            b3 = m81.c(i12, (oa1) bc1.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        b3 = fb1.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 19:
                        b3 = fb1.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 20:
                        b3 = fb1.a(i12, (List<Long>) a(t, j4), false);
                        i10 += b3;
                        break;
                    case 21:
                        b3 = fb1.b(i12, (List<Long>) a(t, j4), false);
                        i10 += b3;
                        break;
                    case 22:
                        b3 = fb1.e(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 23:
                        b3 = fb1.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 24:
                        b3 = fb1.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 25:
                        b3 = fb1.j(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 26:
                        b3 = fb1.a(i12, a(t, j4));
                        i10 += b3;
                        break;
                    case 27:
                        b3 = fb1.a(i12, a(t, j4), a(i9));
                        i10 += b3;
                        break;
                    case 28:
                        b3 = fb1.b(i12, a(t, j4));
                        i10 += b3;
                        break;
                    case 29:
                        b3 = fb1.f(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 30:
                        b3 = fb1.d(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 31:
                        b3 = fb1.h(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 32:
                        b3 = fb1.i(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 33:
                        b3 = fb1.g(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 34:
                        b3 = fb1.c(i12, a(t, j4), false);
                        i10 += b3;
                        break;
                    case 35:
                        i5 = fb1.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 36:
                        i5 = fb1.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 37:
                        i5 = fb1.a((List<Long>) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 38:
                        i5 = fb1.b((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 39:
                        i5 = fb1.e((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 40:
                        i5 = fb1.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 41:
                        i5 = fb1.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 42:
                        i5 = fb1.j((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 43:
                        i5 = fb1.f((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 44:
                        i5 = fb1.d((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 45:
                        i5 = fb1.h((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 46:
                        i5 = fb1.i((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 47:
                        i5 = fb1.g((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 48:
                        i5 = fb1.c((List) unsafe.getObject(t, j4));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.f9076i) {
                                unsafe.putInt(t, i13, i5);
                            }
                            e3 = m81.e(i12);
                            g3 = m81.g(i5);
                            b3 = e3 + g3 + i5;
                            i10 += b3;
                            break;
                        }
                    case 49:
                        b3 = fb1.b(i12, (List<oa1>) a(t, j4), a(i9));
                        i10 += b3;
                        break;
                    case 50:
                        b3 = this.q.a(i12, bc1.f(t, j4), b(i9));
                        i10 += b3;
                        break;
                    case 51:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.b(i12, 0.0d);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.b(i12, 0.0f);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.d(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.e(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.f(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.g(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.i(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.b(i12, true);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (a((ra1<T>) t, i12, i9)) {
                            Object f3 = bc1.f(t, j4);
                            if (f3 instanceof t71) {
                                b3 = m81.c(i12, (t71) f3);
                            } else {
                                b3 = m81.b(i12, (String) f3);
                            }
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = fb1.a(i12, bc1.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.c(i12, (t71) bc1.f(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.g(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.k(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.j(i12, 0);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.h(i12, 0L);
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.h(i12, d(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.f(i12, e(t, j4));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (a((ra1<T>) t, i12, i9)) {
                            b3 = m81.c(i12, (oa1) bc1.f(t, j4), a(i9));
                            i10 += b3;
                            break;
                        } else {
                            break;
                        }
                }
                i9 += 3;
                i6 = 267386880;
            }
            return i10 + a((vb1) this.o, (Object) t);
        }
        Unsafe unsafe2 = s;
        int i14 = 0;
        int i15 = 0;
        int i16 = -1;
        int i17 = 0;
        while (i14 < this.f9068a.length) {
            int d4 = d(i14);
            int[] iArr = this.f9068a;
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
                i2 = (!this.f9076i || i19 < y81.DOUBLE_LIST_PACKED.id() || i19 > y81.SINT64_LIST_PACKED.id()) ? 0 : this.f9068a[i14 + 2] & i7;
                i3 = 0;
            }
            long j5 = d4 & i7;
            switch (i19) {
                case 0:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        i15 += m81.b(i18, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        i15 += m81.b(i18, 0.0f);
                    }
                    break;
                case 2:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = m81.d(i18, unsafe2.getLong(t, j5));
                        i15 += d2;
                    }
                    break;
                case 3:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = m81.e(i18, unsafe2.getLong(t, j5));
                        i15 += d2;
                    }
                    break;
                case 4:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = m81.f(i18, unsafe2.getInt(t, j5));
                        i15 += d2;
                    }
                    break;
                case 5:
                    j2 = 0;
                    if ((i17 & i3) != 0) {
                        d2 = m81.g(i18, 0L);
                        i15 += d2;
                    }
                    break;
                case 6:
                    if ((i17 & i3) != 0) {
                        i15 += m81.i(i18, 0);
                    }
                    j2 = 0;
                    break;
                case 7:
                    if ((i17 & i3) != 0) {
                        i15 += m81.b(i18, true);
                        j2 = 0;
                        break;
                    }
                    j2 = 0;
                case 8:
                    if ((i17 & i3) != 0) {
                        Object object = unsafe2.getObject(t, j5);
                        if (object instanceof t71) {
                            b2 = m81.c(i18, (t71) object);
                        } else {
                            b2 = m81.b(i18, (String) object);
                        }
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 9:
                    if ((i17 & i3) != 0) {
                        b2 = fb1.a(i18, unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 10:
                    if ((i17 & i3) != 0) {
                        b2 = m81.c(i18, (t71) unsafe2.getObject(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 11:
                    if ((i17 & i3) != 0) {
                        b2 = m81.g(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 12:
                    if ((i17 & i3) != 0) {
                        b2 = m81.k(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 13:
                    if ((i17 & i3) != 0) {
                        j3 = m81.j(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 14:
                    if ((i17 & i3) != 0) {
                        b2 = m81.h(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 15:
                    if ((i17 & i3) != 0) {
                        b2 = m81.h(i18, unsafe2.getInt(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 16:
                    if ((i17 & i3) != 0) {
                        b2 = m81.f(i18, unsafe2.getLong(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 17:
                    if ((i17 & i3) != 0) {
                        b2 = m81.c(i18, (oa1) unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 18:
                    b2 = fb1.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += b2;
                    j2 = 0;
                    break;
                case 19:
                    h2 = fb1.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 20:
                    h2 = fb1.a(i18, (List<Long>) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 21:
                    h2 = fb1.b(i18, (List<Long>) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 22:
                    h2 = fb1.e(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 23:
                    h2 = fb1.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 24:
                    h2 = fb1.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 25:
                    h2 = fb1.j(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 26:
                    b2 = fb1.a(i18, (List<?>) unsafe2.getObject(t, j5));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 27:
                    b2 = fb1.a(i18, (List<?>) unsafe2.getObject(t, j5), a(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 28:
                    b2 = fb1.b(i18, (List) unsafe2.getObject(t, j5));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 29:
                    b2 = fb1.f(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += b2;
                    j2 = 0;
                    break;
                case 30:
                    h2 = fb1.d(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 31:
                    h2 = fb1.h(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 32:
                    h2 = fb1.i(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 33:
                    h2 = fb1.g(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 34:
                    h2 = fb1.c(i18, (List) unsafe2.getObject(t, j5), false);
                    i15 += h2;
                    j2 = 0;
                    break;
                case 35:
                    i4 = fb1.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 36:
                    i4 = fb1.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 37:
                    i4 = fb1.a((List<Long>) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 38:
                    i4 = fb1.b((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 39:
                    i4 = fb1.e((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 40:
                    i4 = fb1.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 41:
                    i4 = fb1.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 42:
                    i4 = fb1.j((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 43:
                    i4 = fb1.f((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 44:
                    i4 = fb1.d((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 45:
                    i4 = fb1.h((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 46:
                    i4 = fb1.i((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 47:
                    i4 = fb1.g((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 48:
                    i4 = fb1.c((List) unsafe2.getObject(t, j5));
                    if (i4 > 0) {
                        if (this.f9076i) {
                            unsafe2.putInt(t, i2, i4);
                        }
                        e2 = m81.e(i18);
                        g2 = m81.g(i4);
                        j3 = e2 + g2 + i4;
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 49:
                    b2 = fb1.b(i18, (List<oa1>) unsafe2.getObject(t, j5), a(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 50:
                    b2 = this.q.a(i18, unsafe2.getObject(t, j5), b(i14));
                    i15 += b2;
                    j2 = 0;
                    break;
                case 51:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.b(i18, 0.0d);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 52:
                    if (a((ra1<T>) t, i18, i14)) {
                        j3 = m81.b(i18, 0.0f);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 53:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.d(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 54:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.e(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 55:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.f(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 56:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.g(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 57:
                    if (a((ra1<T>) t, i18, i14)) {
                        j3 = m81.i(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 58:
                    if (a((ra1<T>) t, i18, i14)) {
                        j3 = m81.b(i18, true);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 59:
                    if (a((ra1<T>) t, i18, i14)) {
                        Object object2 = unsafe2.getObject(t, j5);
                        if (object2 instanceof t71) {
                            b2 = m81.c(i18, (t71) object2);
                        } else {
                            b2 = m81.b(i18, (String) object2);
                        }
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 60:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = fb1.a(i18, unsafe2.getObject(t, j5), a(i14));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 61:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.c(i18, (t71) unsafe2.getObject(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 62:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.g(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 63:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.k(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 64:
                    if (a((ra1<T>) t, i18, i14)) {
                        j3 = m81.j(i18, 0);
                        i15 += j3;
                    }
                    j2 = 0;
                    break;
                case 65:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.h(i18, 0L);
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 66:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.h(i18, d(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 67:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.f(i18, e(t, j5));
                        i15 += b2;
                    }
                    j2 = 0;
                    break;
                case 68:
                    if (a((ra1<T>) t, i18, i14)) {
                        b2 = m81.c(i18, (oa1) unsafe2.getObject(t, j5), a(i14));
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
        int a2 = i15 + a((vb1) this.o, (Object) t);
        if (!this.f9073f) {
            return a2;
        }
        t81<?> a3 = this.p.a(t);
        int i21 = 0;
        for (int i22 = 0; i22 < a3.f9533a.c(); i22++) {
            Map.Entry<?, Object> a4 = a3.f9533a.a(i22);
            i21 += t81.b((v81<?>) a4.getKey(), a4.getValue());
        }
        for (Map.Entry<?, Object> entry : a3.f9533a.d()) {
            i21 += t81.b((v81<?>) entry.getKey(), entry.getValue());
        }
        return a2 + i21;
    }

    private final int e(int i2) {
        return this.f9068a[i2 + 2];
    }

    private static <T> long e(T t, long j2) {
        return ((Long) bc1.f(t, j2)).longValue();
    }

    private final int d(int i2) {
        return this.f9068a[i2 + 1];
    }

    private static <T> int d(T t, long j2) {
        return ((Integer) bc1.f(t, j2)).intValue();
    }

    private final k91 c(int i2) {
        return (k91) this.f9069b[((i2 / 3) << 1) + 1];
    }

    private final void b(T t, T t2, int i2) {
        int d2 = d(i2);
        int i3 = this.f9068a[i2];
        long j2 = d2 & 1048575;
        if (a((ra1<T>) t2, i3, i2)) {
            Object f2 = bc1.f(t, j2);
            Object f3 = bc1.f(t2, j2);
            if (f2 != null && f3 != null) {
                bc1.a(t, j2, f91.a(f2, f3));
                b((ra1<T>) t, i3, i2);
            } else if (f3 != null) {
                bc1.a(t, j2, f3);
                b((ra1<T>) t, i3, i2);
            }
        }
    }

    private static <T> float c(T t, long j2) {
        return ((Float) bc1.f(t, j2)).floatValue();
    }

    private final boolean c(T t, T t2, int i2) {
        return a((ra1<T>) t, i2) == a((ra1<T>) t2, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:276:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(T r18, com.google.android.gms.internal.ads.tc1 r19) {
        /*
            Method dump skipped, instructions count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ra1.b(java.lang.Object, com.google.android.gms.internal.ads.tc1):void");
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

    @Override // com.google.android.gms.internal.ads.db1
    public final T a() {
        return (T) this.m.a(this.f9072e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
    
        if (com.google.android.gms.internal.ads.fb1.a(com.google.android.gms.internal.ads.bc1.f(r10, r6), com.google.android.gms.internal.ads.bc1.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.b(r10, r6) == com.google.android.gms.internal.ads.bc1.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.b(r10, r6) == com.google.android.gms.internal.ads.bc1.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c8, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f0, code lost:
    
        if (com.google.android.gms.internal.ads.fb1.a(com.google.android.gms.internal.ads.bc1.f(r10, r6), com.google.android.gms.internal.ads.bc1.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0106, code lost:
    
        if (com.google.android.gms.internal.ads.fb1.a(com.google.android.gms.internal.ads.bc1.f(r10, r6), com.google.android.gms.internal.ads.bc1.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011c, code lost:
    
        if (com.google.android.gms.internal.ads.fb1.a(com.google.android.gms.internal.ads.bc1.f(r10, r6), com.google.android.gms.internal.ads.bc1.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012e, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.c(r10, r6) == com.google.android.gms.internal.ads.bc1.c(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.b(r10, r6) == com.google.android.gms.internal.ads.bc1.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0165, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.a(r10, r6) == com.google.android.gms.internal.ads.bc1.a(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0178, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.b(r10, r6) == com.google.android.gms.internal.ads.bc1.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018b, code lost:
    
        if (com.google.android.gms.internal.ads.bc1.b(r10, r6) == com.google.android.gms.internal.ads.bc1.b(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.bc1.d(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.bc1.d(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bf, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.bc1.e(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.bc1.e(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.ads.fb1.a(com.google.android.gms.internal.ads.bc1.f(r10, r6), com.google.android.gms.internal.ads.bc1.f(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c5 A[LOOP:0: B:2:0x0005->B:86:0x01c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c4 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.db1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ra1.a(java.lang.Object, java.lang.Object):boolean");
    }

    private final void a(T t, T t2, int i2) {
        long d2 = d(i2) & 1048575;
        if (a((ra1<T>) t2, i2)) {
            Object f2 = bc1.f(t, d2);
            Object f3 = bc1.f(t2, d2);
            if (f2 != null && f3 != null) {
                bc1.a(t, d2, f91.a(f2, f3));
                b((ra1<T>) t, i2);
            } else if (f3 != null) {
                bc1.a(t, d2, f3);
                b((ra1<T>) t, i2);
            }
        }
    }

    private static <UT, UB> int a(vb1<UT, UB> vb1Var, T t) {
        return vb1Var.c(vb1Var.d(t));
    }

    private static List<?> a(Object obj, long j2) {
        return (List) bc1.f(obj, j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x096d  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0973  */
    @Override // com.google.android.gms.internal.ads.db1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r13, com.google.android.gms.internal.ads.tc1 r14) {
        /*
            Method dump skipped, instructions count: 2714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ra1.a(java.lang.Object, com.google.android.gms.internal.ads.tc1):void");
    }

    private final Object b(int i2) {
        return this.f9069b[(i2 / 3) << 1];
    }

    private static <T> double b(T t, long j2) {
        return ((Double) bc1.f(t, j2)).doubleValue();
    }

    private final void b(T t, int i2) {
        if (this.f9075h) {
            return;
        }
        int e2 = e(i2);
        long j2 = e2 & 1048575;
        bc1.a((Object) t, j2, bc1.a(t, j2) | (1 << (e2 >>> 20)));
    }

    private final void b(T t, int i2, int i3) {
        bc1.a((Object) t, e(i3) & 1048575, i2);
    }

    private final int b(int i2, int i3) {
        int length = (this.f9068a.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f9068a[i5];
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

    private static <T> boolean f(T t, long j2) {
        return ((Boolean) bc1.f(t, j2)).booleanValue();
    }

    private final <K, V> void a(tc1 tc1Var, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.q.e(b(i3));
        throw null;
    }

    private static <UT, UB> void a(vb1<UT, UB> vb1Var, T t, tc1 tc1Var) {
        vb1Var.a((vb1<UT, UB>) vb1Var.d(t), tc1Var);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0079. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:346:0x05b9 A[LOOP:5: B:344:0x05b5->B:346:0x05b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x05c5  */
    @Override // com.google.android.gms.internal.ads.db1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r11, com.google.android.gms.internal.ads.eb1 r12, com.google.android.gms.internal.ads.q81 r13) {
        /*
            Method dump skipped, instructions count: 1632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ra1.a(java.lang.Object, com.google.android.gms.internal.ads.eb1, com.google.android.gms.internal.ads.q81):void");
    }

    private static yb1 a(Object obj) {
        e91 e91Var = (e91) obj;
        yb1 yb1Var = e91Var.zzhkd;
        if (yb1Var != yb1.d()) {
            return yb1Var;
        }
        yb1 e2 = yb1.e();
        e91Var.zzhkd = e2;
        return e2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, s71 s71Var) {
        int a2;
        int i9 = i2;
        l91 l91Var = (l91) s.getObject(t, j3);
        if (!l91Var.R()) {
            int size = l91Var.size();
            l91Var = l91Var.f(size == 0 ? 10 : size << 1);
            s.putObject(t, j3, l91Var);
        }
        switch (i8) {
            case 18:
            case 35:
                if (i6 == 2) {
                    p81 p81Var = (p81) l91Var;
                    int a3 = p71.a(bArr, i9, s71Var);
                    int i10 = s71Var.f9285a + a3;
                    while (a3 < i10) {
                        p81Var.a(p71.c(bArr, a3));
                        a3 += 8;
                    }
                    if (a3 == i10) {
                        return a3;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 1) {
                    p81 p81Var2 = (p81) l91Var;
                    p81Var2.a(p71.c(bArr, i2));
                    while (true) {
                        int i11 = i9 + 8;
                        if (i11 >= i3) {
                            return i11;
                        }
                        i9 = p71.a(bArr, i11, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return i11;
                        }
                        p81Var2.a(p71.c(bArr, i9));
                    }
                }
                return i9;
            case 19:
            case 36:
                if (i6 == 2) {
                    z81 z81Var = (z81) l91Var;
                    int a4 = p71.a(bArr, i9, s71Var);
                    int i12 = s71Var.f9285a + a4;
                    while (a4 < i12) {
                        z81Var.a(p71.d(bArr, a4));
                        a4 += 4;
                    }
                    if (a4 == i12) {
                        return a4;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 5) {
                    z81 z81Var2 = (z81) l91Var;
                    z81Var2.a(p71.d(bArr, i2));
                    while (true) {
                        int i13 = i9 + 4;
                        if (i13 >= i3) {
                            return i13;
                        }
                        i9 = p71.a(bArr, i13, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return i13;
                        }
                        z81Var2.a(p71.d(bArr, i9));
                    }
                }
                return i9;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 == 2) {
                    ca1 ca1Var = (ca1) l91Var;
                    int a5 = p71.a(bArr, i9, s71Var);
                    int i14 = s71Var.f9285a + a5;
                    while (a5 < i14) {
                        a5 = p71.b(bArr, a5, s71Var);
                        ca1Var.a(s71Var.f9286b);
                    }
                    if (a5 == i14) {
                        return a5;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 0) {
                    ca1 ca1Var2 = (ca1) l91Var;
                    int b2 = p71.b(bArr, i9, s71Var);
                    ca1Var2.a(s71Var.f9286b);
                    while (b2 < i3) {
                        int a6 = p71.a(bArr, b2, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return b2;
                        }
                        b2 = p71.b(bArr, a6, s71Var);
                        ca1Var2.a(s71Var.f9286b);
                    }
                    return b2;
                }
                return i9;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i6 == 2) {
                    return p71.a(bArr, i9, (l91<?>) l91Var, s71Var);
                }
                if (i6 == 0) {
                    return p71.a(i4, bArr, i2, i3, (l91<?>) l91Var, s71Var);
                }
                return i9;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 == 2) {
                    ca1 ca1Var3 = (ca1) l91Var;
                    int a7 = p71.a(bArr, i9, s71Var);
                    int i15 = s71Var.f9285a + a7;
                    while (a7 < i15) {
                        ca1Var3.a(p71.b(bArr, a7));
                        a7 += 8;
                    }
                    if (a7 == i15) {
                        return a7;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 1) {
                    ca1 ca1Var4 = (ca1) l91Var;
                    ca1Var4.a(p71.b(bArr, i2));
                    while (true) {
                        int i16 = i9 + 8;
                        if (i16 >= i3) {
                            return i16;
                        }
                        i9 = p71.a(bArr, i16, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return i16;
                        }
                        ca1Var4.a(p71.b(bArr, i9));
                    }
                }
                return i9;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i6 == 2) {
                    g91 g91Var = (g91) l91Var;
                    int a8 = p71.a(bArr, i9, s71Var);
                    int i17 = s71Var.f9285a + a8;
                    while (a8 < i17) {
                        g91Var.h(p71.a(bArr, a8));
                        a8 += 4;
                    }
                    if (a8 == i17) {
                        return a8;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 5) {
                    g91 g91Var2 = (g91) l91Var;
                    g91Var2.h(p71.a(bArr, i2));
                    while (true) {
                        int i18 = i9 + 4;
                        if (i18 >= i3) {
                            return i18;
                        }
                        i9 = p71.a(bArr, i18, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return i18;
                        }
                        g91Var2.h(p71.a(bArr, i9));
                    }
                }
                return i9;
            case 25:
            case 42:
                if (i6 == 2) {
                    r71 r71Var = (r71) l91Var;
                    a2 = p71.a(bArr, i9, s71Var);
                    int i19 = s71Var.f9285a + a2;
                    while (a2 < i19) {
                        a2 = p71.b(bArr, a2, s71Var);
                        r71Var.a(s71Var.f9286b != 0);
                    }
                    if (a2 != i19) {
                        throw o91.zzazx();
                    }
                    return a2;
                }
                if (i6 == 0) {
                    r71 r71Var2 = (r71) l91Var;
                    i9 = p71.b(bArr, i9, s71Var);
                    r71Var2.a(s71Var.f9286b != 0);
                    while (i9 < i3) {
                        int a9 = p71.a(bArr, i9, s71Var);
                        if (i4 == s71Var.f9285a) {
                            i9 = p71.b(bArr, a9, s71Var);
                            r71Var2.a(s71Var.f9286b != 0);
                        }
                    }
                }
                return i9;
            case 26:
                if (i6 == 2) {
                    if ((j2 & 536870912) == 0) {
                        i9 = p71.a(bArr, i9, s71Var);
                        int i20 = s71Var.f9285a;
                        if (i20 < 0) {
                            throw o91.zzazy();
                        }
                        if (i20 == 0) {
                            l91Var.add("");
                        } else {
                            l91Var.add(new String(bArr, i9, i20, f91.f6596a));
                            i9 += i20;
                        }
                        while (i9 < i3) {
                            int a10 = p71.a(bArr, i9, s71Var);
                            if (i4 == s71Var.f9285a) {
                                i9 = p71.a(bArr, a10, s71Var);
                                int i21 = s71Var.f9285a;
                                if (i21 < 0) {
                                    throw o91.zzazy();
                                }
                                if (i21 == 0) {
                                    l91Var.add("");
                                } else {
                                    l91Var.add(new String(bArr, i9, i21, f91.f6596a));
                                    i9 += i21;
                                }
                            }
                        }
                    } else {
                        i9 = p71.a(bArr, i9, s71Var);
                        int i22 = s71Var.f9285a;
                        if (i22 < 0) {
                            throw o91.zzazy();
                        }
                        if (i22 == 0) {
                            l91Var.add("");
                        } else {
                            int i23 = i9 + i22;
                            if (fc1.a(bArr, i9, i23)) {
                                l91Var.add(new String(bArr, i9, i22, f91.f6596a));
                                i9 = i23;
                            } else {
                                throw o91.zzbae();
                            }
                        }
                        while (i9 < i3) {
                            int a11 = p71.a(bArr, i9, s71Var);
                            if (i4 == s71Var.f9285a) {
                                i9 = p71.a(bArr, a11, s71Var);
                                int i24 = s71Var.f9285a;
                                if (i24 < 0) {
                                    throw o91.zzazy();
                                }
                                if (i24 == 0) {
                                    l91Var.add("");
                                } else {
                                    int i25 = i9 + i24;
                                    if (fc1.a(bArr, i9, i25)) {
                                        l91Var.add(new String(bArr, i9, i24, f91.f6596a));
                                        i9 = i25;
                                    } else {
                                        throw o91.zzbae();
                                    }
                                }
                            }
                        }
                    }
                }
                return i9;
            case 27:
                if (i6 == 2) {
                    return p71.a(a(i7), i4, bArr, i2, i3, l91Var, s71Var);
                }
                return i9;
            case 28:
                if (i6 == 2) {
                    int a12 = p71.a(bArr, i9, s71Var);
                    int i26 = s71Var.f9285a;
                    if (i26 >= 0) {
                        if (i26 > bArr.length - a12) {
                            throw o91.zzazx();
                        }
                        if (i26 == 0) {
                            l91Var.add(t71.zzhfn);
                        } else {
                            l91Var.add(t71.zzh(bArr, a12, i26));
                            a12 += i26;
                        }
                        while (a12 < i3) {
                            int a13 = p71.a(bArr, a12, s71Var);
                            if (i4 != s71Var.f9285a) {
                                return a12;
                            }
                            a12 = p71.a(bArr, a13, s71Var);
                            int i27 = s71Var.f9285a;
                            if (i27 >= 0) {
                                if (i27 > bArr.length - a12) {
                                    throw o91.zzazx();
                                }
                                if (i27 == 0) {
                                    l91Var.add(t71.zzhfn);
                                } else {
                                    l91Var.add(t71.zzh(bArr, a12, i27));
                                    a12 += i27;
                                }
                            } else {
                                throw o91.zzazy();
                            }
                        }
                        return a12;
                    }
                    throw o91.zzazy();
                }
                return i9;
            case 30:
            case 44:
                if (i6 != 2) {
                    if (i6 == 0) {
                        a2 = p71.a(i4, bArr, i2, i3, (l91<?>) l91Var, s71Var);
                    }
                    return i9;
                }
                a2 = p71.a(bArr, i9, (l91<?>) l91Var, s71Var);
                e91 e91Var = (e91) t;
                yb1 yb1Var = e91Var.zzhkd;
                if (yb1Var == yb1.d()) {
                    yb1Var = null;
                }
                yb1 yb1Var2 = (yb1) fb1.a(i5, l91Var, c(i7), yb1Var, this.o);
                if (yb1Var2 != null) {
                    e91Var.zzhkd = yb1Var2;
                }
                return a2;
            case 33:
            case 47:
                if (i6 == 2) {
                    g91 g91Var3 = (g91) l91Var;
                    int a14 = p71.a(bArr, i9, s71Var);
                    int i28 = s71Var.f9285a + a14;
                    while (a14 < i28) {
                        a14 = p71.a(bArr, a14, s71Var);
                        g91Var3.h(g81.e(s71Var.f9285a));
                    }
                    if (a14 == i28) {
                        return a14;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 0) {
                    g91 g91Var4 = (g91) l91Var;
                    int a15 = p71.a(bArr, i9, s71Var);
                    g91Var4.h(g81.e(s71Var.f9285a));
                    while (a15 < i3) {
                        int a16 = p71.a(bArr, a15, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return a15;
                        }
                        a15 = p71.a(bArr, a16, s71Var);
                        g91Var4.h(g81.e(s71Var.f9285a));
                    }
                    return a15;
                }
                return i9;
            case 34:
            case 48:
                if (i6 == 2) {
                    ca1 ca1Var5 = (ca1) l91Var;
                    int a17 = p71.a(bArr, i9, s71Var);
                    int i29 = s71Var.f9285a + a17;
                    while (a17 < i29) {
                        a17 = p71.b(bArr, a17, s71Var);
                        ca1Var5.a(g81.a(s71Var.f9286b));
                    }
                    if (a17 == i29) {
                        return a17;
                    }
                    throw o91.zzazx();
                }
                if (i6 == 0) {
                    ca1 ca1Var6 = (ca1) l91Var;
                    int b3 = p71.b(bArr, i9, s71Var);
                    ca1Var6.a(g81.a(s71Var.f9286b));
                    while (b3 < i3) {
                        int a18 = p71.a(bArr, b3, s71Var);
                        if (i4 != s71Var.f9285a) {
                            return b3;
                        }
                        b3 = p71.b(bArr, a18, s71Var);
                        ca1Var6.a(g81.a(s71Var.f9286b));
                    }
                    return b3;
                }
                return i9;
            case 49:
                if (i6 == 3) {
                    db1 a19 = a(i7);
                    int i30 = (i4 & (-8)) | 4;
                    i9 = p71.a(a19, bArr, i2, i3, i30, s71Var);
                    l91Var.add(s71Var.f9287c);
                    while (i9 < i3) {
                        int a20 = p71.a(bArr, i9, s71Var);
                        if (i4 == s71Var.f9285a) {
                            i9 = p71.a(a19, bArr, a20, i3, i30, s71Var);
                            l91Var.add(s71Var.f9287c);
                        }
                    }
                }
                return i9;
            default:
                return i9;
        }
    }

    private final <K, V> int a(T t, byte[] bArr, int i2, int i3, int i4, long j2, s71 s71Var) {
        Unsafe unsafe = s;
        Object b2 = b(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.q.b(object)) {
            Object d2 = this.q.d(b2);
            this.q.a(d2, object);
            unsafe.putObject(t, j2, d2);
        }
        this.q.e(b2);
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, s71 s71Var) {
        int b2;
        Unsafe unsafe = s;
        long j3 = this.f9068a[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Double.valueOf(p71.c(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 52:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Float.valueOf(p71.d(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 53:
            case 54:
                if (i6 == 0) {
                    b2 = p71.b(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, Long.valueOf(s71Var.f9286b));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 55:
            case 62:
                if (i6 == 0) {
                    b2 = p71.a(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, Integer.valueOf(s71Var.f9285a));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 56:
            case 65:
                if (i6 == 1) {
                    unsafe.putObject(t, j2, Long.valueOf(p71.b(bArr, i2)));
                    b2 = i2 + 8;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 57:
            case 64:
                if (i6 == 5) {
                    unsafe.putObject(t, j2, Integer.valueOf(p71.a(bArr, i2)));
                    b2 = i2 + 4;
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 58:
                if (i6 == 0) {
                    b2 = p71.b(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, Boolean.valueOf(s71Var.f9286b != 0));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 59:
                if (i6 == 2) {
                    int a2 = p71.a(bArr, i2, s71Var);
                    int i10 = s71Var.f9285a;
                    if (i10 == 0) {
                        unsafe.putObject(t, j2, "");
                    } else {
                        if ((i7 & 536870912) != 0 && !fc1.a(bArr, a2, a2 + i10)) {
                            throw o91.zzbae();
                        }
                        unsafe.putObject(t, j2, new String(bArr, a2, i10, f91.f6596a));
                        a2 += i10;
                    }
                    unsafe.putInt(t, j3, i5);
                    return a2;
                }
                return i2;
            case 60:
                if (i6 == 2) {
                    int a3 = p71.a(a(i9), bArr, i2, i3, s71Var);
                    Object object = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object == null) {
                        unsafe.putObject(t, j2, s71Var.f9287c);
                    } else {
                        unsafe.putObject(t, j2, f91.a(object, s71Var.f9287c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return a3;
                }
                return i2;
            case 61:
                if (i6 == 2) {
                    b2 = p71.e(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, s71Var.f9287c);
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 63:
                if (i6 == 0) {
                    int a4 = p71.a(bArr, i2, s71Var);
                    int i11 = s71Var.f9285a;
                    k91 c2 = c(i9);
                    if (c2 != null && !c2.a(i11)) {
                        a(t).a(i4, Long.valueOf(i11));
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
                    b2 = p71.a(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, Integer.valueOf(g81.e(s71Var.f9285a)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 67:
                if (i6 == 0) {
                    b2 = p71.b(bArr, i2, s71Var);
                    unsafe.putObject(t, j2, Long.valueOf(g81.a(s71Var.f9286b)));
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            case 68:
                if (i6 == 3) {
                    b2 = p71.a(a(i9), bArr, i2, i3, (i4 & (-8)) | 4, s71Var);
                    Object object2 = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j2, s71Var.f9287c);
                    } else {
                        unsafe.putObject(t, j2, f91.a(object2, s71Var.f9287c));
                    }
                    unsafe.putInt(t, j3, i5);
                    return b2;
                }
                return i2;
            default:
                return i2;
        }
    }

    private final db1 a(int i2) {
        int i3 = (i2 / 3) << 1;
        db1 db1Var = (db1) this.f9069b[i3];
        if (db1Var != null) {
            return db1Var;
        }
        db1<T> a2 = ya1.a().a((Class) this.f9069b[i3 + 1]);
        this.f9069b[i3] = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:105:0x0085. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public final int a(T t, byte[] bArr, int i2, int i3, int i4, s71 s71Var) {
        Unsafe unsafe;
        int i5;
        Object obj;
        ra1<T> ra1Var;
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
        s71 s71Var2;
        int i21;
        s71 s71Var3;
        int i22;
        int i23;
        s71 s71Var4;
        int i24;
        int i25;
        ra1<T> ra1Var2 = this;
        Object obj3 = t;
        byte[] bArr2 = bArr;
        int i26 = i3;
        int i27 = i4;
        s71 s71Var5 = s71Var;
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
                    i11 = p71.a(b2, bArr2, i34, s71Var5);
                    i10 = s71Var5.f9285a;
                } else {
                    i10 = b2;
                    i11 = i34;
                }
                int i35 = i10 >>> 3;
                int i36 = i10 & 7;
                if (i35 > i29) {
                    g2 = ra1Var2.a(i35, i30 / 3);
                } else {
                    g2 = ra1Var2.g(i35);
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
                    int[] iArr = ra1Var2.f9068a;
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
                                s71Var3 = s71Var;
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
                                    bc1.a(obj3, j2, p71.c(bArr2, i22));
                                    i28 = i22 + 8;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 1:
                                i18 = i37;
                                i19 = i35;
                                i21 = i33;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var3 = s71Var;
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
                                    bc1.a(obj3, j2, p71.d(bArr2, i22));
                                    i28 = i22 + 4;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
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
                                    int b3 = p71.b(bArr2, i22, s71Var);
                                    unsafe2.putLong(t, j2, s71Var.f9286b);
                                    i32 |= i42;
                                    i28 = b3;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var;
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
                                s71Var3 = s71Var;
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
                                    i28 = p71.a(bArr2, i22, s71Var3);
                                    unsafe2.putInt(obj3, j2, s71Var3.f9285a);
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 5:
                            case 14:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var3 = s71Var;
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
                                    unsafe2.putLong(t, j2, p71.b(bArr2, i11));
                                    i28 = i22 + 8;
                                    i32 |= i42;
                                    i33 = i21;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
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
                                s71Var4 = s71Var;
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
                                    unsafe2.putInt(obj3, j2, p71.a(bArr2, i11));
                                    i28 = i11 + 4;
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 7:
                                i23 = i3;
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var4 = s71Var;
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
                                    int b4 = p71.b(bArr2, i11, s71Var4);
                                    bc1.a(obj3, j2, s71Var4.f9286b != 0);
                                    i32 |= i42;
                                    i28 = b4;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 8:
                                i23 = i3;
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var4 = s71Var;
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
                                        i28 = p71.c(bArr2, i11, s71Var4);
                                    } else {
                                        i28 = p71.d(bArr2, i11, s71Var4);
                                    }
                                    unsafe2.putObject(obj3, j2, s71Var4.f9287c);
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 9:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var4 = s71Var;
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
                                    i28 = p71.a(ra1Var2.a(i18), bArr2, i11, i23, s71Var4);
                                    if ((i32 & i42) == 0) {
                                        unsafe2.putObject(obj3, j2, s71Var4.f9287c);
                                    } else {
                                        unsafe2.putObject(obj3, j2, f91.a(unsafe2.getObject(obj3, j2), s71Var4.f9287c));
                                    }
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var4;
                                    i27 = i4;
                                    i26 = i23;
                                }
                            case 10:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var3 = s71Var;
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
                                    i28 = p71.e(bArr2, i11, s71Var3);
                                    unsafe2.putObject(obj3, j2, s71Var3.f9287c);
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
                                    i26 = i3;
                                    i27 = i4;
                                }
                            case 12:
                                i18 = i37;
                                i19 = i35;
                                i20 = i40;
                                bArr2 = bArr;
                                s71Var3 = s71Var;
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
                                    i28 = p71.a(bArr2, i11, s71Var3);
                                    int i44 = s71Var3.f9285a;
                                    k91 c2 = ra1Var2.c(i18);
                                    if (c2 != null && !c2.a(i44)) {
                                        a(t).a(i20, Long.valueOf(i44));
                                        i31 = i20;
                                        i30 = i18;
                                        i29 = i19;
                                        s71Var5 = s71Var3;
                                        i26 = i3;
                                        i27 = i4;
                                    } else {
                                        unsafe2.putInt(obj3, j2, i44);
                                        i32 |= i42;
                                        i31 = i20;
                                        i30 = i18;
                                        i29 = i19;
                                        s71Var5 = s71Var3;
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
                                s71Var3 = s71Var;
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
                                    i28 = p71.a(bArr2, i11, s71Var3);
                                    unsafe2.putInt(obj3, j2, g81.e(s71Var3.f9285a));
                                    i32 |= i42;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
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
                                    int b5 = p71.b(bArr2, i11, s71Var);
                                    s71Var3 = s71Var;
                                    unsafe2.putLong(t, j2, g81.a(s71Var.f9286b));
                                    i32 |= i42;
                                    i28 = b5;
                                    i31 = i20;
                                    i30 = i18;
                                    i29 = i19;
                                    s71Var5 = s71Var3;
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
                                    i28 = p71.a(ra1Var2.a(i37), bArr, i11, i3, (i35 << 3) | 4, s71Var);
                                    if ((i32 & i42) == 0) {
                                        s71Var2 = s71Var;
                                        unsafe2.putObject(obj3, j2, s71Var2.f9287c);
                                    } else {
                                        s71Var2 = s71Var;
                                        unsafe2.putObject(obj3, j2, f91.a(unsafe2.getObject(obj3, j2), s71Var2.f9287c));
                                    }
                                    i32 |= i42;
                                    bArr2 = bArr;
                                    i26 = i3;
                                    i31 = i40;
                                    i30 = i37;
                                    i29 = i35;
                                    i27 = i4;
                                    s71Var5 = s71Var2;
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
                        s71 s71Var6 = s71Var5;
                        if (i39 != 27) {
                            i13 = i32;
                            if (i39 <= 49) {
                                i12 = i35;
                                i25 = i40;
                                i15 = i37;
                                unsafe = unsafe2;
                                i28 = a((ra1<T>) t, bArr, i45, i3, i40, i35, i36, i37, i38, i39, j2, s71Var);
                                if (i28 != i45) {
                                    ra1Var2 = this;
                                    obj3 = t;
                                    bArr2 = bArr;
                                    i26 = i3;
                                    i27 = i4;
                                    s71Var5 = s71Var;
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
                                    i28 = a((ra1<T>) t, bArr, i24, i3, i25, i12, i36, i38, i39, j2, i15, s71Var);
                                    if (i28 != i24) {
                                        i17 = i12;
                                        ra1Var2 = this;
                                        obj3 = t;
                                        bArr2 = bArr;
                                        i26 = i3;
                                        i27 = i4;
                                        s71Var5 = s71Var;
                                        i31 = i25;
                                        i29 = i17;
                                        i33 = i14;
                                        i30 = i15;
                                        i32 = i13;
                                    }
                                } else if (i36 == 2) {
                                    a((ra1<T>) t, bArr, i24, i3, i15, j2, s71Var);
                                    throw null;
                                }
                            }
                            i5 = i4;
                            i6 = i28;
                            i16 = i25;
                        } else if (i36 == 2) {
                            l91 l91Var = (l91) unsafe2.getObject(obj3, j2);
                            if (!l91Var.R()) {
                                int size = l91Var.size();
                                l91Var = l91Var.f(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(obj3, j2, l91Var);
                            }
                            i28 = p71.a(ra1Var2.a(i37), i40, bArr, i45, i3, l91Var, s71Var);
                            i27 = i4;
                            i29 = i35;
                            i31 = i40;
                            i30 = i37;
                            s71Var5 = s71Var6;
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
                    if (this.f9073f) {
                        s71Var5 = s71Var;
                        if (s71Var5.f9288d != q81.b()) {
                            i17 = i12;
                            if (s71Var5.f9288d.a(this.f9072e, i17) == null) {
                                i28 = p71.a(i16, bArr, i6, i3, a(t), s71Var);
                                obj3 = t;
                                bArr2 = bArr;
                                i26 = i3;
                                i27 = i5;
                                i31 = i16;
                                ra1Var2 = this;
                                i29 = i17;
                                i33 = i14;
                                i30 = i15;
                                i32 = i13;
                                unsafe2 = unsafe;
                            } else {
                                e91.b bVar = (e91.b) t;
                                bVar.k();
                                t81<Object> t81Var = bVar.zzhkg;
                                throw new NoSuchMethodError();
                            }
                        } else {
                            obj2 = t;
                        }
                    } else {
                        obj2 = t;
                        s71Var5 = s71Var;
                    }
                    i28 = p71.a(i16, bArr, i6, i3, a(t), s71Var);
                    bArr2 = bArr;
                    i26 = i3;
                    i31 = i16;
                    ra1Var2 = this;
                    i29 = i12;
                    obj3 = obj2;
                    i33 = i14;
                    i30 = i15;
                    unsafe2 = unsafe;
                    i27 = i5;
                    i32 = i13;
                } else {
                    i9 = -1;
                    ra1Var = this;
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
                ra1Var = ra1Var2;
                i6 = i28;
                i7 = i33;
                i8 = i46;
                i9 = -1;
            }
        }
        if (i7 != i9) {
            unsafe.putInt(obj, i7, i8);
        }
        yb1 yb1Var = null;
        for (int i47 = ra1Var.f9078k; i47 < ra1Var.f9079l; i47++) {
            ra1Var.a(obj, ra1Var.f9077j[i47], (int) yb1Var, (vb1<UT, int>) ra1Var.o);
            yb1Var = yb1Var;
        }
        if (yb1Var != null) {
            ra1Var.o.b(obj, yb1Var);
        }
        if (i5 == 0) {
            if (i6 != i3) {
                throw o91.zzbad();
            }
        } else if (i6 > i3 || i31 != i5) {
            throw o91.zzbad();
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
    @Override // com.google.android.gms.internal.ads.db1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.ads.s71 r32) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ra1.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.s71):void");
    }

    private final <UT, UB> UB a(Object obj, int i2, UB ub, vb1<UT, UB> vb1Var) {
        k91 c2;
        int i3 = this.f9068a[i2];
        Object f2 = bc1.f(obj, d(i2) & 1048575);
        if (f2 == null || (c2 = c(i2)) == null) {
            return ub;
        }
        a(i2, i3, this.q.f(f2), c2, (k91) ub, (vb1<UT, k91>) vb1Var);
        throw null;
    }

    private final <K, V, UT, UB> UB a(int i2, int i3, Map<K, V> map, k91 k91Var, UB ub, vb1<UT, UB> vb1Var) {
        this.q.e(b(i2));
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i2, db1 db1Var) {
        return db1Var.d(bc1.f(obj, i2 & 1048575));
    }

    private static void a(int i2, Object obj, tc1 tc1Var) {
        if (obj instanceof String) {
            tc1Var.a(i2, (String) obj);
        } else {
            tc1Var.a(i2, (t71) obj);
        }
    }

    private final void a(Object obj, int i2, eb1 eb1Var) {
        if (f(i2)) {
            bc1.a(obj, i2 & 1048575, eb1Var.j());
        } else if (this.f9074g) {
            bc1.a(obj, i2 & 1048575, eb1Var.d());
        } else {
            bc1.a(obj, i2 & 1048575, eb1Var.l());
        }
    }

    private final boolean a(T t, int i2, int i3, int i4) {
        if (this.f9075h) {
            return a((ra1<T>) t, i2);
        }
        return (i3 & i4) != 0;
    }

    private final boolean a(T t, int i2) {
        if (this.f9075h) {
            int d2 = d(i2);
            long j2 = d2 & 1048575;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    return bc1.e(t, j2) != 0.0d;
                case 1:
                    return bc1.d(t, j2) != 0.0f;
                case 2:
                    return bc1.b(t, j2) != 0;
                case 3:
                    return bc1.b(t, j2) != 0;
                case 4:
                    return bc1.a(t, j2) != 0;
                case 5:
                    return bc1.b(t, j2) != 0;
                case 6:
                    return bc1.a(t, j2) != 0;
                case 7:
                    return bc1.c(t, j2);
                case 8:
                    Object f2 = bc1.f(t, j2);
                    if (f2 instanceof String) {
                        return !((String) f2).isEmpty();
                    }
                    if (f2 instanceof t71) {
                        return !t71.zzhfn.equals(f2);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return bc1.f(t, j2) != null;
                case 10:
                    return !t71.zzhfn.equals(bc1.f(t, j2));
                case 11:
                    return bc1.a(t, j2) != 0;
                case 12:
                    return bc1.a(t, j2) != 0;
                case 13:
                    return bc1.a(t, j2) != 0;
                case 14:
                    return bc1.b(t, j2) != 0;
                case 15:
                    return bc1.a(t, j2) != 0;
                case 16:
                    return bc1.b(t, j2) != 0;
                case 17:
                    return bc1.f(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int e2 = e(i2);
        return (bc1.a(t, (long) (e2 & 1048575)) & (1 << (e2 >>> 20))) != 0;
    }

    private final boolean a(T t, int i2, int i3) {
        return bc1.a(t, (long) (e(i3) & 1048575)) == i2;
    }

    private final int a(int i2, int i3) {
        if (i2 < this.f9070c || i2 > this.f9071d) {
            return -1;
        }
        return b(i2, i3);
    }
}
