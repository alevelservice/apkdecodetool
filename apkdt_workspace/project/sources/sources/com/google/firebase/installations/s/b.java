package com.google.firebase.installations.s;

/* compiled from: SystemClock.java */
/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    private static b f15133a;

    private b() {
    }

    public static b b() {
        if (f15133a == null) {
            f15133a = new b();
        }
        return f15133a;
    }

    @Override // com.google.firebase.installations.s.a
    public long a() {
        return System.currentTimeMillis();
    }
}
