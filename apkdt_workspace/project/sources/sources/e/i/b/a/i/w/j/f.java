package e.i.b.a.i.w.j;

/* compiled from: EventStoreModule_DbNameFactory.java */
/* loaded from: classes.dex */
public final class f implements com.google.android.datatransport.runtime.dagger.internal.b<String> {

    /* compiled from: EventStoreModule_DbNameFactory.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final f f17771a = new f();
    }

    public static f a() {
        return a.f17771a;
    }

    public static String b() {
        String a2 = e.a();
        com.google.android.datatransport.runtime.dagger.internal.d.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // javax.inject.a
    public String get() {
        return b();
    }
}
