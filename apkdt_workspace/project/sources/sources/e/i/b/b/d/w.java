package e.i.b.b.d;

/* loaded from: classes.dex */
final class w implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17889e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ v f17890f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v vVar, h hVar) {
        this.f17890f = vVar;
        this.f17889e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        e eVar;
        e eVar2;
        obj = this.f17890f.f17887b;
        synchronized (obj) {
            eVar = this.f17890f.f17888c;
            if (eVar != null) {
                eVar2 = this.f17890f.f17888c;
                eVar2.a(this.f17889e.b());
            }
        }
    }
}
