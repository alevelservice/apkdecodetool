package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class ya1 {

    /* renamed from: c, reason: collision with root package name */
    private static final ya1 f10523c = new ya1();

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, db1<?>> f10525b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    private final gb1 f10524a = new ba1();

    private ya1() {
    }

    public static ya1 a() {
        return f10523c;
    }

    public final <T> db1<T> a(Class<T> cls) {
        f91.a(cls, "messageType");
        db1<T> db1Var = (db1) this.f10525b.get(cls);
        if (db1Var != null) {
            return db1Var;
        }
        db1<T> a2 = this.f10524a.a(cls);
        f91.a(cls, "messageType");
        f91.a(a2, "schema");
        db1<T> db1Var2 = (db1) this.f10525b.putIfAbsent(cls, a2);
        return db1Var2 != null ? db1Var2 : a2;
    }

    public final <T> db1<T> a(T t) {
        return a((Class) t.getClass());
    }
}
