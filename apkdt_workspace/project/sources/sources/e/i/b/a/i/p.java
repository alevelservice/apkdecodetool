package e.i.b.a.i;

import e.i.b.a.i.l;

/* compiled from: TransportImpl.java */
/* loaded from: classes.dex */
final class p<T> implements e.i.b.a.f<T> {

    /* renamed from: a, reason: collision with root package name */
    private final m f17704a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17705b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.b f17706c;

    /* renamed from: d, reason: collision with root package name */
    private final e.i.b.a.e<T, byte[]> f17707d;

    /* renamed from: e, reason: collision with root package name */
    private final q f17708e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(m mVar, String str, e.i.b.a.b bVar, e.i.b.a.e<T, byte[]> eVar, q qVar) {
        this.f17704a = mVar;
        this.f17705b = str;
        this.f17706c = bVar;
        this.f17707d = eVar;
        this.f17708e = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Exception exc) {
    }

    @Override // e.i.b.a.f
    public void a(e.i.b.a.c<T> cVar) {
        a(cVar, o.a());
    }

    @Override // e.i.b.a.f
    public void a(e.i.b.a.c<T> cVar, e.i.b.a.h hVar) {
        q qVar = this.f17708e;
        l.a g2 = l.g();
        g2.a(this.f17704a);
        g2.a((e.i.b.a.c<?>) cVar);
        g2.a(this.f17705b);
        g2.a((e.i.b.a.e<?, byte[]>) this.f17707d);
        g2.a(this.f17706c);
        qVar.a(g2.a(), hVar);
    }
}
