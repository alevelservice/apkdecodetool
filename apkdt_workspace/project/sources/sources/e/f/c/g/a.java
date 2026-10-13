package e.f.c.g;

import com.facebook.common.internal.h;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: CloseableReference.java */
/* loaded from: classes.dex */
public final class a<T> implements Cloneable, Closeable {

    /* renamed from: g, reason: collision with root package name */
    private static Class<a> f17165g = a.class;

    /* renamed from: h, reason: collision with root package name */
    private static final c<Closeable> f17166h = new C0184a();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17167e = false;

    /* renamed from: f, reason: collision with root package name */
    private final d<T> f17168f;

    /* compiled from: CloseableReference.java */
    /* renamed from: e.f.c.g.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0184a implements c<Closeable> {
        C0184a() {
        }

        @Override // e.f.c.g.c
        public void a(Closeable closeable) {
            try {
                com.facebook.common.internal.b.a(closeable, true);
            } catch (IOException unused) {
            }
        }
    }

    private a(d<T> dVar) {
        h.a(dVar);
        this.f17168f = dVar;
        dVar.a();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Le/f/c/g/a<TT;>; */
    public static a a(Closeable closeable) {
        if (closeable == null) {
            return null;
        }
        return new a(closeable, f17166h);
    }

    public static void b(@Nullable a<?> aVar) {
        if (aVar != null) {
            aVar.close();
        }
    }

    public static boolean c(@Nullable a<?> aVar) {
        return aVar != null && aVar.C();
    }

    public synchronized T A() {
        h.b(!this.f17167e);
        return this.f17168f.c();
    }

    public int B() {
        if (C()) {
            return System.identityHashCode(this.f17168f.c());
        }
        return 0;
    }

    public synchronized boolean C() {
        return !this.f17167e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f17167e) {
                return;
            }
            this.f17167e = true;
            this.f17168f.b();
        }
    }

    protected void finalize() {
        try {
            synchronized (this) {
                if (this.f17167e) {
                    return;
                }
                e.f.c.d.a.c(f17165g, "Finalized without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f17168f)), this.f17168f.c().getClass().getName());
                close();
            }
        } finally {
            super.finalize();
        }
    }

    @Nullable
    public synchronized a<T> z() {
        if (!C()) {
            return null;
        }
        return m8clone();
    }

    public static <T> a<T> a(T t, c<T> cVar) {
        if (t == null) {
            return null;
        }
        return new a<>(t, cVar);
    }

    public static void c(@Nullable Iterable<? extends a<?>> iterable) {
        if (iterable != null) {
            Iterator<? extends a<?>> it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public synchronized a<T> m8clone() {
        h.b(C());
        return new a<>(this.f17168f);
    }

    @Nullable
    public static <T> a<T> a(@Nullable a<T> aVar) {
        if (aVar != null) {
            return aVar.z();
        }
        return null;
    }

    public static <T> List<a<T>> a(Collection<a<T>> collection) {
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<a<T>> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(a((a) it.next()));
        }
        return arrayList;
    }

    private a(T t, c<T> cVar) {
        this.f17168f = new d<>(t, cVar);
    }
}
