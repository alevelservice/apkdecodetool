package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class q4 implements a6 {

    /* renamed from: a, reason: collision with root package name */
    private static final q4 f12485a = new q4();

    private q4() {
    }

    public static q4 a() {
        return f12485a;
    }

    @Override // com.google.android.gms.internal.vision.a6
    public final boolean b(Class<?> cls) {
        return s4.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.vision.a6
    public final b6 a(Class<?> cls) {
        if (!s4.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (b6) s4.a(cls.asSubclass(s4.class)).a(s4.e.f12513c, (Object) null, (Object) null);
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
        }
    }
}
