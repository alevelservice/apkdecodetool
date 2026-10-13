package e.i.b.a.i;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import e.i.b.a.i.h;
import e.i.b.a.i.m;
import e.i.b.a.i.s;
import java.util.Collections;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

/* compiled from: TransportRuntime.java */
@Singleton
/* loaded from: classes.dex */
public class r implements q {

    /* renamed from: e, reason: collision with root package name */
    private static volatile s f17709e;

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f17710a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f17711b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.w.e f17712c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.jobscheduling.m f17713d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public r(@WallTime com.google.android.datatransport.runtime.time.a aVar, @Monotonic com.google.android.datatransport.runtime.time.a aVar2, e.i.b.a.i.w.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.m mVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.q qVar) {
        this.f17710a = aVar;
        this.f17711b = aVar2;
        this.f17712c = eVar;
        this.f17713d = mVar;
        qVar.a();
    }

    public static void a(Context context) {
        if (f17709e == null) {
            synchronized (r.class) {
                if (f17709e == null) {
                    s.a k2 = d.k();
                    k2.a(context);
                    f17709e = k2.a();
                }
            }
        }
    }

    public static r b() {
        s sVar = f17709e;
        if (sVar != null) {
            return sVar.j();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<e.i.b.a.b> b(e eVar) {
        if (eVar instanceof f) {
            return Collections.unmodifiableSet(((f) eVar).a());
        }
        return Collections.singleton(e.i.b.a.b.a("proto"));
    }

    public e.i.b.a.g a(e eVar) {
        Set<e.i.b.a.b> b2 = b(eVar);
        m.a d2 = m.d();
        d2.a(eVar.getName());
        d2.a(eVar.getExtras());
        return new n(b2, d2.a(), this);
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    public com.google.android.datatransport.runtime.scheduling.jobscheduling.m a() {
        return this.f17713d;
    }

    @Override // e.i.b.a.i.q
    public void a(l lVar, e.i.b.a.h hVar) {
        this.f17712c.a(lVar.e().a(lVar.b().c()), a(lVar), hVar);
    }

    private h a(l lVar) {
        h.a i2 = h.i();
        i2.a(this.f17710a.a());
        i2.b(this.f17711b.a());
        i2.a(lVar.f());
        i2.a(new g(lVar.a(), lVar.c()));
        i2.a(lVar.b().a());
        return i2.a();
    }
}
