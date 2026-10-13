package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class dy0<V, X extends Throwable, F, T> extends dz0<V> implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    @NullableDecl
    private qz0<? extends V> f6324l;

    @NullableDecl
    private Class<X> m;

    @NullableDecl
    private F n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dy0(qz0<? extends V> qz0Var, Class<X> cls, F f2) {
        uw0.a(qz0Var);
        this.f6324l = qz0Var;
        uw0.a(cls);
        this.m = cls;
        uw0.a(f2);
        this.n = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends Throwable, V> qz0<V> a(qz0<? extends V> qz0Var, Class<X> cls, qy0<? super X, ? extends V> qy0Var, Executor executor) {
        gy0 gy0Var = new gy0(qz0Var, cls, qy0Var);
        qz0Var.a(gy0Var, sz0.a(executor, gy0Var));
        return gy0Var;
    }

    @NullableDecl
    abstract T a(F f2, X x);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final void b() {
        a((Future<?>) this.f6324l);
        this.f6324l = null;
        this.m = null;
        this.n = null;
    }

    abstract void b(@NullableDecl T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final String c() {
        String str;
        qz0<? extends V> qz0Var = this.f6324l;
        Class<X> cls = this.m;
        F f2 = this.n;
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
        if (cls == null || f2 == null) {
            if (c2 == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(c2);
            return valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        String valueOf4 = String.valueOf(cls);
        String valueOf5 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length());
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(valueOf4);
        sb2.append("], fallback=[");
        sb2.append(valueOf5);
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.qz0<? extends V> r0 = r7.f6324l
            java.lang.Class<X extends java.lang.Throwable> r1 = r7.m
            F r2 = r7.n
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = 1
            goto Ld
        Lc:
            r5 = 0
        Ld:
            if (r1 != 0) goto L11
            r6 = 1
            goto L12
        L11:
            r6 = 0
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = 0
        L17:
            r3 = r3 | r5
            boolean r4 = r7.isCancelled()
            r3 = r3 | r4
            if (r3 == 0) goto L20
            return
        L20:
            r3 = 0
            r7.f6324l = r3
            java.lang.Object r4 = com.google.android.gms.internal.ads.gz0.a(r0)     // Catch: java.lang.Throwable -> L2a java.util.concurrent.ExecutionException -> L2c
            r5 = r4
            r4 = r3
            goto L37
        L2a:
            r4 = move-exception
            goto L36
        L2c:
            r4 = move-exception
            java.lang.Throwable r4 = r4.getCause()
            com.google.android.gms.internal.ads.uw0.a(r4)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
        L36:
            r5 = r3
        L37:
            if (r4 != 0) goto L3d
            r7.a(r5)
            return
        L3d:
            boolean r1 = r1.isInstance(r4)
            if (r1 != 0) goto L47
            r7.a(r0)
            return
        L47:
            java.lang.Object r0 = r7.a(r2, r4)     // Catch: java.lang.Throwable -> L53
            r7.m = r3
            r7.n = r3
            r7.b(r0)
            return
        L53:
            r0 = move-exception
            r7.a(r0)     // Catch: java.lang.Throwable -> L5c
            r7.m = r3
            r7.n = r3
            return
        L5c:
            r0 = move-exception
            r7.m = r3
            r7.n = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dy0.run():void");
    }
}
