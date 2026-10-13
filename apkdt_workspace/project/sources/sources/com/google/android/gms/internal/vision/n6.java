package com.google.android.gms.internal.vision;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class n6 {

    /* renamed from: c, reason: collision with root package name */
    private static final n6 f12451c = new n6();

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, r6<?>> f12453b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    private final t6 f12452a = new q5();

    private n6() {
    }

    public static n6 a() {
        return f12451c;
    }

    public final <T> r6<T> a(Class<T> cls) {
        t4.a(cls, "messageType");
        r6<T> r6Var = (r6) this.f12453b.get(cls);
        if (r6Var != null) {
            return r6Var;
        }
        r6<T> a2 = this.f12452a.a(cls);
        t4.a(cls, "messageType");
        t4.a(a2, "schema");
        r6<T> r6Var2 = (r6) this.f12453b.putIfAbsent(cls, a2);
        return r6Var2 != null ? r6Var2 : a2;
    }

    public final <T> r6<T> a(T t) {
        return a((Class) t.getClass());
    }
}
