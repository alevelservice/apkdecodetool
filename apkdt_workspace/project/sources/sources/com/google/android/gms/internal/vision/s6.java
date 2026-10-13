package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class s6 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f12526a = d();

    /* renamed from: b, reason: collision with root package name */
    private static final i7<?, ?> f12527b = a(false);

    /* renamed from: c, reason: collision with root package name */
    private static final i7<?, ?> f12528c = a(true);

    /* renamed from: d, reason: collision with root package name */
    private static final i7<?, ?> f12529d = new k7();

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!s4.class.isAssignableFrom(cls) && (cls2 = f12526a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void b(int i2, List<Float> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.n(i2, list, z);
    }

    public static void c(int i2, List<Long> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.d(i2, list, z);
    }

    public static void d(int i2, List<Long> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.k(i2, list, z);
    }

    public static void e(int i2, List<Long> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.j(i2, list, z);
    }

    public static void f(int i2, List<Long> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.i(i2, list, z);
    }

    public static void g(int i2, List<Long> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.e(i2, list, z);
    }

    public static void h(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.b(i2, list, z);
    }

    public static void i(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.g(i2, list, z);
    }

    public static void j(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.l(i2, list, z);
    }

    public static void k(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.f(i2, list, z);
    }

    public static void l(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.h(i2, list, z);
    }

    public static void m(int i2, List<Integer> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.c(i2, list, z);
    }

    public static void n(int i2, List<Boolean> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.a(i2, list, z);
    }

    public static void b(int i2, List<j3> list, e8 e8Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.a(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r5) {
            r5 r5Var = (r5) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.g(r5Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.g(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u4) {
            u4 u4Var = (u4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.k(u4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.k(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u4) {
            u4 u4Var = (u4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.f(u4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.f(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u4) {
            u4 u4Var = (u4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.g(u4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.g(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u4) {
            u4 u4Var = (u4) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.h(u4Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.h(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(List<?> list) {
        return list.size() << 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() << 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(List<?> list) {
        return list.size();
    }

    public static void a(int i2, List<Double> list, e8 e8Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.m(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * a4.i(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * a4.g(i2, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * a4.b(i2, true);
    }

    public static void b(int i2, List<?> list, e8 e8Var, r6 r6Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.a(i2, list, r6Var);
    }

    public static void a(int i2, List<String> list, e8 e8Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.b(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r5) {
            r5 r5Var = (r5) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.f(r5Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.f(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static void a(int i2, List<?> list, e8 e8Var, r6 r6Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        e8Var.b(i2, list, r6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return d(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r5) {
            r5 r5Var = (r5) list;
            i2 = 0;
            while (i3 < size) {
                i2 += a4.e(r5Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += a4.e(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static i7<?, ?> c() {
        return f12529d;
    }

    private static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b(list) + (size * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * a4.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<j3> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = size * a4.e(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            e2 += a4.a(list.get(i3));
        }
        return e2;
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
        int e2 = a4.e(i2) * size;
        if (list instanceof k5) {
            k5 k5Var = (k5) list;
            while (i3 < size) {
                Object j2 = k5Var.j(i3);
                if (j2 instanceof j3) {
                    a3 = a4.a((j3) j2);
                } else {
                    a3 = a4.a((String) j2);
                }
                e2 += a3;
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                if (obj instanceof j3) {
                    a2 = a4.a((j3) obj);
                } else {
                    a2 = a4.a((String) obj);
                }
                e2 += a2;
                i3++;
            }
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<d6> list, r6 r6Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += a4.c(i2, list.get(i4), r6Var);
        }
        return i3;
    }

    public static i7<?, ?> b() {
        return f12528c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, Object obj, r6 r6Var) {
        if (obj instanceof i5) {
            return a4.a(i2, (i5) obj);
        }
        return a4.b(i2, (d6) obj, r6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list, r6 r6Var) {
        int a2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = a4.e(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            if (obj instanceof i5) {
                a2 = a4.a((i5) obj);
            } else {
                a2 = a4.a((d6) obj, r6Var);
            }
            e2 += a2;
        }
        return e2;
    }

    public static i7<?, ?> a() {
        return f12527b;
    }

    private static i7<?, ?> a(boolean z) {
        try {
            Class<?> e2 = e();
            if (e2 == null) {
                return null;
            }
            return (i7) e2.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
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
    public static <T> void a(w5 w5Var, T t, T t2, long j2) {
        o7.a(t, j2, w5Var.b(o7.f(t, j2), o7.f(t2, j2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends k4<FT>> void a(f4<FT> f4Var, T t, T t2) {
        i4<FT> a2 = f4Var.a(t2);
        if (a2.f12380a.isEmpty()) {
            return;
        }
        f4Var.b(t).a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(i7<UT, UB> i7Var, T t, T t2) {
        i7Var.a(t, i7Var.c(i7Var.c(t), i7Var.c(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, List<Integer> list, v4<?> v4Var, UB ub, i7<UT, UB> i7Var) {
        UB ub2;
        int intValue;
        if (v4Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (v4Var.a(intValue2) != null) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) a(i2, intValue2, ub2, i7Var);
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
                    if (v4Var.a(intValue) == null) {
                        break;
                    }
                }
                ub = (UB) a(i2, intValue, ub2, i7Var);
                it.remove();
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, List<Integer> list, y4 y4Var, UB ub, i7<UT, UB> i7Var) {
        UB ub2;
        int intValue;
        if (y4Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (y4Var.a(intValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) a(i2, intValue2, ub2, i7Var);
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
                    if (!y4Var.a(intValue)) {
                        break;
                    }
                }
                ub = (UB) a(i2, intValue, ub2, i7Var);
                it.remove();
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, int i3, UB ub, i7<UT, UB> i7Var) {
        if (ub == null) {
            ub = i7Var.a();
        }
        i7Var.a(ub, i2, i3);
        return ub;
    }
}
