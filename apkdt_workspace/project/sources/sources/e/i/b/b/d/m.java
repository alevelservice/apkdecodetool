package e.i.b.b.d;

/* loaded from: classes.dex */
final class m implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17865e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ l f17866f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, h hVar) {
        this.f17866f = lVar;
        this.f17865e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c0 c0Var;
        c0 c0Var2;
        c0 c0Var3;
        a aVar;
        c0 c0Var4;
        c0 c0Var5;
        if (!this.f17865e.c()) {
            try {
                aVar = this.f17866f.f17863b;
                Object a2 = aVar.a(this.f17865e);
                c0Var4 = this.f17866f.f17864c;
                c0Var4.a((c0) a2);
                return;
            } catch (f e2) {
                if (e2.getCause() instanceof Exception) {
                    c0Var3 = this.f17866f.f17864c;
                    c0Var3.a((Exception) e2.getCause());
                    return;
                } else {
                    c0Var2 = this.f17866f.f17864c;
                    c0Var2.a((Exception) e2);
                    return;
                }
            } catch (Exception e3) {
                c0Var = this.f17866f.f17864c;
                c0Var.a(e3);
                return;
            }
        }
        c0Var5 = this.f17866f.f17864c;
        c0Var5.f();
    }
}
