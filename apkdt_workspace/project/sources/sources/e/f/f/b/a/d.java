package e.f.f.b.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import com.facebook.common.internal.j;
import com.facebook.common.time.AwakeTimeSinceBootClock;
import e.f.f.f.q;
import e.f.i.c.p;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: PipelineDraweeController.java */
/* loaded from: classes.dex */
public class d extends e.f.f.d.a<e.f.c.g.a<e.f.i.g.c>, e.f.i.g.f> {
    private static final Class<?> F = d.class;

    @Nullable
    private com.facebook.common.internal.d<e.f.i.f.a> A;

    @Nullable
    private com.facebook.drawee.backends.pipeline.info.g B;

    @GuardedBy("this")
    @Nullable
    private Set<e.f.i.h.c> C;

    @GuardedBy("this")
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.b D;
    private e.f.f.b.a.h.a E;
    private final e.f.i.f.a u;

    @Nullable
    private final com.facebook.common.internal.d<e.f.i.f.a> v;

    @Nullable
    private final p<e.f.b.a.d, e.f.i.g.c> w;
    private e.f.b.a.d x;
    private j<e.f.d.c<e.f.c.g.a<e.f.i.g.c>>> y;
    private boolean z;

    public d(Resources resources, e.f.f.c.a aVar, e.f.i.f.a aVar2, Executor executor, @Nullable p<e.f.b.a.d, e.f.i.g.c> pVar, @Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar) {
        super(aVar, executor, null, null);
        this.u = new a(resources, aVar2);
        this.v = dVar;
        this.w = pVar;
    }

