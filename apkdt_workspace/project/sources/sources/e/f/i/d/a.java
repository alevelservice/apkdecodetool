package e.f.i.d;

import com.facebook.common.internal.h;
import com.facebook.imagepipeline.producers.Consumer;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.o0;
import e.f.i.h.c;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: AbstractProducerToDataSourceAdapter.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class a<T> extends e.f.d.a<T> implements e.f.i.i.a {

    /* renamed from: g, reason: collision with root package name */
    private final o0 f17577g;

    /* renamed from: h, reason: collision with root package name */
    private final c f17578h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractProducerToDataSourceAdapter.java */
    /* renamed from: e.f.i.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0195a extends com.facebook.imagepipeline.producers.b<T> {
        C0195a() {
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void b(@Nullable T t, int i2) {
            a.this.a((a) t, i2);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            a.this.b(th);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void b() {
            a.this.j();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void b(float f2) {
            a.this.a(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(i0<T> i0Var, o0 o0Var, c cVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractProducerToDataSourceAdapter()");
        }
        this.f17577g = o0Var;
        this.f17578h = cVar;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
        }
        this.f17578h.a(o0Var.c(), this.f17577g.a(), this.f17577g.getId(), this.f17577g.d());
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
        }
        i0Var.a(i(), o0Var);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Throwable th) {
        if (super.a(th)) {
            this.f17578h.a(this.f17577g.c(), this.f17577g.getId(), th, this.f17577g.d());
        }
    }

    private Consumer<T> i() {
        return new C0195a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        h.b(g());
    }

    @Override // e.f.d.a, e.f.d.c
    public boolean close() {
        if (!super.close()) {
            return false;
        }
        if (super.b()) {
            return true;
        }
        this.f17578h.b(this.f17577g.getId());
        this.f17577g.h();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@Nullable T t, int i2) {
        boolean a2 = com.facebook.imagepipeline.producers.b.a(i2);
        if (super.a((a<T>) t, a2) && a2) {
            this.f17578h.a(this.f17577g.c(), this.f17577g.getId(), this.f17577g.d());
        }
    }
}
