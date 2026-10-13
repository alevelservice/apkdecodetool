package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class hy0<I, O, F, T> extends dz0<O> implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    @NullableDecl
    private qz0<? extends I> f7202l;

    @NullableDecl
    private F m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hy0(qz0<? extends I> qz0Var, F f2) {
        uw0.a(qz0Var);
        this.f7202l = qz0Var;
        uw0.a(f2);
        this.m = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> qz0<O> a(qz0<I> qz0Var, qy0<? super I, ? extends O> qy0Var, Executor executor) {
        uw0.a(executor);
        ky0 ky0Var = new ky0(qz0Var, qy0Var);
        qz0Var.a(ky0Var, sz0.a(executor, ky0Var));
        return ky0Var;
    }

    @NullableDecl
    abstract T a(F f2, @NullableDecl I i2);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final void b() {
        a((Future<?>) this.f7202l);
        this.f7202l = null;
        this.m = null;
    }

    abstract void b(@NullableDecl T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final String c() {
        String str;
        qz0<? extends I> qz0Var = this.f7202l;
        F f2 = this.m;
        String c2 = super.c();
        if (qz0Var != null) {
            String valueOf = String.valueOf(qz0Var);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f2 == null) {
            if (c2 == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(c2);
            return valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        String valueOf4 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf4).length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(valueOf4);
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        qz0<? extends I> qz0Var = this.f7202l;
        F f2 = this.m;
        if ((isCancelled() | (qz0Var == null)) || (f2 == null)) {
            return;
        }
        this.f7202l = null;
        if (qz0Var.isCancelled()) {
            a((qz0) qz0Var);
            return;
        }
        try {
            try {
                Object a2 = a((hy0<I, O, F, T>) f2, (F) gz0.a((Future) qz0Var));
                this.m = null;
                b((hy0<I, O, F, T>) a2);
            } catch (Throwable th) {
                try {
                    a(th);
                } finally {
                    this.m = null;
                }
            }
        } catch (Error e2) {
            a((Throwable) e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            a((Throwable) e3);
        } catch (ExecutionException e4) {
            a(e4.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> qz0<O> a(qz0<I> qz0Var, pw0<? super I, ? extends O> pw0Var, Executor executor) {
        uw0.a(pw0Var);
        jy0 jy0Var = new jy0(qz0Var, pw0Var);
        qz0Var.a(jy0Var, sz0.a(executor, jy0Var));
        return jy0Var;
    }
}
