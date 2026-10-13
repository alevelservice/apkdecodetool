package e.i.b.b.d;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ c0 f17847e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Callable f17848f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(c0 c0Var, Callable callable) {
        this.f17847e = c0Var;
        this.f17848f = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f17847e.a((c0) this.f17848f.call());
        } catch (Exception e2) {
            this.f17847e.a(e2);
        }
    }
}
