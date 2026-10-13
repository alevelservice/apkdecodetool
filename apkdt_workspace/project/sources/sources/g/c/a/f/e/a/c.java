package g.c.a.f.e.a;

import g.c.a.b.f;
import g.c.a.b.g;
import g.c.a.f.c.e;
import g.c.a.f.g.m;
import io.reactivex.rxjava3.annotations.Nullable;

/* compiled from: ObservableObserveOn.java */
/* loaded from: classes2.dex */
public final class c<T> extends g.c.a.f.e.a.a<T, T> {

    /* renamed from: b, reason: collision with root package name */
    final g f18279b;

    /* renamed from: c, reason: collision with root package name */
    final boolean f18280c;

    /* renamed from: d, reason: collision with root package name */
    final int f18281d;

    /* compiled from: ObservableObserveOn.java */
    /* loaded from: classes2.dex */
    static final class a<T> extends g.c.a.f.d.a<T> implements f<T>, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;
        final int bufferSize;
        final boolean delayError;
        volatile boolean disposed;
        volatile boolean done;
        final f<? super T> downstream;
        Throwable error;
        boolean outputFused;
        e<T> queue;
        int sourceMode;
        g.c.a.c.c upstream;
        final g.b worker;

        a(f<? super T> fVar, g.b bVar, boolean z, int i2) {
            this.downstream = fVar;
            this.worker = bVar;
            this.delayError = z;
            this.bufferSize = i2;
        }

        boolean checkTerminated(boolean z, boolean z2, f<? super T> fVar) {
            if (this.disposed) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                this.disposed = true;
                if (th != null) {
                    fVar.onError(th);
                } else {
                    fVar.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            if (th != null) {
                this.disposed = true;
                this.queue.clear();
                fVar.onError(th);
                this.worker.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.disposed = true;
            fVar.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override // g.c.a.f.c.e
        public void clear() {
            this.queue.clear();
        }

        @Override // g.c.a.c.c
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.upstream.dispose();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        void drainFused() {
            int i2 = 1;
            while (!this.disposed) {
                boolean z = this.done;
                Throwable th = this.error;
                if (!this.delayError && z && th != null) {
                    this.disposed = true;
                    this.downstream.onError(th);
                    this.worker.dispose();
                    return;
                }
                this.downstream.onNext(null);
                if (z) {
                    this.disposed = true;
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        this.downstream.onError(th2);
                    } else {
                        this.downstream.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
        
            r3 = addAndGet(-r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        
            if (r3 != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainNormal() {
            /*
                r7 = this;
                g.c.a.f.c.e<T> r0 = r7.queue
                g.c.a.b.f<? super T> r1 = r7.downstream
                r2 = 1
                r3 = 1
            L6:
                boolean r4 = r7.done
                boolean r5 = r0.isEmpty()
                boolean r4 = r7.checkTerminated(r4, r5, r1)
                if (r4 == 0) goto L13
                return
            L13:
                boolean r4 = r7.done
                java.lang.Object r5 = r0.poll()     // Catch: java.lang.Throwable -> L33
                if (r5 != 0) goto L1d
                r6 = 1
                goto L1e
            L1d:
                r6 = 0
            L1e:
                boolean r4 = r7.checkTerminated(r4, r6, r1)
                if (r4 == 0) goto L25
                return
            L25:
                if (r6 == 0) goto L2f
                int r3 = -r3
                int r3 = r7.addAndGet(r3)
                if (r3 != 0) goto L6
                return
            L2f:
                r1.onNext(r5)
                goto L13
            L33:
                r3 = move-exception
                g.c.a.d.b.b(r3)
                r7.disposed = r2
                g.c.a.c.c r2 = r7.upstream
                r2.dispose()
                r0.clear()
                r1.onError(r3)
                g.c.a.b.g$b r0 = r7.worker
                r0.dispose()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g.c.a.f.e.a.c.a.drainNormal():void");
        }

        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // g.c.a.f.c.e
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // g.c.a.b.f
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override // g.c.a.b.f
        public void onError(Throwable th) {
            if (this.done) {
                g.c.a.h.a.b(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override // g.c.a.b.f
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            schedule();
        }

        @Override // g.c.a.b.f
        public void onSubscribe(g.c.a.c.c cVar) {
            if (g.c.a.f.a.a.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                if (cVar instanceof g.c.a.f.c.b) {
                    g.c.a.f.c.b bVar = (g.c.a.f.c.b) cVar;
                    int requestFusion = bVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = bVar;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        schedule();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = bVar;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new g.c.a.f.f.a(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }

        @Override // g.c.a.f.c.e
        @Nullable
        public T poll() {
            return this.queue.poll();
        }

        @Override // g.c.a.f.c.c
        public int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }

        void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.a(this);
            }
        }
    }

    public c(g.c.a.b.e<T> eVar, g gVar, boolean z, int i2) {
        super(eVar);
        this.f18279b = gVar;
        this.f18280c = z;
        this.f18281d = i2;
    }

    @Override // g.c.a.b.d
    protected void b(f<? super T> fVar) {
        g gVar = this.f18279b;
        if (gVar instanceof m) {
            this.f18277a.a(fVar);
        } else {
            this.f18277a.a(new a(fVar, gVar.a(), this.f18280c, this.f18281d));
        }
    }
}
