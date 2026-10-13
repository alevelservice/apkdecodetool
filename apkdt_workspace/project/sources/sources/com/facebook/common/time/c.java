package com.facebook.common.time;

/* compiled from: SystemClock.java */
/* loaded from: classes.dex */
public class c implements a {

    /* renamed from: a, reason: collision with root package name */
    private static final c f3540a = new c();

    private c() {
    }

    public static c a() {
        return f3540a;
    }

    @Override // com.facebook.common.time.a
    public long now() {
        return System.currentTimeMillis();
    }
}
