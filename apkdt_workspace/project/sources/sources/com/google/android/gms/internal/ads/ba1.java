package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class ba1 implements gb1 {

    /* renamed from: b, reason: collision with root package name */
    private static final la1 f5738b = new fa1();

    /* renamed from: a, reason: collision with root package name */
    private final la1 f5739a;

    public ba1() {
        this(new ea1(b91.a(), a()));
    }

    @Override // com.google.android.gms.internal.ads.gb1
    public final <T> db1<T> a(Class<T> cls) {
        fb1.a((Class<?>) cls);
        ma1 a2 = this.f5739a.a(cls);
        if (a2.b()) {
            if (e91.class.isAssignableFrom(cls)) {
                return ta1.a(fb1.c(), u81.b(), a2.c());
            }
            return ta1.a(fb1.a(), u81.c(), a2.c());
        }
        if (e91.class.isAssignableFrom(cls)) {
            if (a(a2)) {
                return ra1.a(cls, a2, xa1.b(), y91.b(), fb1.c(), u81.b(), ja1.b());
            }
            return ra1.a(cls, a2, xa1.b(), y91.b(), fb1.c(), (s81<?>) null, ja1.b());
        }
        if (a(a2)) {
            return ra1.a(cls, a2, xa1.a(), y91.a(), fb1.a(), u81.c(), ja1.a());
        }
        return ra1.a(cls, a2, xa1.a(), y91.a(), fb1.b(), (s81<?>) null, ja1.a());
    }

    private ba1(la1 la1Var) {
        f91.a(la1Var, "messageInfoFactory");
        this.f5739a = la1Var;
    }

    private static boolean a(ma1 ma1Var) {
        return ma1Var.a() == e91.d.f6380i;
    }

    private static la1 a() {
        try {
            return (la1) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f5738b;
        }
    }
}
