package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class q5 implements t6 {

    /* renamed from: b, reason: collision with root package name */
    private static final a6 f12486b = new t5();

    /* renamed from: a, reason: collision with root package name */
    private final a6 f12487a;

    public q5() {
        this(new s5(q4.a(), a()));
    }

    @Override // com.google.android.gms.internal.vision.t6
    public final <T> r6<T> a(Class<T> cls) {
        s6.a((Class<?>) cls);
        b6 a2 = this.f12487a.a(cls);
        if (a2.a()) {
            if (s4.class.isAssignableFrom(cls)) {
                return i6.a(s6.c(), j4.b(), a2.c());
            }
            return i6.a(s6.a(), j4.c(), a2.c());
        }
        if (s4.class.isAssignableFrom(cls)) {
            if (a(a2)) {
                return g6.a(cls, a2, m6.b(), n5.b(), s6.c(), j4.b(), y5.b());
            }
            return g6.a(cls, a2, m6.b(), n5.b(), s6.c(), (f4<?>) null, y5.b());
        }
        if (a(a2)) {
            return g6.a(cls, a2, m6.a(), n5.a(), s6.a(), j4.c(), y5.a());
        }
        return g6.a(cls, a2, m6.a(), n5.a(), s6.b(), (f4<?>) null, y5.a());
    }

    private q5(a6 a6Var) {
        t4.a(a6Var, "messageInfoFactory");
        this.f12487a = a6Var;
    }

    private static boolean a(b6 b6Var) {
        return b6Var.b() == s4.e.f12519i;
    }

    private static a6 a() {
        try {
            return (a6) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f12486b;
        }
    }
}
