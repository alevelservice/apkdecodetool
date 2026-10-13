package g.c.a.f.e.a;

import g.c.a.b.e;
import g.c.a.b.f;
import g.c.a.b.g;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSubscribeOn.java */
/* loaded from: classes2.dex */
public final class d<T> extends g.c.a.f.e.a.a<T, T> {

    /* renamed from: b, reason: collision with root package name */
    final g f18282b;

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes2.dex */
    static final class a<T> extends AtomicReference<g.c.a.c.c> implements f<T>, g.c.a.c.c {
        private static final long serialVersionUID = 8094547886072529208L;
        final f<? super T> downstream;
        final AtomicReference<g.c.a.c.c> upstream = new AtomicReference<>();

        a(f<? super T> fVar) {
            this.downstream = fVar;
        }

        @Override // g.c.a.c.c
        public void dispose() {
            g.c.a.f.a.a.dispose(this.upstream);
            g.c.a.f.a.a.dispose(this);
        }

        public boolean isDisposed() {
            return g.c.a.f.a.a.isDisposed(get());
        }

        @Override // g.c.a.b.f
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // g.c.a.b.f
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // g.c.a.b.f
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // g.c.a.b.f
        public void onSubscribe(g.c.a.c.c cVar) {
            g.c.a.f.a.a.setOnce(this.upstream, cVar);
        }

        void setDisposable(g.c.a.c.c cVar) {
            g.c.a.f.a.a.setOnce(this, cVar);
        }
    }

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes2.dex */
    final class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final a<T> f18283e;

        b(a<T> aVar) {
            this.f18283e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f18277a.a(this.f18283e);
        }
    }

    public d(e<T> eVar, g gVar) {
        super(eVar);
        this.f18282b = gVar;
    }

    @Override // g.c.a.b.d
    public void b(f<? super T> fVar) {
        a aVar = new a(fVar);
        fVar.onSubscribe(aVar);
        aVar.setDisposable(this.f18282b.a(new b(aVar)));
    }
}
