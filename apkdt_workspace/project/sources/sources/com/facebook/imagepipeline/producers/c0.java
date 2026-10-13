package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.common.internal.VisibleForTesting;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: MultiplexProducer.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class c0<K, T extends Closeable> implements i0<T> {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    final Map<K, c0<K, T>.b> f3907a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final i0<T> f3908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiplexProducer.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        private final K f3909a;

        /* renamed from: b, reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<Consumer<T>, j0>> f3910b = com.facebook.common.internal.i.a();

        /* renamed from: c, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private T f3911c;

        /* renamed from: d, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        private float f3912d;

        /* renamed from: e, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        private int f3913e;

        /* renamed from: f, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private d f3914f;

        /* renamed from: g, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private c0<K, T>.b.C0068b f3915g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultiplexProducer.java */
        /* loaded from: classes.dex */
        public class a extends e {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Pair f3917a;

            a(Pair pair) {
                this.f3917a = pair;
            }

            @Override // com.facebook.imagepipeline.producers.k0
            public void a() {
                boolean remove;
                List list;
                d dVar;
                List list2;
                List list3;
                synchronized (b.this) {
                    remove = b.this.f3910b.remove(this.f3917a);
                    list = null;
                    if (!remove) {
                        dVar = null;
                        list2 = null;
                    } else if (b.this.f3910b.isEmpty()) {
                        dVar = b.this.f3914f;
                        list2 = null;
                    } else {
                        List f2 = b.this.f();
                        list2 = b.this.g();
                        list3 = b.this.e();
                        dVar = null;
                        list = f2;
                    }
                    list3 = list2;
                }
                d.c(list);
                d.d(list2);
                d.b((List<k0>) list3);
                if (dVar != null) {
                    dVar.h();
                }
                if (remove) {
                    ((Consumer) this.f3917a.first).a();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.k0
            public void b() {
                d.b((List<k0>) b.this.e());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.k0
            public void c() {
                d.d(b.this.g());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.k0
            public void d() {
                d.c(b.this.f());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MultiplexProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.c0$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0068b extends com.facebook.imagepipeline.producers.b<T> {
            private C0068b() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.b
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void b(T t, int i2) {
                try {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a("MultiplexProducer#onNewResult");
                    }
                    b.this.a(this, t, i2);
                } finally {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void b(Throwable th) {
                try {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a("MultiplexProducer#onFailure");
                    }
                    b.this.a(this, th);
                } finally {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void b() {
                try {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a("MultiplexProducer#onCancellation");
                    }
                    b.this.a(this);
                } finally {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void b(float f2) {
                try {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a("MultiplexProducer#onProgressUpdate");
                    }
                    b.this.a(this, f2);
                } finally {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                    }
                }
            }
        }

        public b(K k2) {
            this.f3909a = k2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<k0> g() {
            if (this.f3914f == null) {
                return null;
            }
            return this.f3914f.a(c());
        }

        private synchronized boolean b() {
            Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
            while (it.hasNext()) {
                if (!((j0) it.next().second).d()) {
                    return false;
                }
            }
            return true;
        }

        private synchronized com.facebook.imagepipeline.common.d c() {
            com.facebook.imagepipeline.common.d dVar;
            dVar = com.facebook.imagepipeline.common.d.LOW;
            Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
            while (it.hasNext()) {
                dVar = com.facebook.imagepipeline.common.d.getHigherPriority(dVar, ((j0) it.next().second).b());
            }
            return dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            synchronized (this) {
                boolean z = true;
                com.facebook.common.internal.h.a(this.f3914f == null);
                if (this.f3915g != null) {
                    z = false;
                }
                com.facebook.common.internal.h.a(z);
                if (this.f3910b.isEmpty()) {
                    c0.this.a((c0) this.f3909a, (c0<c0, T>.b) this);
                    return;
                }
                j0 j0Var = (j0) this.f3910b.iterator().next().second;
                this.f3914f = new d(j0Var.c(), j0Var.getId(), j0Var.e(), j0Var.a(), j0Var.g(), b(), a(), c());
                this.f3915g = new C0068b();
                c0.this.f3908b.a(this.f3915g, this.f3914f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<k0> e() {
            if (this.f3914f == null) {
                return null;
            }
            return this.f3914f.a(a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<k0> f() {
            if (this.f3914f == null) {
                return null;
            }
            return this.f3914f.b(b());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean a(Consumer<T> consumer, j0 j0Var) {
            Pair<Consumer<T>, j0> create = Pair.create(consumer, j0Var);
            synchronized (this) {
                if (c0.this.b(this.f3909a) != this) {
                    return false;
                }
                this.f3910b.add(create);
                List<k0> f2 = f();
                List<k0> g2 = g();
                List<k0> e2 = e();
                Closeable closeable = this.f3911c;
                float f3 = this.f3912d;
                int i2 = this.f3913e;
                d.c(f2);
                d.d(g2);
                d.b(e2);
                synchronized (create) {
                    synchronized (this) {
                        if (closeable != this.f3911c) {
                            closeable = null;
                        } else if (closeable != null) {
                            closeable = c0.this.a((c0) closeable);
                        }
                    }
                    if (closeable != null) {
                        if (f3 > 0.0f) {
                            consumer.a(f3);
                        }
                        consumer.a(closeable, i2);
                        a(closeable);
                    }
                }
                a(create, j0Var);
                return true;
            }
        }

        private void a(Pair<Consumer<T>, j0> pair, j0 j0Var) {
            j0Var.a(new a(pair));
        }

        private synchronized boolean a() {
            Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
            while (it.hasNext()) {
                if (((j0) it.next().second).f()) {
                    return true;
                }
            }
            return false;
        }

        public void a(c0<K, T>.b.C0068b c0068b, Throwable th) {
            synchronized (this) {
                if (this.f3915g != c0068b) {
                    return;
                }
                Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
                this.f3910b.clear();
                c0.this.a((c0) this.f3909a, (c0<c0, T>.b) this);
                a(this.f3911c);
                this.f3911c = null;
                while (it.hasNext()) {
                    Pair<Consumer<T>, j0> next = it.next();
                    synchronized (next) {
                        ((Consumer) next.first).a(th);
                    }
                }
            }
        }

        public void a(c0<K, T>.b.C0068b c0068b, T t, int i2) {
            synchronized (this) {
                if (this.f3915g != c0068b) {
                    return;
                }
                a(this.f3911c);
                this.f3911c = null;
                Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
                if (com.facebook.imagepipeline.producers.b.b(i2)) {
                    this.f3911c = (T) c0.this.a((c0) t);
                    this.f3913e = i2;
                } else {
                    this.f3910b.clear();
                    c0.this.a((c0) this.f3909a, (c0<c0, T>.b) this);
                }
                while (it.hasNext()) {
                    Pair<Consumer<T>, j0> next = it.next();
                    synchronized (next) {
                        ((Consumer) next.first).a(t, i2);
                    }
                }
            }
        }

        public void a(c0<K, T>.b.C0068b c0068b) {
            synchronized (this) {
                if (this.f3915g != c0068b) {
                    return;
                }
                this.f3915g = null;
                this.f3914f = null;
                a(this.f3911c);
                this.f3911c = null;
                d();
            }
        }

        public void a(c0<K, T>.b.C0068b c0068b, float f2) {
            synchronized (this) {
                if (this.f3915g != c0068b) {
                    return;
                }
                this.f3912d = f2;
                Iterator<Pair<Consumer<T>, j0>> it = this.f3910b.iterator();
                while (it.hasNext()) {
                    Pair<Consumer<T>, j0> next = it.next();
                    synchronized (next) {
                        ((Consumer) next.first).a(f2);
                    }
                }
            }
        }

        private void a(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0(i0<T> i0Var) {
        this.f3908b = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized c0<K, T>.b b(K k2) {
        return this.f3907a.get(k2);
    }

    protected abstract T a(T t);

    protected abstract K a(j0 j0Var);

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<T> consumer, j0 j0Var) {
        boolean z;
        c0<K, T>.b b2;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("MultiplexProducer#produceResults");
            }
            K a2 = a(j0Var);
            do {
                z = false;
                synchronized (this) {
                    b2 = b(a2);
                    if (b2 == null) {
                        b2 = a((c0<K, T>) a2);
                        z = true;
                    }
                }
            } while (!b2.a(consumer, j0Var));
            if (z) {
                b2.d();
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    private synchronized c0<K, T>.b a(K k2) {
        c0<K, T>.b bVar;
        bVar = new b(k2);
        this.f3907a.put(k2, bVar);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(K k2, c0<K, T>.b bVar) {
        if (this.f3907a.get(k2) == bVar) {
            this.f3907a.remove(k2);
        }
    }
}
