package com.alibaba.fastjson.c;

/* compiled from: BeforeFilter.java */
/* loaded from: classes.dex */
public abstract class g implements b0 {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<p> f3239a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<Character> f3240b = new ThreadLocal<>();

    static {
        Character.valueOf(',');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char a(p pVar, Object obj, char c2) {
        f3239a.set(pVar);
        f3240b.set(Character.valueOf(c2));
        a(obj);
        f3239a.set(null);
        return f3240b.get().charValue();
    }

    public abstract void a(Object obj);
}
