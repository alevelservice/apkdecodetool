package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class a6 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11744a = d();

    /* renamed from: b, reason: collision with root package name */
    private static final r6<?, ?> f11745b = a(false);

    /* renamed from: c, reason: collision with root package name */
    private static final r6<?, ?> f11746c = a(true);

    /* renamed from: d, reason: collision with root package name */
    private static final r6<?, ?> f11747d = new t6();

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!b4.class.isAssignableFrom(cls) && (cls2 = f11744a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void b(int i2, List<Float> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.n(i2, list, z);
    }

    public static void c(int i2, List<Long> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.d(i2, list, z);
    }

    public static void d(int i2, List<Long> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.k(i2, list, z);
    }

    public static void e(int i2, List<Long> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.j(i2, list, z);
    }

    public static void f(int i2, List<Long> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.i(i2, list, z);
    }

    public static void g(int i2, List<Long> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.e(i2, list, z);
    }

    public static void h(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.b(i2, list, z);
    }

    public static void i(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.g(i2, list, z);
    }

    public static void j(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.l(i2, list, z);
    }

    public static void k(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.f(i2, list, z);
    }

    public static void l(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.h(i2, list, z);
    }

    public static void m(int i2, List<Integer> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.c(i2, list, z);
    }

    public static void n(int i2, List<Boolean> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.a(i2, list, z);
    }

    public static void b(int i2, List<t2> list, p7 p7Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.a(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return h(list) + (size * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.d(z4Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.d(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.e(z4Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.e(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.f(z4Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.f(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.k(d4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.k(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.f(d4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.f(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.g(d4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.g(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static void a(int i2, List<Double> list, p7 p7Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.m(i2, list, z);
    }

    public static void b(int i2, List<?> list, p7 p7Var, y5 y5Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.b(i2, list, y5Var);
    }

    public static void a(int i2, List<String> list, p7 p7Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.b(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<?> list) {
        return list.size() << 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * i3.e(i2));
    }

    public static r6<?, ?> c() {
        return f11747d;
    }

    private static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(int i2, List<?> list, p7 p7Var, y5 y5Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p7Var.a(i2, list, y5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return i(list) + (size * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return j(list) + (size * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return a(list) + (size * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * i3.i(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * i3.g(i2, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * i3.b(i2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return e(list) + (list.size() * i3.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<?> list) {
        return list.size() << 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<t2> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = size * i3.e(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            e2 += i3.a(list.get(i3));
        }
        return e2;
    }

    private static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += i3.h(d4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += i3.h(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<k5> list, y5 y5Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += i3.c(i2, list.get(i4), y5Var);
        }
        return i3;
    }

    public static r6<?, ?> b() {
        return f11746c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list) {
        int a2;
        int a3;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int e2 = i3.e(i2) * size;
        if (list instanceof s4) {
            s4 s4Var = (s4) list;
            while (i3 < size) {
                Object k2 = s4Var.k(i3);
                if (k2 instanceof t2) {
                    a3 = i3.a((t2) k2);
                } else {
                    a3 = i3.a((String) k2);
                }
                e2 += a3;
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                if (obj instanceof t2) {
                    a2 = i3.a((t2) obj);
                } else {
                    a2 = i3.a((String) obj);
                }
                e2 += a2;
                i3++;
            }
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, Object obj, y5 y5Var) {
        if (obj instanceof q4) {
            return i3.a(i2, (q4) obj);
        }
        return i3.b(i2, (k5) obj, y5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list, y5 y5Var) {
        int a2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = i3.e(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            if (obj instanceof q4) {
                a2 = i3.a((q4) obj);
            } else {
                a2 = i3.a((k5) obj, y5Var);
            }
            e2 += a2;
        }
        return e2;
    }

    public static r6<?, ?> a() {
        return f11745b;
    }

    private static r6<?, ?> a(boolean z) {
        try {
            Class<?> e2 = e();
            if (e2 == null) {
                return null;
            }
            return (r6) e2.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void a(d5 d5Var, T t, T t2, long j2) {
        x6.a(t, j2, d5Var.a(x6.f(t, j2), x6.f(t2, j2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends t3<FT>> void a(q3<FT> q3Var, T t, T t2) {
        r3<FT> a2 = q3Var.a(t2);
        if (a2.f12068a.isEmpty()) {
            return;
        }
        q3Var.b(t).a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(r6<UT, UB> r6Var, T t, T t2) {
        r6Var.a(t, r6Var.c(r6Var.d(t), r6Var.d(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, List<Integer> list, h4 h4Var, UB ub, r6<UT, UB> r6Var) {
        UB ub2;
        int intValue;
        if (h4Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (h4Var.a(intValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) a(i2, intValue2, ub2, r6Var);
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
                    if (!h4Var.a(intValue)) {
                        break;
                    }
                }
                ub = (UB) a(i2, intValue, ub2, r6Var);
                it.remove();
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, int i3, UB ub, r6<UT, UB> r6Var) {
        if (ub == null) {
            ub = r6Var.a();
        }
        r6Var.a((r6<UT, UB>) ub, i2, i3);
        return ub;
    }
}
