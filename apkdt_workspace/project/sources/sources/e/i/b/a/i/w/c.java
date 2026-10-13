package e.i.b.a.i.w;

import com.google.android.datatransport.runtime.backends.n;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import e.i.b.a.i.m;
import e.i.b.a.i.r;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;

/* compiled from: DefaultScheduler.java */
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: f, reason: collision with root package name */
    private static final Logger f17726f = Logger.getLogger(r.class.getName());

    /* renamed from: a, reason: collision with root package name */
    private final s f17727a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f17728b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.e f17729c;

    /* renamed from: d, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f17730d;

    /* renamed from: e, reason: collision with root package name */
    private final e.i.b.a.i.x.b f17731e;

    @Inject
    public c(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, s sVar, e.i.b.a.i.w.j.c cVar, e.i.b.a.i.x.b bVar) {
        this.f17728b = executor;
        this.f17729c = eVar;
        this.f17727a = sVar;
        this.f17730d = cVar;
        this.f17731e = bVar;
    }

    @Override // e.i.b.a.i.w.e
    public void a(m mVar, e.i.b.a.i.h hVar, e.i.b.a.h hVar2) {
        this.f17728b.execute(a.a(this, mVar, hVar2, hVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(c cVar, m mVar, e.i.b.a.h hVar, e.i.b.a.i.h hVar2) {
        try {
            n a2 = cVar.f17729c.a(mVar.a());
            if (a2 == null) {
                String format = String.format("Transport backend '%s' is not registered", mVar.a());
                f17726f.warning(format);
                hVar.a(new IllegalArgumentException(format));
            } else {
                cVar.f17731e.a(b.a(cVar, mVar, a2.a(hVar2)));
                hVar.a(null);
            }
        } catch (Exception e2) {
            f17726f.warning("Error scheduling event " + e2.getMessage());
            hVar.a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(c cVar, m mVar, e.i.b.a.i.h hVar) {
        cVar.f17730d.a(mVar, hVar);
        cVar.f17727a.a(mVar, 1);
        return null;
    }
}
