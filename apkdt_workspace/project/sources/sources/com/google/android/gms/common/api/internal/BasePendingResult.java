package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.m> extends com.google.android.gms.common.api.h<R> {
    static final ThreadLocal<Boolean> n = new l1();

    /* renamed from: a, reason: collision with root package name */
    private final Object f5014a;

    /* renamed from: b, reason: collision with root package name */
    private final a<R> f5015b;

    /* renamed from: c, reason: collision with root package name */
    private final CountDownLatch f5016c;

    /* renamed from: d, reason: collision with root package name */
    private final ArrayList<h.a> f5017d;

    /* renamed from: e, reason: collision with root package name */
    private com.google.android.gms.common.api.n<? super R> f5018e;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicReference<a1> f5019f;

    /* renamed from: g, reason: collision with root package name */
    private R f5020g;

    /* renamed from: h, reason: collision with root package name */
    private Status f5021h;

    /* renamed from: i, reason: collision with root package name */
    private volatile boolean f5022i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f5023j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f5024k;

    /* renamed from: l, reason: collision with root package name */
    private volatile x0<R> f5025l;
    private boolean m;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a<R extends com.google.android.gms.common.api.m> extends com.google.android.gms.internal.base.c {
        public a(Looper looper) {
            super(looper);
        }

        public final void a(com.google.android.gms.common.api.n<? super R> nVar, R r) {
            BasePendingResult.b(nVar);
            sendMessage(obtainMessage(1, new Pair(nVar, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                Pair pair = (Pair) message.obj;
                com.google.android.gms.common.api.n nVar = (com.google.android.gms.common.api.n) pair.first;
                com.google.android.gms.common.api.m mVar = (com.google.android.gms.common.api.m) pair.second;
                try {
                    nVar.a(mVar);
                    return;
                } catch (RuntimeException e2) {
                    BasePendingResult.c(mVar);
                    throw e2;
                }
            }
            if (i2 != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                sb.toString();
                new Exception();
                return;
            }
            ((BasePendingResult) message.obj).b(Status.f4991l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public final class b {
        private b() {
        }

        protected final void finalize() {
            BasePendingResult.c(BasePendingResult.this.f5020g);
            super.finalize();
        }

        /* synthetic */ b(BasePendingResult basePendingResult, l1 l1Var) {
            this();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f5014a = new Object();
        this.f5016c = new CountDownLatch(1);
        this.f5017d = new ArrayList<>();
        this.f5019f = new AtomicReference<>();
        this.m = false;
        this.f5015b = new a<>(Looper.getMainLooper());
        new WeakReference(null);
    }

    private static <R extends com.google.android.gms.common.api.m> com.google.android.gms.common.api.n<R> a(com.google.android.gms.common.api.n<R> nVar) {
        return nVar;
    }

    private final R c() {
        R r;
        synchronized (this.f5014a) {
            com.google.android.gms.common.internal.m.b(!this.f5022i, "Result has already been consumed.");
            com.google.android.gms.common.internal.m.b(a(), "Result is not ready.");
            r = this.f5020g;
            this.f5020g = null;
            this.f5018e = null;
            this.f5022i = true;
        }
        a1 andSet = this.f5019f.getAndSet(null);
        if (andSet != null) {
            andSet.a(this);
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    @KeepForSdk
    public abstract R a(Status status);

    @KeepForSdk
    public final boolean a() {
        return this.f5016c.getCount() == 0;
    }

    public final void b(Status status) {
        synchronized (this.f5014a) {
            if (!a()) {
                a((BasePendingResult<R>) a(status));
                this.f5024k = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.h
    public final R a(long j2, TimeUnit timeUnit) {
        if (j2 > 0) {
            com.google.android.gms.common.internal.m.c("await must not be called on the UI thread when time is greater than zero.");
        }
        com.google.android.gms.common.internal.m.b(!this.f5022i, "Result has already been consumed.");
        com.google.android.gms.common.internal.m.b(this.f5025l == null, "Cannot await if then() has been called.");
        try {
            if (!this.f5016c.await(j2, timeUnit)) {
                b(Status.f4991l);
            }
        } catch (InterruptedException unused) {
            b(Status.f4989j);
        }
        com.google.android.gms.common.internal.m.b(a(), "Result is not ready.");
        return c();
    }

    public final void b() {
        this.m = this.m || n.get().booleanValue();
    }

    private final void b(R r) {
        this.f5020g = r;
        this.f5016c.countDown();
        this.f5021h = this.f5020g.i();
        l1 l1Var = null;
        if (this.f5023j) {
            this.f5018e = null;
        } else if (this.f5018e == null) {
            if (this.f5020g instanceof com.google.android.gms.common.api.j) {
                new b(this, l1Var);
            }
        } else {
            this.f5015b.removeMessages(2);
            this.f5015b.a(this.f5018e, c());
        }
        ArrayList<h.a> arrayList = this.f5017d;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            h.a aVar = arrayList.get(i2);
            i2++;
            aVar.a(this.f5021h);
        }
        this.f5017d.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public BasePendingResult(com.google.android.gms.common.api.f fVar) {
        this.f5014a = new Object();
        this.f5016c = new CountDownLatch(1);
        this.f5017d = new ArrayList<>();
        this.f5019f = new AtomicReference<>();
        this.m = false;
        this.f5015b = new a<>(fVar != null ? fVar.a() : Looper.getMainLooper());
        new WeakReference(fVar);
    }

    @Override // com.google.android.gms.common.api.h
    public final void a(h.a aVar) {
        com.google.android.gms.common.internal.m.a(aVar != null, "Callback cannot be null.");
        synchronized (this.f5014a) {
            if (a()) {
                aVar.a(this.f5021h);
            } else {
                this.f5017d.add(aVar);
            }
        }
    }

    public static void c(com.google.android.gms.common.api.m mVar) {
        if (mVar instanceof com.google.android.gms.common.api.j) {
            try {
                ((com.google.android.gms.common.api.j) mVar).a();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(mVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                sb.toString();
            }
        }
    }

    @KeepForSdk
    public final void a(R r) {
        synchronized (this.f5014a) {
            if (!this.f5024k && !this.f5023j) {
                a();
                boolean z = true;
                com.google.android.gms.common.internal.m.b(!a(), "Results have already been set");
                if (this.f5022i) {
                    z = false;
                }
                com.google.android.gms.common.internal.m.b(z, "Result has already been consumed");
                b((BasePendingResult<R>) r);
                return;
            }
            c(r);
        }
    }

    static /* synthetic */ com.google.android.gms.common.api.n b(com.google.android.gms.common.api.n nVar) {
        a(nVar);
        return nVar;
    }
}
