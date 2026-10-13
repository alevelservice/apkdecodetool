package j;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource.java */
/* loaded from: classes2.dex */
public final class m implements u {

    /* renamed from: e, reason: collision with root package name */
    private final e f19657e;

    /* renamed from: f, reason: collision with root package name */
    private final Inflater f19658f;

    /* renamed from: g, reason: collision with root package name */
    private int f19659g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f19660h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater != null) {
            this.f19657e = eVar;
            this.f19658f = inflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }

    private void i() {
        int i2 = this.f19659g;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f19658f.getRemaining();
        this.f19659g -= remaining;
        this.f19657e.skip(remaining);
    }

    @Override // j.u
    public long b(c cVar, long j2) {
        boolean b2;
        if (j2 >= 0) {
            if (this.f19660h) {
                throw new IllegalStateException("closed");
            }
            if (j2 == 0) {
                return 0L;
            }
            do {
                b2 = b();
                try {
                    q c2 = cVar.c(1);
                    int inflate = this.f19658f.inflate(c2.f19673a, c2.f19675c, (int) Math.min(j2, 8192 - c2.f19675c));
                    if (inflate > 0) {
                        c2.f19675c += inflate;
                        long j3 = inflate;
                        cVar.f19640f += j3;
                        return j3;
                    }
                    if (!this.f19658f.finished() && !this.f19658f.needsDictionary()) {
                    }
                    i();
                    if (c2.f19674b != c2.f19675c) {
                        return -1L;
                    }
                    cVar.f19639e = c2.b();
                    r.a(c2);
                    return -1L;
                } catch (DataFormatException e2) {
                    throw new IOException(e2);
                }
            } while (!b2);
            throw new EOFException("source exhausted prematurely");
        }
        throw new IllegalArgumentException("byteCount < 0: " + j2);
    }

    @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19660h) {
            return;
        }
        this.f19658f.end();
        this.f19660h = true;
        this.f19657e.close();
    }

    @Override // j.u
    public v timeout() {
        return this.f19657e.timeout();
    }

    public final boolean b() {
        if (!this.f19658f.needsInput()) {
            return false;
        }
        i();
        if (this.f19658f.getRemaining() == 0) {
            if (this.f19657e.d()) {
                return true;
            }
            q qVar = this.f19657e.a().f19639e;
            int i2 = qVar.f19675c;
            int i3 = qVar.f19674b;
            this.f19659g = i2 - i3;
            this.f19658f.setInput(qVar.f19673a, i3, this.f19659g);
            return false;
        }
        throw new IllegalStateException("?");
    }
}
