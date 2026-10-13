package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.fy0;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ly0<InputT, OutputT> extends fy0.k<OutputT> {
    private static final Logger m = Logger.getLogger(ly0.class.getName());

    /* renamed from: l, reason: collision with root package name */
    @NullableDecl
    private a f7989l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar) {
        this.f7989l = aVar;
        aVar.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final void b() {
        super.b();
        a aVar = this.f7989l;
        if (aVar != null) {
            this.f7989l = null;
            ex0 ex0Var = aVar.f7990i;
            boolean d2 = d();
            if (d2) {
                aVar.c();
            }
            if (isCancelled() && (ex0Var != null)) {
                ay0 ay0Var = (ay0) ex0Var.iterator();
                while (ay0Var.hasNext()) {
                    ((qz0) ay0Var.next()).cancel(d2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final String c() {
        ex0 ex0Var;
        a aVar = this.f7989l;
        if (aVar == null || (ex0Var = aVar.f7990i) == null) {
            return null;
        }
        String valueOf = String.valueOf(ex0Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
        sb.append("futures=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    static /* synthetic */ a a(ly0 ly0Var, a aVar) {
        ly0Var.f7989l = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public abstract class a extends my0 implements Runnable {

        /* renamed from: i, reason: collision with root package name */
        private ex0<? extends qz0<? extends InputT>> f7990i;

        /* renamed from: j, reason: collision with root package name */
        private final boolean f7991j;

        /* renamed from: k, reason: collision with root package name */
        private final boolean f7992k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(ex0<? extends qz0<? extends InputT>> ex0Var, boolean z, boolean z2) {
            super(ex0Var.size());
            uw0.a(ex0Var);
            this.f7990i = ex0Var;
            this.f7991j = z;
            this.f7992k = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void a(java.lang.Throwable r8) {
            /*
                r7 = this;
                com.google.android.gms.internal.ads.uw0.a(r8)
                boolean r0 = r7.f7991j
                r1 = 1
                if (r0 == 0) goto L1d
                com.google.android.gms.internal.ads.ly0 r0 = com.google.android.gms.internal.ads.ly0.this
                boolean r0 = r0.a(r8)
                if (r0 == 0) goto L14
                r7.d()
                goto L1e
            L14:
                java.util.Set r2 = r7.a()
                boolean r2 = com.google.android.gms.internal.ads.ly0.b(r2, r8)
                goto L1f
            L1d:
                r0 = 0
            L1e:
                r2 = 1
            L1f:
                boolean r3 = r8 instanceof java.lang.Error
                boolean r4 = r7.f7991j
                r0 = r0 ^ r1
                r0 = r0 & r4
                r0 = r0 & r2
                r0 = r0 | r3
                if (r0 == 0) goto L3f
                if (r3 == 0) goto L2e
                java.lang.String r0 = "Input Future failed with Error"
                goto L30
            L2e:
                java.lang.String r0 = "Got more than one input Future failure. Logging failures after the first"
            L30:
                r5 = r0
                java.util.logging.Logger r1 = com.google.android.gms.internal.ads.ly0.g()
                java.util.logging.Level r2 = java.util.logging.Level.SEVERE
                java.lang.String r3 = "com.google.common.util.concurrent.AggregateFuture$RunningState"
                java.lang.String r4 = "handleException"
                r6 = r8
                r1.logp(r2, r3, r4, r5, r6)
            L3f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ly0.a.a(java.lang.Throwable):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f() {
            if (this.f7990i.isEmpty()) {
                e();
                return;
            }
            if (this.f7991j) {
                int i2 = 0;
                ay0 ay0Var = (ay0) this.f7990i.iterator();
                while (ay0Var.hasNext()) {
                    qz0 qz0Var = (qz0) ay0Var.next();
                    qz0Var.a(new ny0(this, i2, qz0Var), xy0.INSTANCE);
                    i2++;
                }
                return;
            }
            ay0 ay0Var2 = (ay0) this.f7990i.iterator();
            while (ay0Var2.hasNext()) {
                ((qz0) ay0Var2.next()).a(this, xy0.INSTANCE);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g() {
            int b2 = b();
            int i2 = 0;
            uw0.b(b2 >= 0, "Less than 0 remaining futures");
            if (b2 == 0) {
                if (this.f7992k & (true ^ this.f7991j)) {
                    ay0 ay0Var = (ay0) this.f7990i.iterator();
                    while (ay0Var.hasNext()) {
                        a(i2, (qz0) ay0Var.next());
                        i2++;
                    }
                }
                e();
            }
        }

        abstract void a(boolean z, int i2, @NullableDecl InputT inputt);

        void c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.f7990i = null;
        }

        abstract void e();

        @Override // java.lang.Runnable
        public final void run() {
            g();
        }

        @Override // com.google.android.gms.internal.ads.my0
        final void a(Set<Throwable> set) {
            if (ly0.this.isCancelled()) {
                return;
            }
            ly0.a(set, ly0.this.a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final void a(int i2, Future<? extends InputT> future) {
            uw0.b(this.f7991j || !ly0.this.isDone() || ly0.this.isCancelled(), "Future was done before all dependencies completed");
            try {
                uw0.b(future.isDone(), "Tried to set value from future which is not done");
                if (this.f7991j) {
                    if (future.isCancelled()) {
                        ly0.a(ly0.this, (a) null);
                        ly0.this.cancel(false);
                        return;
                    } else {
                        Object a2 = gz0.a((Future<Object>) future);
                        if (this.f7992k) {
                            a(this.f7991j, i2, (int) a2);
                            return;
                        }
                        return;
                    }
                }
                if (!this.f7992k || future.isCancelled()) {
                    return;
                }
                a(this.f7991j, i2, (int) gz0.a((Future) future));
            } catch (ExecutionException e2) {
                a(e2.getCause());
            } catch (Throwable th) {
                a(th);
            }
        }
    }
}
