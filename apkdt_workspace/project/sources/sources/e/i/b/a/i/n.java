package e.i.b.a.i;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransportFactoryImpl.java */
/* loaded from: classes.dex */
public final class n implements e.i.b.a.g {

    /* renamed from: a, reason: collision with root package name */
    private final Set<e.i.b.a.b> f17700a;

    /* renamed from: b, reason: collision with root package name */
    private final m f17701b;

    /* renamed from: c, reason: collision with root package name */
    private final q f17702c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Set<e.i.b.a.b> set, m mVar, q qVar) {
        this.f17700a = set;
        this.f17701b = mVar;
        this.f17702c = qVar;
    }

    @Override // e.i.b.a.g
    public <T> e.i.b.a.f<T> a(String str, Class<T> cls, e.i.b.a.b bVar, e.i.b.a.e<T, byte[]> eVar) {
        if (this.f17700a.contains(bVar)) {
            return new p(this.f17701b, str, bVar, eVar, this.f17702c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f17700a));
    }
}
