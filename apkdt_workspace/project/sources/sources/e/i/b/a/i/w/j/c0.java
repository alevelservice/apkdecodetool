package e.i.b.a.i.w.j;

/* compiled from: SQLiteEventStore_Factory.java */
/* loaded from: classes.dex */
public final class c0 implements com.google.android.datatransport.runtime.dagger.internal.b<b0> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17764a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17765b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<d> f17766c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<h0> f17767d;

    public c0(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<d> aVar3, javax.inject.a<h0> aVar4) {
        this.f17764a = aVar;
        this.f17765b = aVar2;
        this.f17766c = aVar3;
        this.f17767d = aVar4;
    }

    public static c0 a(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<d> aVar3, javax.inject.a<h0> aVar4) {
        return new c0(aVar, aVar2, aVar3, aVar4);
    }

    public static b0 a(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, Object obj, Object obj2) {
        return new b0(aVar, aVar2, (d) obj, (h0) obj2);
    }

    @Override // javax.inject.a
    public b0 get() {
        return a(this.f17764a.get(), this.f17765b.get(), this.f17766c.get(), this.f17767d.get());
    }
}
