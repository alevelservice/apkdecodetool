package e.i.b.b.d;

/* loaded from: classes.dex */
final class q implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ p f17875e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar) {
        this.f17875e = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        b bVar;
        b bVar2;
        obj = this.f17875e.f17873b;
        synchronized (obj) {
            bVar = this.f17875e.f17874c;
            if (bVar != null) {
                bVar2 = this.f17875e.f17874c;
                bVar2.a();
            }
        }
    }
}
