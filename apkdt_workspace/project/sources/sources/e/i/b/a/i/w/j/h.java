package e.i.b.a.i.w.j;

/* compiled from: EventStoreModule_StoreConfigFactory.java */
/* loaded from: classes.dex */
public final class h implements com.google.android.datatransport.runtime.dagger.internal.b<d> {

    /* compiled from: EventStoreModule_StoreConfigFactory.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final h f17775a = new h();
    }

    public static h a() {
        return a.f17775a;
    }

    public static d b() {
        d c2 = e.c();
        com.google.android.datatransport.runtime.dagger.internal.d.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    @Override // javax.inject.a
    public d get() {
        return b();
    }
}
