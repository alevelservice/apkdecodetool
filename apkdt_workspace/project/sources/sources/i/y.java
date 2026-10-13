package i;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealCall.java */
/* loaded from: classes2.dex */
public final class y implements e {

    /* renamed from: e, reason: collision with root package name */
    final w f18837e;

    /* renamed from: f, reason: collision with root package name */
    final i.g0.g.j f18838f;

    /* renamed from: g, reason: collision with root package name */
    final j.a f18839g = new a();

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private p f18840h;

    /* renamed from: i, reason: collision with root package name */
    final z f18841i;

    /* renamed from: j, reason: collision with root package name */
    final boolean f18842j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f18843k;

    /* compiled from: RealCall.java */
    /* loaded from: classes2.dex */
    class a extends j.a {
        a() {
        }

        @Override // j.a
        protected void i() {
            y.this.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RealCall.java */
    /* loaded from: classes2.dex */
    public final class b extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        private final f f18845f;

        b(f fVar) {
            super("OkHttp %s", y.this.c());
            this.f18845f = fVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(ExecutorService executorService) {
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e2) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e2);
                    y.this.f18840h.a(y.this, interruptedIOException);
                    this.f18845f.a(y.this, interruptedIOException);
                    y.this.f18837e.h().b(this);
                }
            } catch (Throwable th) {
                y.this.f18837e.h().b(this);
                throw th;
            }
        }

        @Override // i.g0.b
        protected void b() {
            IOException e2;
            boolean z;
            y.this.f18839g.g();
            try {
                try {
                    z = true;
                } finally {
                    y.this.f18837e.h().b(this);
                }
            } catch (IOException e3) {
                e2 = e3;
                z = false;
            }
            try {
                this.f18845f.a(y.this, y.this.a());
            } catch (IOException e4) {
                e2 = e4;
                IOException a2 = y.this.a(e2);
                if (!z) {
                    y.this.f18840h.a(y.this, a2);
                    this.f18845f.a(y.this, a2);
                } else {
                    okhttp3.internal.platform.e.c().a(4, "Callback failure for " + y.this.d(), a2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public y c() {
            return y.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String d() {
            return y.this.f18841i.g().g();
        }
    }

    private y(w wVar, z zVar, boolean z) {
        this.f18837e = wVar;
        this.f18841i = zVar;
        this.f18842j = z;
        this.f18838f = new i.g0.g.j(wVar, z);
        this.f18839g.a(wVar.b(), TimeUnit.MILLISECONDS);
    }

    private void e() {
        this.f18838f.a(okhttp3.internal.platform.e.c().a("response.body().close()"));
    }

    public boolean b() {
        return this.f18838f.b();
    }

    String c() {
        return this.f18841i.g().m();
    }

    @Override // i.e
    public void cancel() {
        this.f18838f.a();
    }

    String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(b() ? "canceled " : "");
        sb.append(this.f18842j ? "web socket" : "call");
        sb.append(" to ");
        sb.append(c());
        return sb.toString();
    }

    @Override // i.e
    public b0 execute() {
        synchronized (this) {
            if (!this.f18843k) {
                this.f18843k = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        e();
        this.f18839g.g();
        this.f18840h.b(this);
        try {
            try {
                this.f18837e.h().a(this);
                b0 a2 = a();
                if (a2 != null) {
                    return a2;
                }
                throw new IOException("Canceled");
            } catch (IOException e2) {
                IOException a3 = a(e2);
                this.f18840h.a(this, a3);
                throw a3;
            }
        } finally {
            this.f18837e.h().b(this);
        }
    }

    @Override // i.e
    public z v() {
        return this.f18841i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y a(w wVar, z zVar, boolean z) {
        y yVar = new y(wVar, zVar, z);
        yVar.f18840h = wVar.w().a(yVar);
        return yVar;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public y m9clone() {
        return a(this.f18837e, this.f18841i, this.f18842j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public IOException a(@Nullable IOException iOException) {
        if (!this.f18839g.h()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Override // i.e
    public void a(f fVar) {
        synchronized (this) {
            if (!this.f18843k) {
                this.f18843k = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        e();
        this.f18840h.b(this);
        this.f18837e.h().a(new b(fVar));
    }

    b0 a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f18837e.A());
        arrayList.add(this.f18838f);
        arrayList.add(new i.g0.g.a(this.f18837e.g()));
        arrayList.add(new i.g0.e.a(this.f18837e.B()));
        arrayList.add(new i.g0.f.a(this.f18837e));
        if (!this.f18842j) {
            arrayList.addAll(this.f18837e.C());
        }
        arrayList.add(new i.g0.g.b(this.f18842j));
        b0 a2 = new i.g0.g.g(arrayList, null, null, null, 0, this.f18841i, this, this.f18840h, this.f18837e.d(), this.f18837e.J(), this.f18837e.N()).a(this.f18841i);
        if (!this.f18838f.b()) {
            return a2;
        }
        i.g0.c.a(a2);
        throw new IOException("Canceled");
    }
}
