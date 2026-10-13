package com.alibaba.fastjson.c;

/* compiled from: AfterFilter.java */
/* loaded from: classes.dex */
public abstract class a implements b0 {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<p> f3220a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<Character> f3221b = new ThreadLocal<>();

    static {
        Character.valueOf(',');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char a(p pVar, Object obj, char c2) {
        f3220a.set(pVar);
        f3221b.set(Character.valueOf(c2));
        a(obj);
        f3220a.set(null);
        return f3221b.get().charValue();
    }

    public abstract void a(Object obj);
}
