package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y1 implements a3 {

    /* renamed from: b, reason: collision with root package name */
    private static final h2 f11622b = new z1();

    /* renamed from: a, reason: collision with root package name */
    private final h2 f11623a;

    public y1() {
        this(new a2(c1.a(), a()));
    }

    private y1(h2 h2Var) {
        f1.a(h2Var, "messageInfoFactory");
        this.f11623a = h2Var;
    }

    private static h2 a() {
        try {
            return (h2) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f11622b;
        }
    }

    private static boolean a(g2 g2Var) {
        return g2Var.a() == d1.e.f11398i;
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final <T> z2<T> a(Class<T> cls) {
        b3.a((Class<?>) cls);
        g2 a2 = this.f11623a.a(cls);
        if (a2.b()) {
            return d1.class.isAssignableFrom(cls) ? n2.a(b3.c(), t0.b(), a2.c()) : n2.a(b3.a(), t0.c(), a2.c());
        }
        if (!d1.class.isAssignableFrom(cls)) {
            boolean a3 = a(a2);
            p2 a4 = r2.a();
            t1 a5 = t1.a();
            return a3 ? m2.a(cls, a2, a4, a5, b3.a(), t0.c(), f2.a()) : m2.a(cls, a2, a4, a5, b3.b(), (q0<?>) null, f2.a());
        }
        boolean a6 = a(a2);
        p2 b2 = r2.b();
        t1 b3 = t1.b();
        r3<?, ?> c2 = b3.c();
        return a6 ? m2.a(cls, a2, b2, b3, c2, t0.b(), f2.b()) : m2.a(cls, a2, b2, b3, c2, (q0<?>) null, f2.b());
    }
}
