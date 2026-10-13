package e.i.b.a.i.w;

/* compiled from: SchedulingConfigModule_ConfigFactory.java */
/* loaded from: classes.dex */
public final class g implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17737a;

    public g(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar) {
        this.f17737a = aVar;
    }

    public static g a(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar) {
        return new g(aVar);
    }

    public static com.google.android.datatransport.runtime.scheduling.jobscheduling.g a(com.google.android.datatransport.runtime.time.a aVar) {
        com.google.android.datatransport.runtime.scheduling.jobscheduling.g a2 = f.a(aVar);
        com.google.android.datatransport.runtime.dagger.internal.d.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // javax.inject.a
    public com.google.android.datatransport.runtime.scheduling.jobscheduling.g get() {
        return a(this.f17737a.get());
    }
}
