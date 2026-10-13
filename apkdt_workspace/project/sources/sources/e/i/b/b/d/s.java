package e.i.b.b.d;

/* loaded from: classes.dex */
final class s implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17879e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ r f17880f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(r rVar, h hVar) {
        this.f17880f = rVar;
        this.f17879e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        c cVar;
        c cVar2;
        obj = this.f17880f.f17877b;
        synchronized (obj) {
            cVar = this.f17880f.f17878c;
            if (cVar != null) {
                cVar2 = this.f17880f.f17878c;
                cVar2.a(this.f17879e);
            }
        }
    }
}
