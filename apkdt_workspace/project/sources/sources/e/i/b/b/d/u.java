package e.i.b.b.d;

/* loaded from: classes.dex */
final class u implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17884e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ t f17885f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar, h hVar) {
        this.f17885f = tVar;
        this.f17884e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        d dVar;
        d dVar2;
        obj = this.f17885f.f17882b;
        synchronized (obj) {
            dVar = this.f17885f.f17883c;
            if (dVar != null) {
                dVar2 = this.f17885f.f17883c;
                dVar2.a(this.f17884e.a());
            }
        }
    }
}
