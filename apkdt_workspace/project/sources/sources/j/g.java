package j;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: DeflaterSink.java */
/* loaded from: classes2.dex */
public final class g implements t {

    /* renamed from: e, reason: collision with root package name */
    private final d f19641e;

    /* renamed from: f, reason: collision with root package name */
    private final Deflater f19642f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f19643g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater != null) {
            this.f19641e = dVar;
            this.f19642f = deflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }

    @Override // j.t
    public void a(c cVar, long j2) {
        w.a(cVar.f19640f, 0L, j2);
        while (j2 > 0) {
            q qVar = cVar.f19639e;
            int min = (int) Math.min(j2, qVar.f19675c - qVar.f19674b);
            this.f19642f.setInput(qVar.f19673a, qVar.f19674b, min);
            a(false);
            long j3 = min;
            cVar.f19640f -= j3;
            qVar.f19674b += min;
            if (qVar.f19674b == qVar.f19675c) {
                cVar.f19639e = qVar.b();
                r.a(qVar);
            }
            j2 -= j3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f19642f.finish();
        a(false);
    }

    @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19643g) {
            return;
        }
        try {
            c();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f19642f.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f19641e.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f19643g = true;
        if (th == null) {
            return;
        }
        w.a(th);
        throw null;
    }

    @Override // j.t, java.io.Flushable
    public void flush() {
        a(true);
        this.f19641e.flush();
    }

    @Override // j.t
    public v timeout() {
        return this.f19641e.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.f19641e + ")";
    }

    @IgnoreJRERequirement
    private void a(boolean z) {
        q c2;
        int deflate;
        c a2 = this.f19641e.a();
        while (true) {
            c2 = a2.c(1);
            if (z) {
                Deflater deflater = this.f19642f;
                byte[] bArr = c2.f19673a;
                int i2 = c2.f19675c;
                deflate = deflater.deflate(bArr, i2, 8192 - i2, 2);
            } else {
                Deflater deflater2 = this.f19642f;
                byte[] bArr2 = c2.f19673a;
                int i3 = c2.f19675c;
                deflate = deflater2.deflate(bArr2, i3, 8192 - i3);
            }
            if (deflate > 0) {
                c2.f19675c += deflate;
                a2.f19640f += deflate;
                this.f19641e.b();
            } else if (this.f19642f.needsInput()) {
                break;
            }
        }
        if (c2.f19674b == c2.f19675c) {
            a2.f19639e = c2.b();
            r.a(c2);
        }
    }
}
