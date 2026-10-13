package com.google.android.gms.internal.clearcut;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u2 {

    /* renamed from: c, reason: collision with root package name */
    private static final u2 f11572c = new u2();

    /* renamed from: a, reason: collision with root package name */
    private final a3 f11573a;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, z2<?>> f11574b = new ConcurrentHashMap();

    private u2() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        a3 a3Var = null;
        for (int i2 = 0; i2 <= 0; i2++) {
            a3Var = a(strArr[0]);
            if (a3Var != null) {
                break;
            }
        }
        this.f11573a = a3Var == null ? new y1() : a3Var;
    }

    private static a3 a(String str) {
        try {
            return (a3) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static u2 a() {
        return f11572c;
    }

    public final <T> z2<T> a(Class<T> cls) {
        f1.a(cls, "messageType");
        z2<T> z2Var = (z2) this.f11574b.get(cls);
        if (z2Var != null) {
            return z2Var;
        }
        z2<T> a2 = this.f11573a.a(cls);
        f1.a(cls, "messageType");
        f1.a(a2, "schema");
        z2<T> z2Var2 = (z2) this.f11574b.putIfAbsent(cls, a2);
        return z2Var2 != null ? z2Var2 : a2;
    }

    public final <T> z2<T> a(T t) {
        return a((Class) t.getClass());
    }
}
