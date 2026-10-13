package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.ForOverride;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Equivalence.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class b<T> {

    /* compiled from: Equivalence.java */
    /* renamed from: e.i.c.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0202b extends b<Object> implements Serializable {
        static final C0202b INSTANCE = new C0202b();
        private static final long serialVersionUID = 1;

        C0202b() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // e.i.c.a.b
        protected boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // e.i.c.a.b
        protected int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    /* compiled from: Equivalence.java */
    /* loaded from: classes.dex */
    private static final class c<T> implements k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final b<T> equivalence;

        @NullableDecl
        private final T target;

        c(b<T> bVar, @NullableDecl T t) {
            j.a(bVar);
            this.equivalence = bVar;
            this.target = t;
        }

        public boolean apply(@NullableDecl T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        public boolean equals(@NullableDecl Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.equivalence.equals(cVar.equivalence) && h.a(this.target, cVar.target);
        }

        public int hashCode() {
            return h.a(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    /* compiled from: Equivalence.java */
    /* loaded from: classes.dex */
    static final class d extends b<Object> implements Serializable {
        static final d INSTANCE = new d();
        private static final long serialVersionUID = 1;

        d() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // e.i.c.a.b
        protected boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // e.i.c.a.b
        protected int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    /* compiled from: Equivalence.java */
    /* loaded from: classes.dex */
    public static final class e<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final b<? super T> equivalence;

        @NullableDecl
        private final T reference;

        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.equivalence.equals(eVar.equivalence)) {
                return this.equivalence.equivalent(this.reference, eVar.reference);
            }
            return false;
        }

        @NullableDecl
        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.hash(this.reference);
        }

        public String toString() {
            return this.equivalence + ".wrap(" + this.reference + ")";
        }

        private e(b<? super T> bVar, @NullableDecl T t) {
            j.a(bVar);
            this.equivalence = bVar;
            this.reference = t;
        }
    }

    public static b<Object> equals() {
        return C0202b.INSTANCE;
    }

    public static b<Object> identity() {
        return d.INSTANCE;
    }

    @ForOverride
    protected abstract boolean doEquivalent(T t, T t2);

    @ForOverride
    protected abstract int doHash(T t);

    public final boolean equivalent(@NullableDecl T t, @NullableDecl T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return doEquivalent(t, t2);
    }

    public final k<T> equivalentTo(@NullableDecl T t) {
        return new c(this, t);
    }

    public final int hash(@NullableDecl T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> b<F> onResultOf(e.i.c.a.d<F, ? extends T> dVar) {
        return new e.i.c.a.e(dVar, this);
    }

    @GwtCompatible(serializable = true)
    public final <S extends T> b<Iterable<S>> pairwise() {
        return new i(this);
    }

    public final <S extends T> e<S> wrap(@NullableDecl S s) {
        return new e<>(s);
    }
}
