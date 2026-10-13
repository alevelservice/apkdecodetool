package e.i.b.a.i;

import java.util.concurrent.Executor;

/* compiled from: ExecutionModule_ExecutorFactory.java */
/* loaded from: classes.dex */
public final class j implements com.google.android.datatransport.runtime.dagger.internal.b<Executor> {

    /* compiled from: ExecutionModule_ExecutorFactory.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final j f17697a = new j();
    }

    public static j a() {
        return a.f17697a;
    }

    public static Executor b() {
        Executor a2 = i.a();
        com.google.android.datatransport.runtime.dagger.internal.d.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // javax.inject.a
    public Executor get() {
        return b();
    }
}
