package e.a.a.a.a;

import android.os.SystemClock;
import e.a.a.a.h;
import e.a.a.a.k;
import java.util.concurrent.ExecutorService;

/* compiled from: AbstractDispatcher.java */
/* loaded from: classes.dex */
public abstract class a implements d {

    /* renamed from: e, reason: collision with root package name */
    protected a f16789e;

    /* renamed from: f, reason: collision with root package name */
    protected k f16790f;

    /* renamed from: g, reason: collision with root package name */
    protected ExecutorService f16791g;

    public a(a aVar) {
        if (aVar != null) {
            this.f16789e = aVar;
            this.f16790f = aVar.f16790f;
            this.f16791g = aVar.f16791g;
        }
    }

    @Override // e.a.a.a.a.d
    public e.a.a.a.f a(e.a.a.a.c.a aVar, h hVar) {
        if (a(hVar)) {
            return b(aVar, hVar);
        }
        a aVar2 = this.f16789e;
        if (aVar2 != null) {
            return aVar2.a(aVar, hVar);
        }
        return e.a.a.a.f.ABORT;
    }

    protected abstract e.a.a.a.f b(e.a.a.a.c.a aVar, h hVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public e.a.a.a.f c(e.a.a.a.c.a aVar, h hVar) {
        aVar.b(SystemClock.elapsedRealtime());
        if (!e.a.a.a.c.c.b(aVar)) {
            try {
                return hVar.d().a(aVar);
            } catch (Throwable th) {
                th.getMessage();
                if (this.f16790f.a() && !e.a.a.a.c.b.b(aVar)) {
                    this.f16790f.a((e.a.a.a.c.a) new e.a.a.a.c.b(aVar, hVar, th));
                }
                return e.a.a.a.f.FAIL;
            }
        }
        return e.a.a.a.f.IGNORE;
    }

    public a(a aVar, k kVar, ExecutorService executorService) {
        this.f16789e = aVar;
        this.f16790f = kVar;
        this.f16791g = executorService;
    }
}
