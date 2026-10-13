package com.google.gson.internal.m;

import com.google.gson.internal.d;
import java.lang.reflect.AccessibleObject;

/* compiled from: ReflectionAccessor.java */
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private static final b f15466a;

    static {
        f15466a = d.b() < 9 ? new a() : new c();
    }

    public static b a() {
        return f15466a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
