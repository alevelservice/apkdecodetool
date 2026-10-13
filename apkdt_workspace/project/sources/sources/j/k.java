package j;

import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* compiled from: GzipSink.java */
/* loaded from: classes2.dex */
public final class k implements t {

    /* renamed from: e, reason: collision with root package name */
    private final d f19647e;

    /* renamed from: f, reason: collision with root package name */
    private final Deflater f19648f;

    /* renamed from: g, reason: collision with root package name */
    private final g f19649g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f19650h;

    /* renamed from: i, reason: collision with root package name */
    private final CRC32 f19651i = new CRC32();

    public k(t tVar) {
        if (tVar != null) {
            this.f19648f = new Deflater(-1, true);
            this.f19647e = n.a(tVar);
            this.f19649g = new g(this.f19647e, this.f19648f);
            d();
            return;
        }
        throw new IllegalArgumentException("sink == null");
    }

    private void b(c cVar, long j2) {
        q qVar = cVar.f19639e;
        while (j2 > 0) {
            int min = (int) Math.min(j2, qVar.f19675c - qVar.f19674b);
            this.f19651i.update(qVar.f19673a, qVar.f19674b, min);
            j2 -= min;
            qVar = qVar.f19678f;
        }
    }

    private void c() {
        this.f19647e.a((int) this.f19651i.getValue());
        this.f19647e.a((int) this.f19648f.getBytesRead());
    }

    private void d() {
        c a2 = this.f19647e.a();
        a2.writeShort(8075);
        a2.writeByte(8);
        a2.writeByte(0);
        a2.writeInt(0);
        a2.writeByte(0);
        a2.writeByte(0);
    }

    @Override // j.t
    public void a(c cVar, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (j2 == 0) {
            return;
        }
        b(cVar, j2);
        this.f19649g.a(cVar, j2);
    }

    @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19650h) {
            return;
        }
        try {
            this.f19649g.c();
            c();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f19648f.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f19647e.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f19650h = true;
        if (th == null) {
            return;
        }
        w.a(th);
        throw null;
    }

    @Override // j.t, java.io.Flushable
    public void flush() {
        this.f19649g.flush();
    }

    @Override // j.t
    public v timeout() {
        return this.f19647e.timeout();
    }
}
