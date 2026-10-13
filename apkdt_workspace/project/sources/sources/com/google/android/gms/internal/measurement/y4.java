package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y4 implements c6 {

    /* renamed from: b, reason: collision with root package name */
    private static final h5 f12218b = new b5();

    /* renamed from: a, reason: collision with root package name */
    private final h5 f12219a;

    public y4() {
        this(new a5(z3.a(), a()));
    }

    @Override // com.google.android.gms.internal.measurement.c6
    public final <T> y5<T> a(Class<T> cls) {
        a6.a((Class<?>) cls);
        i5 a2 = this.f12219a.a(cls);
        if (a2.b()) {
            if (b4.class.isAssignableFrom(cls)) {
                return p5.a(a6.c(), s3.b(), a2.a());
            }
            return p5.a(a6.a(), s3.c(), a2.a());
        }
        if (b4.class.isAssignableFrom(cls)) {
            if (a(a2)) {
                return n5.a(cls, a2, t5.b(), v4.b(), a6.c(), s3.b(), f5.b());
            }
            return n5.a(cls, a2, t5.b(), v4.b(), a6.c(), (q3<?>) null, f5.b());
        }
        if (a(a2)) {
            return n5.a(cls, a2, t5.a(), v4.a(), a6.a(), s3.c(), f5.a());
        }
        return n5.a(cls, a2, t5.a(), v4.a(), a6.b(), (q3<?>) null, f5.a());
    }

    private y4(h5 h5Var) {
        c4.a(h5Var, "messageInfoFactory");
        this.f12219a = h5Var;
    }

    private static boolean a(i5 i5Var) {
        return i5Var.c() == b4.d.f11773i;
    }

    private static h5 a() {
        try {
            return (h5) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f12218b;
        }
    }
}
