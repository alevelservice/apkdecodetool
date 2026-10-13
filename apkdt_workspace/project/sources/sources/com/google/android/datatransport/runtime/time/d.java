package com.google.android.datatransport.runtime.time;

/* compiled from: TimeModule_UptimeClockFactory.java */
/* loaded from: classes.dex */
public final class d implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.time.a> {

    /* compiled from: TimeModule_UptimeClockFactory.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final d f4452a = new d();
    }

    public static d a() {
        return a.f4452a;
    }

    public static com.google.android.datatransport.runtime.time.a b() {
        com.google.android.datatransport.runtime.time.a b2 = b.b();
        com.google.android.datatransport.runtime.dagger.internal.d.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // javax.inject.a
    public com.google.android.datatransport.runtime.time.a get() {
        return b();
    }
}
