package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class b91 implements la1 {

    /* renamed from: a, reason: collision with root package name */
    private static final b91 f5735a = new b91();

    private b91() {
    }

    public static b91 a() {
        return f5735a;
    }

    @Override // com.google.android.gms.internal.ads.la1
    public final boolean b(Class<?> cls) {
        return e91.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.la1
    public final ma1 a(Class<?> cls) {
        if (!e91.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (ma1) e91.a(cls.asSubclass(e91.class)).a(e91.d.f6374c, (Object) null, (Object) null);
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
        }
    }
}
