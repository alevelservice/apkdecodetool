package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class fb1 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f6611a = d();

    /* renamed from: b, reason: collision with root package name */
    private static final vb1<?, ?> f6612b = a(false);

    /* renamed from: c, reason: collision with root package name */
    private static final vb1<?, ?> f6613c = a(true);

    /* renamed from: d, reason: collision with root package name */
    private static final vb1<?, ?> f6614d = new xb1();

    public static void a(Class<?> cls) {
        Class<?> cls2;
        if (!e91.class.isAssignableFrom(cls) && (cls2 = f6611a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void b(int i2, List<Float> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.n(i2, list, z);
    }

    public static void c(int i2, List<Long> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.d(i2, list, z);
    }

    public static void d(int i2, List<Long> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.k(i2, list, z);
    }

    public static void e(int i2, List<Long> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.j(i2, list, z);
    }

    public static void f(int i2, List<Long> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.i(i2, list, z);
    }

    public static void g(int i2, List<Long> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.e(i2, list, z);
    }

    public static void h(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.b(i2, list, z);
    }

    public static void i(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.g(i2, list, z);
    }

    public static void j(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.l(i2, list, z);
    }

    public static void k(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.f(i2, list, z);
    }

    public static void l(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.h(i2, list, z);
    }

    public static void m(int i2, List<Integer> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.c(i2, list, z);
    }

    public static void n(int i2, List<Boolean> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.a(i2, list, z);
    }

    public static void b(int i2, List<t71> list, tc1 tc1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.a(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.f(ca1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.f(list.get(i3).longValue());
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
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.k(g91Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.k(list.get(i3).intValue());
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
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.f(g91Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.f(list.get(i3).intValue());
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
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.g(g91Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.g(list.get(i3).intValue());
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
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.h(g91Var.a(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.h(list.get(i3).intValue());
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

    public static void a(int i2, List<Double> list, tc1 tc1Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.m(i2, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * m81.i(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * m81.g(i2, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * m81.b(i2, true);
    }

    public static void b(int i2, List<?> list, tc1 tc1Var, db1 db1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.a(i2, list, db1Var);
    }

    public static void a(int i2, List<String> list, tc1 tc1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.b(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.e(ca1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.e(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static void a(int i2, List<?> list, tc1 tc1Var, db1 db1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        tc1Var.b(i2, list, db1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return d(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            i2 = 0;
            while (i3 < size) {
                i2 += m81.d(ca1Var.getLong(i3));
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < size) {
                i2 += m81.d(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static vb1<?, ?> c() {
        return f6614d;
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
        return b(list) + (size * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * m81.e(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<t71> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = size * m81.e(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            e2 += m81.a(list.get(i3));
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
        int e2 = m81.e(i2) * size;
        if (list instanceof v91) {
            v91 v91Var = (v91) list;
            while (i3 < size) {
                Object l2 = v91Var.l(i3);
                if (l2 instanceof t71) {
                    a3 = m81.a((t71) l2);
                } else {
                    a3 = m81.a((String) l2);
                }
                e2 += a3;
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                if (obj instanceof t71) {
                    a2 = m81.a((t71) obj);
                } else {
                    a2 = m81.a((String) obj);
                }
                e2 += a2;
                i3++;
            }
        }
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, List<oa1> list, db1 db1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += m81.c(i2, list.get(i4), db1Var);
        }
        return i3;
    }

    public static vb1<?, ?> b() {
        return f6613c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, Object obj, db1 db1Var) {
        if (obj instanceof t91) {
            return m81.a(i2, (t91) obj);
        }
        return m81.b(i2, (oa1) obj, db1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, List<?> list, db1 db1Var) {
        int a2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = m81.e(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            if (obj instanceof t91) {
                a2 = m81.a((t91) obj);
            } else {
                a2 = m81.a((oa1) obj, db1Var);
            }
            e2 += a2;
        }
        return e2;
    }

    public static vb1<?, ?> a() {
        return f6612b;
    }

    private static vb1<?, ?> a(boolean z) {
        try {
            Class<?> e2 = e();
            if (e2 == null) {
                return null;
            }
            return (vb1) e2.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
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
    public static <T> void a(ha1 ha1Var, T t, T t2, long j2) {
        bc1.a(t, j2, ha1Var.a(bc1.f(t, j2), bc1.f(t2, j2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends v81<FT>> void a(s81<FT> s81Var, T t, T t2) {
        t81<FT> a2 = s81Var.a(t2);
        if (a2.f9533a.isEmpty()) {
            return;
        }
        s81Var.b(t).a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void a(vb1<UT, UB> vb1Var, T t, T t2) {
        vb1Var.a(t, vb1Var.c(vb1Var.d(t), vb1Var.d(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, List<Integer> list, k91 k91Var, UB ub, vb1<UT, UB> vb1Var) {
        UB ub2;
        int intValue;
        if (k91Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (k91Var.a(intValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) a(i2, intValue2, ub2, vb1Var);
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
                    if (!k91Var.a(intValue)) {
                        break;
                    }
                }
                ub = (UB) a(i2, intValue, ub2, vb1Var);
                it.remove();
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB a(int i2, int i3, UB ub, vb1<UT, UB> vb1Var) {
        if (ub == null) {
            ub = vb1Var.a();
        }
        vb1Var.a((vb1<UT, UB>) ub, i2, i3);
        return ub;
    }
}