    @Override // e.f.f.d.a
    protected e.f.d.c<e.f.c.g.a<e.f.i.g.c>> j() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("PipelineDraweeController#getDataSource");
        }
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.b(F, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        e.f.d.c<e.f.c.g.a<e.f.i.g.c>> cVar = this.y.get();
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return cVar;
    }

    protected void p() {
        synchronized (this) {
            this.D = null;
        }
    }

    @Nullable
    public synchronized e.f.i.h.c q() {
        com.facebook.drawee.backends.pipeline.info.c cVar = this.D != null ? new com.facebook.drawee.backends.pipeline.info.c(l(), this.D) : null;
        if (this.C == null) {
            return cVar;
        }
        e.f.i.h.b bVar = new e.f.i.h.b(this.C);
        if (cVar != null) {
            bVar.a(cVar);
        }
        return bVar;
    }

    @Override // e.f.f.d.a
    public String toString() {
        g.b a2 = com.facebook.common.internal.g.a(this);
        a2.a("super", super.toString());
        a2.a("dataSourceSupplier", this.y);
        return a2.toString();
    }

    public void a(j<e.f.d.c<e.f.c.g.a<e.f.i.g.c>>> jVar, String str, e.f.b.a.d dVar, Object obj, @Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar2, @Nullable com.facebook.drawee.backends.pipeline.info.b bVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("PipelineDraweeController#initialize");
        }
        super.a(str, obj);
        a(jVar);
        this.x = dVar;
        a(dVar2);
        p();
        a((e.f.i.g.c) null);
        a(bVar);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public void b(boolean z) {
        this.z = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.a
    /* renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public e.f.i.g.f d(e.f.c.g.a<e.f.i.g.c> aVar) {
        h.b(e.f.c.g.a.c(aVar));
        return aVar.A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.a
    /* renamed from: d, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void e(@Nullable e.f.c.g.a<e.f.i.g.c> aVar) {
        e.f.c.g.a.b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.f.f.d.a
    @Nullable
    public e.f.c.g.a<e.f.i.g.c> g() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("PipelineDraweeController#getCachedImage");
        }
        try {
            if (this.w != null && this.x != null) {
                e.f.c.g.a<e.f.i.g.c> aVar = this.w.get(this.x);
                if (aVar != null && !aVar.A().i().a()) {
                    aVar.close();
                    return null;
                }
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return aVar;
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return null;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    public synchronized void b(e.f.i.h.c cVar) {
        if (this.C == null) {
            return;
        }
        this.C.remove(cVar);
    }

    public synchronized void b(com.facebook.drawee.backends.pipeline.info.b bVar) {
        if (this.D instanceof com.facebook.drawee.backends.pipeline.info.a) {
            ((com.facebook.drawee.backends.pipeline.info.a) this.D).b(bVar);
        } else if (this.D != null) {
            this.D = new com.facebook.drawee.backends.pipeline.info.a(this.D, bVar);
        } else {
            this.D = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(@Nullable com.facebook.drawee.backends.pipeline.info.f fVar) {
        if (this.B != null) {
            this.B.c();
        }
        if (fVar != null) {
            if (this.B == null) {
                this.B = new com.facebook.drawee.backends.pipeline.info.g(AwakeTimeSinceBootClock.get(), this);
            }
            this.B.a(fVar);
            this.B.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int c(@Nullable e.f.c.g.a<e.f.i.g.c> aVar) {
        if (aVar != null) {
            return aVar.B();
        }
        return 0;
    }

    public void a(@Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar) {
        this.A = dVar;
    }

    public synchronized void a(e.f.i.h.c cVar) {
        if (this.C == null) {
            this.C = new HashSet();
        }
        this.C.add(cVar);
    }

    public synchronized void a(com.facebook.drawee.backends.pipeline.info.b bVar) {
        if (this.D instanceof com.facebook.drawee.backends.pipeline.info.a) {
            ((com.facebook.drawee.backends.pipeline.info.a) this.D).a(bVar);
        } else if (this.D != null) {
            this.D = new com.facebook.drawee.backends.pipeline.info.a(this.D, bVar);
        } else {
            this.D = bVar;
        }
    }

    private void a(j<e.f.d.c<e.f.c.g.a<e.f.i.g.c>>> jVar) {
        this.y = jVar;
        a((e.f.i.g.c) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.a
    public Drawable a(e.f.c.g.a<e.f.i.g.c> aVar) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("PipelineDraweeController#createDrawable");
            }
            h.b(e.f.c.g.a.c(aVar));
            e.f.i.g.c A = aVar.A();
            a(A);
            Drawable a2 = a(this.A, A);
            if (a2 != null) {
                return a2;
            }
            Drawable a3 = a(this.v, A);
            if (a3 != null) {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return a3;
            }
            Drawable b2 = this.u.b(A);
            if (b2 != null) {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return b2;
            }
            throw new UnsupportedOperationException("Unrecognized image class: " + A);
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    @Nullable
    private Drawable a(@Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar, e.f.i.g.c cVar) {
        Drawable b2;
        if (dVar == null) {
            return null;
        }
        Iterator<e.f.i.f.a> it = dVar.iterator();
        while (it.hasNext()) {
            e.f.i.f.a next = it.next();
            if (next.a(cVar) && (b2 = next.b(cVar)) != null) {
                return b2;
            }
        }
        return null;
    }

    @Override // e.f.f.d.a, e.f.f.i.a
    public void a(@Nullable e.f.f.i.b bVar) {
        super.a(bVar);
        a((e.f.i.g.c) null);
    }

    private void a(@Nullable e.f.i.g.c cVar) {
        e.f.f.f.p a2;
        if (this.z) {
            if (i() == null) {
                e.f.f.e.a aVar = new e.f.f.e.a();
                e.f.f.e.b.a aVar2 = new e.f.f.e.b.a(aVar);
                this.E = new e.f.f.b.a.h.a();
                a((e.f.f.d.d) aVar2);
                b((Drawable) aVar);
            }
            if (this.D == null) {
                a(this.E);
            }
            if (i() instanceof e.f.f.e.a) {
                e.f.f.e.a aVar3 = (e.f.f.e.a) i();
                aVar3.a(l());
                e.f.f.i.b c2 = c();
                q.b bVar = null;
                if (c2 != null && (a2 = q.a(c2.b())) != null) {
                    bVar = a2.c();
                }
                aVar3.a(bVar);
                aVar3.b(this.E.a());
                if (cVar != null) {
                    aVar3.a(cVar.getWidth(), cVar.getHeight());
                    aVar3.a(cVar.j());
                } else {
                    aVar3.a();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.f.f.d.a
    protected void a(@Nullable Drawable drawable) {
        if (drawable instanceof e.f.e.a.a) {
            ((e.f.e.a.a) drawable).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.a
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(String str, e.f.c.g.a<e.f.i.g.c> aVar) {
        super.b(str, aVar);
        synchronized (this) {
            if (this.D != null) {
                this.D.a(str, 5, true);
            }
        }
    }
}
