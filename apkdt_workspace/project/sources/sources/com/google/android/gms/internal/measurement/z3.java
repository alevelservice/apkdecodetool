package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
final class z3 implements h5 {

    /* renamed from: a, reason: collision with root package name */
    private static final z3 f12233a = new z3();

    private z3() {
    }

    public static z3 a() {
        return f12233a;
    }

    @Override // com.google.android.gms.internal.measurement.h5
    public final boolean b(Class<?> cls) {
        return b4.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.h5
    public final i5 a(Class<?> cls) {
        if (!b4.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (i5) b4.a(cls.asSubclass(b4.class)).a(b4.d.f11767c, (Object) null, (Object) null);
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
        }
    }
}
