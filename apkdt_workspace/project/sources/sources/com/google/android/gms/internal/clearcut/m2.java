package com.google.android.gms.internal.clearcut;

import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class m2<T> implements z2<T> {
    private static final Unsafe r = y3.d();

    /* renamed from: a, reason: collision with root package name */
    private final int[] f11485a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f11486b;

    /* renamed from: c, reason: collision with root package name */
    private final int f11487c;

    /* renamed from: d, reason: collision with root package name */
    private final int f11488d;

    /* renamed from: e, reason: collision with root package name */
    private final int f11489e;

    /* renamed from: f, reason: collision with root package name */
    private final i2 f11490f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f11491g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f11492h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f11493i;

    /* renamed from: j, reason: collision with root package name */
    private final int[] f11494j;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f11495k;

    /* renamed from: l, reason: collision with root package name */
    private final int[] f11496l;
    private final p2 m;
    private final t1 n;
    private final r3<?, ?> o;
    private final q0<?> p;
    private final d2 q;

    private m2(int[] iArr, Object[] objArr, int i2, int i3, int i4, i2 i2Var, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, p2 p2Var, t1 t1Var, r3<?, ?> r3Var, q0<?> q0Var, d2 d2Var) {
        this.f11485a = iArr;
        this.f11486b = objArr;
        this.f11487c = i2;
        this.f11488d = i3;
        this.f11489e = i4;
        boolean z3 = i2Var instanceof d1;
        this.f11492h = z;
        this.f11491g = q0Var != null && q0Var.a(i2Var);
        this.f11493i = false;
        this.f11494j = iArr2;
        this.f11495k = iArr3;
        this.f11496l = iArr4;
        this.m = p2Var;
        this.n = t1Var;
        this.o = r3Var;
        this.p = q0Var;
        this.f11490f = i2Var;
        this.q = d2Var;
    }

    private static int a(int i2, byte[] bArr, int i3, int i4, Object obj, v vVar) {
        return u.a(i2, bArr, i3, i4, a(obj), vVar);
    }

    private static <UT, UB> int a(r3<UT, UB> r3Var, T t) {
        return r3Var.b(r3Var.c(t));
    }

    private static int a(z2<?> z2Var, int i2, byte[] bArr, int i3, int i4, i1<?> i1Var, v vVar) {
        int a2 = a((z2) z2Var, bArr, i3, i4, vVar);
        while (true) {
            i1Var.add(vVar.f11578c);
            if (a2 >= i4) {
                break;
            }
            int a3 = u.a(bArr, a2, vVar);
            if (i2 != vVar.f11576a) {
                break;
            }
            a2 = a((z2) z2Var, bArr, a3, i4, vVar);
        }
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int a(z2 z2Var, byte[] bArr, int i2, int i3, int i4, v vVar) {
        m2 m2Var = (m2) z2Var;
        Object a2 = m2Var.a();
        int a3 = m2Var.a((m2) a2, bArr, i2, i3, i4, vVar);
        m2Var.f((m2) a2);
        vVar.f11578c = a2;
        return a3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int a(z2 z2Var, byte[] bArr, int i2, int i3, v vVar) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = u.a(i5, bArr, i4, vVar);
            i5 = vVar.f11576a;
        }
        int i6 = i4;
        if (i5 < 0 || i5 > i3 - i6) {
            throw j1.zzbl();
        }
        Object a2 = z2Var.a();
        int i7 = i5 + i6;
        z2Var.a(a2, bArr, i6, i7, vVar);
        z2Var.f(a2);
        vVar.f11578c = a2;
        return i7;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    private final int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, v vVar) {
        Object valueOf;
        Object valueOf2;
        int b2;
        long j3;
        int i10;
        Object valueOf3;
        int i11;
        Unsafe unsafe = r;
        long j4 = this.f11485a[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 == 1) {
                    valueOf = Double.valueOf(u.c(bArr, i2));
                    unsafe.putObject(t, j2, valueOf);
                    b2 = i2 + 8;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 52:
                if (i6 == 5) {
                    valueOf2 = Float.valueOf(u.d(bArr, i2));
                    unsafe.putObject(t, j2, valueOf2);
                    b2 = i2 + 4;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 53:
            case 54:
                if (i6 == 0) {
                    b2 = u.b(bArr, i2, vVar);
                    j3 = vVar.f11577b;
                    valueOf3 = Long.valueOf(j3);
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 55:
            case 62:
                if (i6 == 0) {
                    b2 = u.a(bArr, i2, vVar);
                    i10 = vVar.f11576a;
                    valueOf3 = Integer.valueOf(i10);
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 56:
            case 65:
                if (i6 == 1) {
                    valueOf = Long.valueOf(u.b(bArr, i2));
                    unsafe.putObject(t, j2, valueOf);
                    b2 = i2 + 8;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 57:
            case 64:
                if (i6 == 5) {
                    valueOf2 = Integer.valueOf(u.a(bArr, i2));
                    unsafe.putObject(t, j2, valueOf2);
                    b2 = i2 + 4;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 58:
                if (i6 == 0) {
                    b2 = u.b(bArr, i2, vVar);
                    valueOf3 = Boolean.valueOf(vVar.f11577b != 0);
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 59:
                if (i6 == 2) {
                    b2 = u.a(bArr, i2, vVar);
                    i11 = vVar.f11576a;
                    if (i11 == 0) {
                        valueOf3 = "";
                        unsafe.putObject(t, j2, valueOf3);
                        unsafe.putInt(t, j4, i5);
                        return b2;
                    }
                    if ((i7 & 536870912) != 0 && !a4.a(bArr, b2, b2 + i11)) {
                        throw j1.zzbp();
                    }
                    unsafe.putObject(t, j2, new String(bArr, b2, i11, f1.f11419a));
                    b2 += i11;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 60:
                if (i6 == 2) {
                    b2 = a(a(i9), bArr, i2, i3, vVar);
                    Object object = unsafe.getInt(t, j4) == i5 ? unsafe.getObject(t, j2) : null;
                    valueOf3 = vVar.f11578c;
                    if (object != null) {
                        valueOf3 = f1.a(object, valueOf3);
                    }
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 61:
                if (i6 == 2) {
                    b2 = u.a(bArr, i2, vVar);
                    i11 = vVar.f11576a;
                    if (i11 == 0) {
                        valueOf3 = y.zzfi;
                        unsafe.putObject(t, j2, valueOf3);
                        unsafe.putInt(t, j4, i5);
                        return b2;
                    }
                    unsafe.putObject(t, j2, y.zzb(bArr, b2, i11));
                    b2 += i11;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 63:
                if (i6 == 0) {
                    int a2 = u.a(bArr, i2, vVar);
                    int i12 = vVar.f11576a;
                    h1<?> c2 = c(i9);
                    if (c2 != null && c2.a(i12) == null) {
                        a(t).a(i4, Long.valueOf(i12));
                        return a2;
                    }
                    unsafe.putObject(t, j2, Integer.valueOf(i12));
                    b2 = a2;
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 66:
                if (i6 == 0) {
                    b2 = u.a(bArr, i2, vVar);
                    i10 = h0.a(vVar.f11576a);
                    valueOf3 = Integer.valueOf(i10);
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 67:
                if (i6 == 0) {
                    b2 = u.b(bArr, i2, vVar);
                    j3 = h0.a(vVar.f11577b);
                    valueOf3 = Long.valueOf(j3);
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            case 68:
                if (i6 == 3) {
                    b2 = a(a(i9), bArr, i2, i3, (i4 & (-8)) | 4, vVar);
                    Object object2 = unsafe.getInt(t, j4) == i5 ? unsafe.getObject(t, j2) : null;
                    valueOf3 = vVar.f11578c;
                    if (object2 != null) {
                        valueOf3 = f1.a(object2, valueOf3);
                    }
                    unsafe.putObject(t, j2, valueOf3);
                    unsafe.putInt(t, j4, i5);
                    return b2;
                }
                return i2;
            default:
                return i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0232, code lost:
    
        if (r30.f11577b != 0) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0234, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0237, code lost:
    
        r11.a(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x023a, code lost:
    
        if (r4 >= r20) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x023c, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.u.a(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0242, code lost:
    
        if (r21 != r30.f11576a) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0244, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.u.b(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x024c, code lost:
    
        if (r30.f11577b == 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0236, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0237, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x013a, code lost:
    
        if (r4 == 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x013c, code lost:
    
        r11.add(com.google.android.gms.internal.clearcut.y.zzfi);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x014a, code lost:
    
        if (r1 >= r20) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x014c, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.u.a(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0152, code lost:
    
        if (r21 != r30.f11576a) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0154, code lost:
    
        r1 = com.google.android.gms.internal.clearcut.u.a(r18, r4, r30);
        r4 = r30.f11576a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x015a, code lost:
    
        if (r4 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0142, code lost:
    
        r11.add(com.google.android.gms.internal.clearcut.y.zzb(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x014a, code lost:
    
        r11.add(com.google.android.gms.internal.clearcut.y.zzb(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x024c -> B:117:0x0234). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x015a -> B:60:0x013c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01ab -> B:74:0x018c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x01e1 -> B:85:0x01ba). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int a(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.clearcut.v r30) {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.v):int");
    }

    private final <K, V> int a(T t, byte[] bArr, int i2, int i3, int i4, int i5, long j2, v vVar) {
        Unsafe unsafe = r;
        Object b2 = b(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.q.a(object)) {
            Object g2 = this.q.g(b2);
            this.q.a(g2, object);
            unsafe.putObject(t, j2, g2);
        }
        this.q.f(b2);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x02f8, code lost:
    
        if (r0 == r5) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02fc, code lost:
    
        r15 = r27;
        r14 = r28;
        r12 = r29;
        r1 = r30;
        r13 = r31;
        r11 = r32;
        r9 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0355, code lost:
    
        r7 = r30;
        r6 = r32;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0353, code lost:
    
        if (r0 == r15) goto L127;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:92:0x006a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x036b A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int a(T r28, byte[] r29, int r30, int r31, int r32, com.google.android.gms.internal.clearcut.v r33) {
        /*
            Method dump skipped, instructions count: 1070
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.v):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016b A[EDGE_INSN: B:50:0x016b->B:71:0x016b BREAK  A[LOOP:0: B:18:0x0066->B:27:0x0167], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.clearcut.m2<T> a(java.lang.Class<T> r23, com.google.android.gms.internal.clearcut.g2 r24, com.google.android.gms.internal.clearcut.p2 r25, com.google.android.gms.internal.clearcut.t1 r26, com.google.android.gms.internal.clearcut.r3<?, ?> r27, com.google.android.gms.internal.clearcut.q0<?> r28, com.google.android.gms.internal.clearcut.d2 r29) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Class, com.google.android.gms.internal.clearcut.g2, com.google.android.gms.internal.clearcut.p2, com.google.android.gms.internal.clearcut.t1, com.google.android.gms.internal.clearcut.r3, com.google.android.gms.internal.clearcut.q0, com.google.android.gms.internal.clearcut.d2):com.google.android.gms.internal.clearcut.m2");
    }

    private static s3 a(Object obj) {
        d1 d1Var = (d1) obj;
        s3 s3Var = d1Var.zzjp;
        if (s3Var != s3.d()) {
            return s3Var;
        }
        s3 e2 = s3.e();
        d1Var.zzjp = e2;
        return e2;
    }

    private final z2 a(int i2) {
        int i3 = (i2 / 4) << 1;
        z2 z2Var = (z2) this.f11486b[i3];
        if (z2Var != null) {
            return z2Var;
        }
        z2<T> a2 = u2.a().a((Class) this.f11486b[i3 + 1]);
        this.f11486b[i3] = a2;
        return a2;
    }

    private final <K, V, UT, UB> UB a(int i2, int i3, Map<K, V> map, h1<?> h1Var, UB ub, r3<UT, UB> r3Var) {
        this.q.f(b(i2));
        throw null;
    }

    private static <E> List<E> a(Object obj, long j2) {
        return (List) y3.f(obj, j2);
    }

    private static void a(int i2, Object obj, m4 m4Var) {
        if (obj instanceof String) {
            m4Var.a(i2, (String) obj);
        } else {
            m4Var.a(i2, (y) obj);
        }
    }

    private final <K, V> void a(m4 m4Var, int i2, Object obj, int i3) {
        if (obj == null) {
            return;
        }
        this.q.f(b(i3));
        throw null;
    }

    private static <UT, UB> void a(r3<UT, UB> r3Var, T t, m4 m4Var) {
        r3Var.a((r3<UT, UB>) r3Var.c(t), m4Var);
    }

    private final void a(T t, T t2, int i2) {
        long d2 = d(i2) & 1048575;
        if (a((m2<T>) t2, i2)) {
            Object f2 = y3.f(t, d2);
            Object f3 = y3.f(t2, d2);
            if (f2 != null && f3 != null) {
                y3.a(t, d2, f1.a(f2, f3));
                b((m2<T>) t, i2);
            } else if (f3 != null) {
                y3.a(t, d2, f3);
                b((m2<T>) t, i2);
            }
        }
    }

    private final boolean a(T t, int i2) {
        if (!this.f11492h) {
            int e2 = e(i2);
            return (y3.a(t, (long) (e2 & 1048575)) & (1 << (e2 >>> 20))) != 0;
        }
        int d2 = d(i2);
        long j2 = d2 & 1048575;
        switch ((d2 & 267386880) >>> 20) {
            case 0:
                return y3.e(t, j2) != 0.0d;
            case 1:
                return y3.d(t, j2) != 0.0f;
            case 2:
                return y3.b(t, j2) != 0;
            case 3:
                return y3.b(t, j2) != 0;
            case 4:
                return y3.a(t, j2) != 0;
            case 5:
                return y3.b(t, j2) != 0;
            case 6:
                return y3.a(t, j2) != 0;
            case 7:
                return y3.c(t, j2);
            case 8:
                Object f2 = y3.f(t, j2);
                if (f2 instanceof String) {
                    return !((String) f2).isEmpty();
                }
                if (f2 instanceof y) {
                    return !y.zzfi.equals(f2);
                }
                throw new IllegalArgumentException();
            case 9:
                return y3.f(t, j2) != null;
            case 10:
                return !y.zzfi.equals(y3.f(t, j2));
            case 11:
                return y3.a(t, j2) != 0;
            case 12:
                return y3.a(t, j2) != 0;
            case 13:
                return y3.a(t, j2) != 0;
            case 14:
                return y3.b(t, j2) != 0;
            case 15:
                return y3.a(t, j2) != 0;
            case 16:
                return y3.b(t, j2) != 0;
            case 17:
                return y3.f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean a(T t, int i2, int i3) {
        return y3.a(t, (long) (e(i3) & 1048575)) == i2;
    }

    private final boolean a(T t, int i2, int i3, int i4) {
        return this.f11492h ? a((m2<T>) t, i2) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i2, z2 z2Var) {
        return z2Var.e(y3.f(obj, i2 & 1048575));
    }

    private static <T> double b(T t, long j2) {
        return ((Double) y3.f(t, j2)).doubleValue();
    }

    private final Object b(int i2) {
        return this.f11486b[(i2 / 4) << 1];
    }

    private final void b(T t, int i2) {
        if (this.f11492h) {
            return;
        }
        int e2 = e(i2);
        long j2 = e2 & 1048575;
        y3.a((Object) t, j2, y3.a(t, j2) | (1 << (e2 >>> 20)));
    }

    private final void b(T t, int i2, int i3) {
        y3.a((Object) t, e(i3) & 1048575, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0087. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(T r19, com.google.android.gms.internal.clearcut.m4 r20) {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.b(java.lang.Object, com.google.android.gms.internal.clearcut.m4):void");
    }

    private final void b(T t, T t2, int i2) {
        int d2 = d(i2);
        int i3 = this.f11485a[i2];
        long j2 = d2 & 1048575;
        if (a((m2<T>) t2, i3, i2)) {
            Object f2 = y3.f(t, j2);
            Object f3 = y3.f(t2, j2);
            if (f2 != null && f3 != null) {
                y3.a(t, j2, f1.a(f2, f3));
                b((m2<T>) t, i3, i2);
            } else if (f3 != null) {
                y3.a(t, j2, f3);
                b((m2<T>) t, i3, i2);
            }
        }
    }

    private static <T> float c(T t, long j2) {
        return ((Float) y3.f(t, j2)).floatValue();
    }

    private final h1<?> c(int i2) {
        return (h1) this.f11486b[((i2 / 4) << 1) + 1];
    }

    private final boolean c(T t, T t2, int i2) {
        return a((m2<T>) t, i2) == a((m2<T>) t2, i2);
    }

    private final int d(int i2) {
        return this.f11485a[i2 + 1];
    }

    private static <T> int d(T t, long j2) {
        return ((Integer) y3.f(t, j2)).intValue();
    }

    private final int e(int i2) {
        return this.f11485a[i2 + 2];
    }

    private static <T> long e(T t, long j2) {
        return ((Long) y3.f(t, j2)).longValue();
    }

    private final int f(int i2) {
        int i3 = this.f11487c;
        if (i2 >= i3) {
            int i4 = this.f11489e;
            if (i2 < i4) {
                int i5 = (i2 - i3) << 2;
                if (this.f11485a[i5] == i2) {
                    return i5;
                }
                return -1;
            }
            if (i2 <= this.f11488d) {
                int i6 = i4 - i3;
                int length = (this.f11485a.length / 4) - 1;
                while (i6 <= length) {
                    int i7 = (length + i6) >>> 1;
                    int i8 = i7 << 2;
                    int i9 = this.f11485a[i8];
                    if (i2 == i9) {
                        return i8;
                    }
                    if (i2 < i9) {
                        length = i7 - 1;
                    } else {
                        i6 = i7 + 1;
                    }
                }
            }
        }
        return -1;
    }

    private static <T> boolean f(T t, long j2) {
        return ((Boolean) y3.f(t, j2)).booleanValue();
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final T a() {
        return (T) this.m.a(this.f11490f);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0063. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:306:0x0521. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0977  */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r14, com.google.android.gms.internal.clearcut.m4 r15) {
        /*
            Method dump skipped, instructions count: 2738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Object, com.google.android.gms.internal.clearcut.m4):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0164, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01a2, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01a0, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x0048. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v25, types: [int] */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r23, byte[] r24, int r25, int r26, com.google.android.gms.internal.clearcut.v r27) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.v):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005c, code lost:
    
        if (com.google.android.gms.internal.clearcut.b3.a(com.google.android.gms.internal.clearcut.y3.f(r10, r6), com.google.android.gms.internal.clearcut.y3.f(r11, r6)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a8, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cc, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e2, code lost:
    
        if (com.google.android.gms.internal.clearcut.b3.a(com.google.android.gms.internal.clearcut.y3.f(r10, r6), com.google.android.gms.internal.clearcut.y3.f(r11, r6)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f8, code lost:
    
        if (com.google.android.gms.internal.clearcut.b3.a(com.google.android.gms.internal.clearcut.y3.f(r10, r6), com.google.android.gms.internal.clearcut.y3.f(r11, r6)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010e, code lost:
    
        if (com.google.android.gms.internal.clearcut.b3.a(com.google.android.gms.internal.clearcut.y3.f(r10, r6), com.google.android.gms.internal.clearcut.y3.f(r11, r6)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0120, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.c(r10, r6) == com.google.android.gms.internal.clearcut.y3.c(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0132, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0145, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0156, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0169, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017c, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x018d, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.a(r10, r6) == com.google.android.gms.internal.clearcut.y3.a(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a0, code lost:
    
        if (com.google.android.gms.internal.clearcut.y3.b(r10, r6) == com.google.android.gms.internal.clearcut.y3.b(r11, r6)) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.clearcut.b3.a(com.google.android.gms.internal.clearcut.y3.f(r10, r6), com.google.android.gms.internal.clearcut.y3.f(r11, r6)) != false) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a6 A[LOOP:0: B:2:0x0005->B:85:0x01a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a5 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001a. Please report as an issue. */
    @Override // com.google.android.gms.internal.clearcut.z2
    public final void b(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i2 = 0; i2 < this.f11485a.length; i2 += 4) {
            int d2 = d(i2);
            long j2 = 1048575 & d2;
            int i3 = this.f11485a[i2];
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    if (a((m2<T>) t2, i2)) {
                        y3.a(t, j2, y3.e(t2, j2));
                        b((m2<T>) t, i2);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (a((m2<T>) t2, i2)) {
                        y3.a((Object) t, j2, y3.d(t2, j2));
                        b((m2<T>) t, i2);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.b(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 3:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.b(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 4:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 5:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.b(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 6:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 7:
                    if (a((m2<T>) t2, i2)) {
                        y3.a(t, j2, y3.c(t2, j2));
                        b((m2<T>) t, i2);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a(t, j2, y3.f(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 9:
                case 17:
                    a(t, t2, i2);
                    break;
                case 10:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a(t, j2, y3.f(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 11:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 12:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 13:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 14:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.b(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 15:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.a(t2, j2));
                    b((m2<T>) t, i2);
                    break;
                case 16:
                    if (!a((m2<T>) t2, i2)) {
                        break;
                    }
                    y3.a((Object) t, j2, y3.b(t2, j2));
                    b((m2<T>) t, i2);
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
                    b3.a(this.q, t, t2, j2);
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
                    if (!a((m2<T>) t2, i3, i2)) {
                        break;
                    }
                    y3.a(t, j2, y3.f(t2, j2));
                    b((m2<T>) t, i3, i2);
                    break;
                case 60:
                case 68:
                    b(t, t2, i2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!a((m2<T>) t2, i3, i2)) {
                        break;
                    }
                    y3.a(t, j2, y3.f(t2, j2));
                    b((m2<T>) t, i3, i2);
                    break;
            }
        }
        if (this.f11492h) {
            return;
        }
        b3.a(this.o, t, t2);
        if (this.f11491g) {
            b3.a(this.p, t, t2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ce, code lost:
    
        if (r3 != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e6, code lost:
    
        r2 = (r2 * 53) + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00e2, code lost:
    
        r7 = r3.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e0, code lost:
    
        if (r3 != null) goto L68;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(T r9) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.c(java.lang.Object):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0127, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0211, code lost:
    
        r3 = (com.google.android.gms.internal.clearcut.k0.e(r3) + com.google.android.gms.internal.clearcut.k0.g(r5)) + r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x020d, code lost:
    
        r2.putInt(r20, r14, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0139, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x014b, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x015d, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x016f, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0181, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0193, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01a5, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01b6, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01c7, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01d8, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01e9, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01fa, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x020b, code lost:
    
        if (r19.f11493i != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0331, code lost:
    
        if ((r5 instanceof com.google.android.gms.internal.clearcut.y) != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0417, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x06b9, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.k0.c(r15, (com.google.android.gms.internal.clearcut.i2) r2.getObject(r20, r9), a(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0437, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x06e6, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.k0.h(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x043f, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x06f1, code lost:
    
        r9 = com.google.android.gms.internal.clearcut.k0.j(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x045f, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0716, code lost:
    
        r4 = r2.getObject(r20, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x071a, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.k0.c(r15, (com.google.android.gms.internal.clearcut.y) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0467, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0725, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.b3.a(r15, r2.getObject(r20, r9), a(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0477, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.clearcut.y) != false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0740, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.k0.b(r15, (java.lang.String) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x047f, code lost:
    
        if (a((com.google.android.gms.internal.clearcut.m2<T>) r20, r15, r3) != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x074c, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.k0.b(r15, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0517, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0601, code lost:
    
        r9 = (com.google.android.gms.internal.clearcut.k0.e(r15) + com.google.android.gms.internal.clearcut.k0.g(r4)) + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x05fd, code lost:
    
        r2.putInt(r20, r11, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0529, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x053b, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x054d, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x055f, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0571, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0583, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0595, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x05a6, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x05b7, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x05c8, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x05d9, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x05ea, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x05fb, code lost:
    
        if (r19.f11493i != false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x06b7, code lost:
    
        if ((r12 & r18) != 0) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x06e4, code lost:
    
        if ((r12 & r18) != 0) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x06ef, code lost:
    
        if ((r12 & r18) != 0) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0714, code lost:
    
        if ((r12 & r18) != 0) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0723, code lost:
    
        if ((r12 & r18) != 0) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x073d, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.clearcut.y) != false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x074a, code lost:
    
        if ((r12 & r18) != 0) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ab, code lost:
    
        if ((r5 instanceof com.google.android.gms.internal.clearcut.y) != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0334, code lost:
    
        r3 = com.google.android.gms.internal.clearcut.k0.b(r3, (java.lang.String) r5);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:263:0x040e. Please report as an issue. */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(T r20) {
        /*
            Method dump skipped, instructions count: 2294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.d(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.z2
    public final boolean e(T t) {
        int i2;
        int i3;
        boolean z;
        int[] iArr = this.f11494j;
        int i4 = 1;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int length = iArr.length;
        int i5 = 0;
        int i6 = -1;
        int i7 = 0;
        while (i5 < length) {
            int i8 = iArr[i5];
            int f2 = f(i8);
            int d2 = d(f2);
            if (this.f11492h) {
                i2 = i5;
                i3 = 0;
            } else {
                int i9 = this.f11485a[f2 + 2];
                int i10 = i9 & 1048575;
                i3 = i4 << (i9 >>> 20);
                if (i10 != i6) {
                    i2 = i5;
                    i7 = r.getInt(t, i10);
                    i6 = i10;
                } else {
                    i2 = i5;
                }
            }
            if (((268435456 & d2) != 0) && !a((m2<T>) t, f2, i7, i3)) {
                return false;
            }
            int i11 = (267386880 & d2) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (a((m2<T>) t, i8, f2) && !a(t, d2, a(f2))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 == 50 && !this.q.b(y3.f(t, d2 & 1048575)).isEmpty()) {
                            this.q.f(b(f2));
                            throw null;
                        }
                    }
                }
                List list = (List) y3.f(t, d2 & 1048575);
                if (!list.isEmpty()) {
                    z2 a2 = a(f2);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!a2.e(list.get(i12))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (!z) {
                    return false;
                }
            } else if (a((m2<T>) t, f2, i7, i3) && !a(t, d2, a(f2))) {
                return false;
            }
            i5 = i2 + 1;
            i4 = 1;
        }
        return !this.f11491g || this.p.a(t).d();
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final void f(T t) {
        int[] iArr = this.f11495k;
        if (iArr != null) {
            for (int i2 : iArr) {
                long d2 = d(i2) & 1048575;
                Object f2 = y3.f(t, d2);
                if (f2 != null) {
                    this.q.d(f2);
                    y3.a(t, d2, f2);
                }
            }
        }
        int[] iArr2 = this.f11496l;
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                this.n.a(t, i3);
            }
        }
        this.o.a(t);
        if (this.f11491g) {
            this.p.c(t);
        }
    }
}
