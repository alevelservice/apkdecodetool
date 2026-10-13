package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class b3 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11369a = d();

    /* renamed from: b, reason: collision with root package name */
    private static final r3<?, ?> f11370b = a(false);

    /* renamed from: c, reason: collision with root package name */
    private static final r3<?, ?> f11371c = a(true);

    /* renamed from: d, reason: collision with root package name */
    private static final r3<?, ?> f11372d = new t3();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, Object obj, z2 z2Var) {
        return obj instanceof q1 ? k0.a(i2, (q1) obj) : k0.b(i2, (i2) obj, z2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list) {
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int e2 = k0.e(i2) * size;
        if (list instanceof s1) {
            s1 s1Var = (s1) list;
            while (i3 < size) {
                Object j2 = s1Var.j(i3);
                e2 += j2 instanceof y ? k0.a((y) j2) : k0.a((String) j2);
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                e2 += obj instanceof y ? k0.a((y) obj) : k0.a((String) obj);
                i3++;
            }
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list, z2 z2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = k0.e(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            e2 += obj instanceof q1 ? k0.a((q1) obj) : k0.a((i2) obj, z2Var);
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x1) {
            x1 x1Var = (x1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.d(x1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.d(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static r3<?, ?> a() {
        return f11370b;
    }

    private static r3<?, ?> a(boolean z) {
        try {
            Class<?> e2 = e();
            if (e2 == null) {
                return null;
            }
            return (r3) e2.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static <UT, UB> UB a(int i2, int i3, UB ub, r3<UT, UB> r3Var) {
        if (ub == null) {
            ub = r3Var.a();
        }
        r3Var.a(ub, i2, i3);
        return ub;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, List<Integer> list, h1<?> h1Var, UB ub, r3<UT, UB> r3Var) {
        UB ub2;
        int intValue;
        if (h1Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (h1Var.a(intValue2) != null) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) a(i2, intValue2, ub2, r3Var);
                }
            }
            if (i3 != size) {
                list.subList(i3, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            loop1: while (true) {
                ub2 = ub;
                while (it.hasNext()) {
                    intValue = it.next().intValue();
                    if (h1Var.a(intValue) == null) {
                        break;
                    }
                }
                ub = (UB) a(i2, intValue, ub2, r3Var);
                it.remove();
            }
        }
        return ub2;
    }

    public static void a(int i2, List<String> list, m4 m4Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.b(i2, list);
    }

    public static void a(int i2, List<?> list, m4 m4Var, z2 z2Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.b(i2, list, z2Var);
    }

    public static void a(int i2, List<Double> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.m(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void a(d2 d2Var, T t, T t2, long j2) {
        y3.a(t, j2, d2Var.a(y3.f(t, j2), y3.f(t2, j2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends x0<FT>> void a(q0<FT> q0Var, T t, T t2) {
        u0<FT> a2 = q0Var.a(t2);
        if (a2.b()) {
            return;
        }
        q0Var.b(t).a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(r3<UT, UB> r3Var, T t, T t2) {
        r3Var.a(t, r3Var.c(r3Var.c(t), r3Var.c(t2)));
    }

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!d1.class.isAssignableFrom(cls) && (cls2 = f11369a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean a(int i2, int i3, int i4) {
        if (i3 < 40) {
            return true;
        }
        long j2 = i4;
        return ((((long) i3) - ((long) i2)) + 1) + 9 <= ((2 * j2) + 3) + ((j2 + 3) * 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<y> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = size * k0.e(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            e2 += k0.a(list.get(i3));
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<i2> list, z2 z2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += k0.c(i2, list.get(i4), z2Var);
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x1) {
            x1 x1Var = (x1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.e(x1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.e(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static r3<?, ?> b() {
        return f11371c;
    }

    public static void b(int i2, List<y> list, m4 m4Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.a(i2, list);
    }

    public static void b(int i2, List<?> list, m4 m4Var, z2 z2Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.a(i2, list, z2Var);
    }

    public static void b(int i2, List<Float> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.n(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x1) {
            x1 x1Var = (x1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.f(x1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.f(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static r3<?, ?> c() {
        return f11372d;
    }

    public static void c(int i2, List<Long> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.d(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return d(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof e1) {
            e1 e1Var = (e1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.k(e1Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.k(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    private static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void d(int i2, List<Long> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.k(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof e1) {
            e1 e1Var = (e1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.f(e1Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.f(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    private static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void e(int i2, List<Long> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.j(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof e1) {
            e1 e1Var = (e1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.g(e1Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.g(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static void f(int i2, List<Long> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.i(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * k0.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof e1) {
            e1 e1Var = (e1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += k0.h(e1Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += k0.h(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static void g(int i2, List<Long> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.e(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * k0.i(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(List<?> list) {
        return list.size() << 2;
    }

    public static void h(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.b(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * k0.g(i2, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() << 3;
    }

    public static void i(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.g(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * k0.b(i2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(List<?> list) {
        return list.size();
    }

    public static void j(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.l(i2, list, z);
    }

    public static void k(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.f(i2, list, z);
    }

    public static void l(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.h(i2, list, z);
    }

    public static void m(int i2, List<Integer> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.c(i2, list, z);
    }

    public static void n(int i2, List<Boolean> list, m4 m4Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        m4Var.a(i2, list, z);
    }
}
