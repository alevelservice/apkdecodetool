package e.f.i.c;

/* compiled from: InstrumentedMemoryCache.java */
/* loaded from: classes.dex */
public class o<K, V> implements p<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final p<K, V> f17567a;

    /* renamed from: b, reason: collision with root package name */
    private final r f17568b;

    public o(p<K, V> pVar, r rVar) {
        this.f17567a = pVar;
        this.f17568b = rVar;
    }

    @Override // e.f.i.c.p
    public e.f.c.g.a<V> a(K k2, e.f.c.g.a<V> aVar) {
        this.f17568b.a();
        return this.f17567a.a(k2, aVar);
    }

    @Override // e.f.i.c.p
    public e.f.c.g.a<V> get(K k2) {
        e.f.c.g.a<V> aVar = this.f17567a.get(k2);
        if (aVar == null) {
            this.f17568b.b();
        } else {
            this.f17568b.a(k2);
        }
        return aVar;
    }
}
