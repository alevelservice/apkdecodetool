package e.i.b.b.d;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
final class y implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h f17894e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ x f17895f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar, h hVar) {
        this.f17895f = xVar;
        this.f17894e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar;
        try {
            gVar = this.f17895f.f17892b;
            h a2 = gVar.a(this.f17894e.b());
            if (a2 == null) {
                this.f17895f.a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            a2.a(j.f17851b, (e) this.f17895f);
            a2.a(j.f17851b, (d) this.f17895f);
            a2.a(j.f17851b, (b) this.f17895f);
        } catch (f e2) {
            if (e2.getCause() instanceof Exception) {
                this.f17895f.a((Exception) e2.getCause());
            } else {
                this.f17895f.a((Exception) e2);
            }
        } catch (CancellationException unused) {
            this.f17895f.a();
        } catch (Exception e3) {
            this.f17895f.a(e3);
        }
    }
}
