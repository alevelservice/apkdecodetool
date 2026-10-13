package e.i.b.b.d;

/* loaded from: classes.dex */
final class o implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17870e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ n f17871f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, h hVar) {
        this.f17871f = nVar;
        this.f17870e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c0 c0Var;
        c0 c0Var2;
        c0 c0Var3;
        a aVar;
        try {
            aVar = this.f17871f.f17868b;
            h hVar = (h) aVar.a(this.f17870e);
            if (hVar == null) {
                this.f17871f.a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            hVar.a(j.f17851b, (e) this.f17871f);
            hVar.a(j.f17851b, (d) this.f17871f);
            hVar.a(j.f17851b, (b) this.f17871f);
        } catch (f e2) {
            if (e2.getCause() instanceof Exception) {
                c0Var3 = this.f17871f.f17869c;
                c0Var3.a((Exception) e2.getCause());
            } else {
                c0Var2 = this.f17871f.f17869c;
                c0Var2.a((Exception) e2);
            }
        } catch (Exception e3) {
            c0Var = this.f17871f.f17869c;
            c0Var.a(e3);
        }
    }
}
