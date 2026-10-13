package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;

/* loaded from: classes.dex */
final class c1 implements h2 {

    /* renamed from: a, reason: collision with root package name */
    private static final c1 f11374a = new c1();

    private c1() {
    }

    public static c1 a() {
        return f11374a;
    }

    @Override // com.google.android.gms.internal.clearcut.h2
    public final g2 a(Class<?> cls) {
        if (!d1.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (g2) d1.a(cls.asSubclass(d1.class)).a(d1.e.f11392c, (Object) null, (Object) null);
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.h2
    public final boolean b(Class<?> cls) {
        return d1.class.isAssignableFrom(cls);
    }
}
