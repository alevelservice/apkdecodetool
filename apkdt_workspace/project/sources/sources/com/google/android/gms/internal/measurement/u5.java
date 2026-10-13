package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u5 {

    /* renamed from: c, reason: collision with root package name */
    private static final u5 f12123c = new u5();

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, y5<?>> f12125b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    private final c6 f12124a = new y4();

    private u5() {
    }

    public static u5 a() {
        return f12123c;
    }

    public final <T> y5<T> a(Class<T> cls) {
        c4.a(cls, "messageType");
        y5<T> y5Var = (y5) this.f12125b.get(cls);
        if (y5Var != null) {
            return y5Var;
        }
        y5<T> a2 = this.f12124a.a(cls);
        c4.a(cls, "messageType");
        c4.a(a2, "schema");
        y5<T> y5Var2 = (y5) this.f12125b.putIfAbsent(cls, a2);
        return y5Var2 != null ? y5Var2 : a2;
    }

    public final <T> y5<T> a(T t) {
        return a((Class) t.getClass());
    }
}
