package g.c.a.f.a;

import g.c.a.d.e;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableHelper.java */
/* loaded from: classes2.dex */
public enum a implements g.c.a.c.c {
    DISPOSED;

    public static boolean dispose(AtomicReference<g.c.a.c.c> atomicReference) {
        g.c.a.c.c andSet;
        g.c.a.c.c cVar = atomicReference.get();
        a aVar = DISPOSED;
        if (cVar == aVar || (andSet = atomicReference.getAndSet(aVar)) == aVar) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    public static boolean isDisposed(g.c.a.c.c cVar) {
        return cVar == DISPOSED;
    }

    public static boolean replace(AtomicReference<g.c.a.c.c> atomicReference, g.c.a.c.c cVar) {
        g.c.a.c.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        return true;
    }

    public static void reportDisposableSet() {
        g.c.a.h.a.b(new e("Disposable already set!"));
    }

    public static boolean set(AtomicReference<g.c.a.c.c> atomicReference, g.c.a.c.c cVar) {
        g.c.a.c.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }

    public static boolean setOnce(AtomicReference<g.c.a.c.c> atomicReference, g.c.a.c.c cVar) {
        Objects.requireNonNull(cVar, "d is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        reportDisposableSet();
        return false;
    }

    public static boolean trySet(AtomicReference<g.c.a.c.c> atomicReference, g.c.a.c.c cVar) {
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        if (atomicReference.get() != DISPOSED) {
            return false;
        }
        cVar.dispose();
        return false;
    }

    public static boolean validate(g.c.a.c.c cVar, g.c.a.c.c cVar2) {
        if (cVar2 == null) {
            g.c.a.h.a.b(new NullPointerException("next is null"));
            return false;
        }
        if (cVar == null) {
            return true;
        }
        cVar2.dispose();
        reportDisposableSet();
        return false;
    }

    @Override // g.c.a.c.c
    public void dispose() {
    }

    public boolean isDisposed() {
        return true;
    }
}
