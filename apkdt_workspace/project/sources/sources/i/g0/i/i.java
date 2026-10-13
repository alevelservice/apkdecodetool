package i.g0.i;

import i.g0.i.c;
import i.r;
import j.t;
import j.u;
import j.v;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Http2Stream.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: b, reason: collision with root package name */
    long f18676b;

    /* renamed from: c, reason: collision with root package name */
    final int f18677c;

    /* renamed from: d, reason: collision with root package name */
    final g f18678d;

    /* renamed from: f, reason: collision with root package name */
    private c.a f18680f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f18681g;

    /* renamed from: h, reason: collision with root package name */
    private final b f18682h;

    /* renamed from: i, reason: collision with root package name */
    final a f18683i;

    /* renamed from: a, reason: collision with root package name */
    long f18675a = 0;

    /* renamed from: e, reason: collision with root package name */
    private final Deque<r> f18679e = new ArrayDeque();

    /* renamed from: j, reason: collision with root package name */
    final c f18684j = new c();

    /* renamed from: k, reason: collision with root package name */
    final c f18685k = new c();

    /* renamed from: l, reason: collision with root package name */
    i.g0.i.b f18686l = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes2.dex */
    public final class b implements u {

        /* renamed from: e, reason: collision with root package name */
        private final j.c f18691e = new j.c();

        /* renamed from: f, reason: collision with root package name */
        private final j.c f18692f = new j.c();

        /* renamed from: g, reason: collision with root package name */
        private final long f18693g;

        /* renamed from: h, reason: collision with root package name */
        boolean f18694h;

        /* renamed from: i, reason: collision with root package name */
        boolean f18695i;

        b(long j2) {
            this.f18693g = j2;
        }

        private void a(long j2) {
            i.this.f18678d.h(j2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x00cb, code lost:
        
            if (r11 == (-1)) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
        
            a(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00d0, code lost:
        
            return r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00d1, code lost:
        
            if (r0 != null) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00d3, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
        
            throw new i.g0.i.n(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00e1, code lost:
        
            throw new java.io.IOException("stream closed");
         */
        @Override // j.u
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long b(j.c r18, long r19) {
            /*
                Method dump skipped, instructions count: 263
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: i.g0.i.i.b.b(j.c, long):long");
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long z;
            ArrayList arrayList;
            c.a aVar;
            synchronized (i.this) {
                this.f18694h = true;
                z = this.f18692f.z();
                this.f18692f.n();
                arrayList = null;
                if (i.this.f18679e.isEmpty() || i.this.f18680f == null) {
                    aVar = null;
                } else {
                    arrayList = new ArrayList(i.this.f18679e);
                    i.this.f18679e.clear();
                    aVar = i.this.f18680f;
                }
                i.this.notifyAll();
            }
            if (z > 0) {
                a(z);
            }
            i.this.a();
            if (aVar != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    aVar.a((r) it.next());
                }
            }
        }

        @Override // j.u
        public v timeout() {
            return i.this.f18684j;
        }

        void a(j.e eVar, long j2) {
            boolean z;
            boolean z2;
            boolean z3;
            while (j2 > 0) {
                synchronized (i.this) {
                    z = this.f18695i;
                    z2 = true;
                    z3 = this.f18692f.z() + j2 > this.f18693g;
                }
                if (z3) {
                    eVar.skip(j2);
                    i.this.b(i.g0.i.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    eVar.skip(j2);
                    return;
                }
                long b2 = eVar.b(this.f18691e, j2);
                if (b2 != -1) {
                    j2 -= b2;
                    synchronized (i.this) {
                        if (this.f18692f.z() != 0) {
                            z2 = false;
                        }
                        this.f18692f.a(this.f18691e);
                        if (z2) {
                            i.this.notifyAll();
                        }
                    }
                } else {
                    throw new EOFException();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes2.dex */
    public class c extends j.a {
        c() {
        }

        @Override // j.a
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // j.a
        protected void i() {
            i.this.b(i.g0.i.b.CANCEL);
        }

        public void k() {
            if (h()) {
                throw b((IOException) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i2, g gVar, boolean z, boolean z2, @Nullable r rVar) {
        if (gVar != null) {
            this.f18677c = i2;
            this.f18678d = gVar;
            this.f18676b = gVar.s.c();
            this.f18682h = new b(gVar.r.c());
            this.f18683i = new a();
            this.f18682h.f18695i = z2;
            this.f18683i.f18689g = z;
            if (rVar != null) {
                this.f18679e.add(rVar);
            }
            if (f() && rVar != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            if (!f() && rVar == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
            return;
        }
        throw new NullPointerException("connection == null");
    }

    public int c() {
        return this.f18677c;
    }

    public t d() {
        synchronized (this) {
            if (!this.f18681g && !f()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f18683i;
    }

    public u e() {
        return this.f18682h;
    }

    public boolean f() {
        return this.f18678d.f18615e == ((this.f18677c & 1) == 1);
    }

    public synchronized boolean g() {
        if (this.f18686l != null) {
            return false;
        }
        if ((this.f18682h.f18695i || this.f18682h.f18694h) && (this.f18683i.f18689g || this.f18683i.f18688f)) {
            if (this.f18681g) {
                return false;
            }
        }
        return true;
    }

    public v h() {
        return this.f18684j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        boolean g2;
        synchronized (this) {
            this.f18682h.f18695i = true;
            g2 = g();
            notifyAll();
        }
        if (g2) {
            return;
        }
        this.f18678d.e(this.f18677c);
    }

    public synchronized r j() {
        this.f18684j.g();
        while (this.f18679e.isEmpty() && this.f18686l == null) {
            try {
                k();
            } catch (Throwable th) {
                this.f18684j.k();
                throw th;
            }
        }
        this.f18684j.k();
        if (!this.f18679e.isEmpty()) {
        } else {
            throw new n(this.f18686l);
        }
        return this.f18679e.removeFirst();
    }

    void k() {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public v l() {
        return this.f18685k;
    }

    public void a(i.g0.i.b bVar) {
        if (d(bVar)) {
            this.f18678d.b(this.f18677c, bVar);
        }
    }

    public void b(i.g0.i.b bVar) {
        if (d(bVar)) {
            this.f18678d.c(this.f18677c, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c(i.g0.i.b bVar) {
        if (this.f18686l == null) {
            this.f18686l = bVar;
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes2.dex */
    public final class a implements t {

        /* renamed from: e, reason: collision with root package name */
        private final j.c f18687e = new j.c();

        /* renamed from: f, reason: collision with root package name */
        boolean f18688f;

        /* renamed from: g, reason: collision with root package name */
        boolean f18689g;

        a() {
        }

        @Override // j.t
        public void a(j.c cVar, long j2) {
            this.f18687e.a(cVar, j2);
            while (this.f18687e.z() >= 16384) {
                a(false);
            }
        }

        @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (i.this) {
                if (this.f18688f) {
                    return;
                }
                if (!i.this.f18683i.f18689g) {
                    if (this.f18687e.z() > 0) {
                        while (this.f18687e.z() > 0) {
                            a(true);
                        }
                    } else {
                        i iVar = i.this;
                        iVar.f18678d.a(iVar.f18677c, true, (j.c) null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f18688f = true;
                }
                i.this.f18678d.flush();
                i.this.a();
            }
        }

        @Override // j.t, java.io.Flushable
        public void flush() {
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f18687e.z() > 0) {
                a(false);
                i.this.f18678d.flush();
            }
        }

        @Override // j.t
        public v timeout() {
            return i.this.f18685k;
        }

        private void a(boolean z) {
            long min;
            synchronized (i.this) {
                i.this.f18685k.g();
                while (i.this.f18676b <= 0 && !this.f18689g && !this.f18688f && i.this.f18686l == null) {
                    try {
                        i.this.k();
                    } finally {
                    }
                }
                i.this.f18685k.k();
                i.this.b();
                min = Math.min(i.this.f18676b, this.f18687e.z());
                i.this.f18676b -= min;
            }
            i.this.f18685k.g();
            try {
                i.this.f18678d.a(i.this.f18677c, z && min == this.f18687e.z(), this.f18687e, min);
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<i.g0.i.c> list) {
        boolean g2;
        synchronized (this) {
            this.f18681g = true;
            this.f18679e.add(i.g0.c.b(list));
            g2 = g();
            notifyAll();
        }
        if (g2) {
            return;
        }
        this.f18678d.e(this.f18677c);
    }

    void b() {
        a aVar = this.f18683i;
        if (!aVar.f18688f) {
            if (!aVar.f18689g) {
                i.g0.i.b bVar = this.f18686l;
                if (bVar != null) {
                    throw new n(bVar);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    private boolean d(i.g0.i.b bVar) {
        synchronized (this) {
            if (this.f18686l != null) {
                return false;
            }
            if (this.f18682h.f18695i && this.f18683i.f18689g) {
                return false;
            }
            this.f18686l = bVar;
            notifyAll();
            this.f18678d.e(this.f18677c);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j.e eVar, int i2) {
        this.f18682h.a(eVar, i2);
    }

    void a() {
        boolean z;
        boolean g2;
        synchronized (this) {
            z = !this.f18682h.f18695i && this.f18682h.f18694h && (this.f18683i.f18689g || this.f18683i.f18688f);
            g2 = g();
        }
        if (z) {
            a(i.g0.i.b.CANCEL);
        } else {
            if (g2) {
                return;
            }
            this.f18678d.e(this.f18677c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2) {
        this.f18676b += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }
}
