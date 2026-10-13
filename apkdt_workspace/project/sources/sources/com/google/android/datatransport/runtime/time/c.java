package com.google.android.datatransport.runtime.time;

/* compiled from: TimeModule_EventClockFactory.java */
/* loaded from: classes.dex */
public final class c implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.time.a> {

    /* compiled from: TimeModule_EventClockFactory.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final c f4451a = new c();
    }

    public static c a() {
        return a.f4451a;
    }

    public static com.google.android.datatransport.runtime.time.a b() {
        com.google.android.datatransport.runtime.time.a a2 = b.a();
        com.google.android.datatransport.runtime.dagger.internal.d.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // javax.inject.a
    public com.google.android.datatransport.runtime.time.a get() {
        return b();
    }
}
