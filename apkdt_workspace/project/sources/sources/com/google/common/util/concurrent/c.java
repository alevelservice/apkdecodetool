package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import e.i.c.a.g;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* compiled from: Futures.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class c extends d {

    /* compiled from: Futures.java */
    /* loaded from: classes.dex */
    private static final class a<V> implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final Future<V> f14261e;

        /* renamed from: f, reason: collision with root package name */
        final b<? super V> f14262f;

        a(Future<V> future, b<? super V> bVar) {
            this.f14261e = future;
            this.f14262f = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f14262f.a((b<? super V>) c.a(this.f14261e));
            } catch (Error e2) {
                e = e2;
                this.f14262f.a(e);
            } catch (RuntimeException e3) {
                e = e3;
                this.f14262f.a(e);
            } catch (ExecutionException e4) {
                this.f14262f.a(e4.getCause());
            }
        }

        public String toString() {
            g.b a2 = e.i.c.a.g.a(this);
            a2.a(this.f14262f);
            return a2.toString();
        }
    }

    public static <V> void a(e<V> eVar, b<? super V> bVar, Executor executor) {
        e.i.c.a.j.a(bVar);
        eVar.a(new a(eVar, bVar), executor);
    }

    @CanIgnoreReturnValue
    public static <V> V a(Future<V> future) {
        e.i.c.a.j.b(future.isDone(), "Future was expected to be done: %s", future);
        return (V) k.a(future);
    }
}
