package j;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: GzipSource.java */
/* loaded from: classes2.dex */
public final class l implements u {

    /* renamed from: f, reason: collision with root package name */
    private final e f19653f;

    /* renamed from: g, reason: collision with root package name */
    private final Inflater f19654g;

    /* renamed from: h, reason: collision with root package name */
    private final m f19655h;

    /* renamed from: e, reason: collision with root package name */
    private int f19652e = 0;

    /* renamed from: i, reason: collision with root package name */
    private final CRC32 f19656i = new CRC32();

    public l(u uVar) {
        if (uVar != null) {
            this.f19654g = new Inflater(true);
            this.f19653f = n.a(uVar);
            this.f19655h = new m(this.f19653f, this.f19654g);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void a(c cVar, long j2, long j3) {
        q qVar = cVar.f19639e;
        while (true) {
            int i2 = qVar.f19675c;
            int i3 = qVar.f19674b;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= i2 - i3;
            qVar = qVar.f19678f;
        }
        while (j3 > 0) {
            int min = (int) Math.min(qVar.f19675c - r7, j3);
            this.f19656i.update(qVar.f19673a, (int) (qVar.f19674b + j2), min);
            j3 -= min;
            qVar = qVar.f19678f;
            j2 = 0;
        }
    }

    private void i() {
        a("CRC", this.f19653f.f(), (int) this.f19656i.getValue());
        a("ISIZE", this.f19653f.f(), (int) this.f19654g.getBytesWritten());
    }

    @Override // j.u
    public long b(c cVar, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (j2 == 0) {
            return 0L;
        }
        if (this.f19652e == 0) {
            b();
            this.f19652e = 1;
        }
        if (this.f19652e == 1) {
            long j3 = cVar.f19640f;
            long b2 = this.f19655h.b(cVar, j2);
            if (b2 != -1) {
                a(cVar, j3, b2);
                return b2;
            }
            this.f19652e = 2;
        }
        if (this.f19652e == 2) {
            i();
            this.f19652e = 3;
            if (!this.f19653f.d()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f19655h.close();
    }

    @Override // j.u
    public v timeout() {
        return this.f19653f.timeout();
    }

    private void a(String str, int i2, int i3) {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }

    private void b() {
        this.f19653f.f(10L);
        byte g2 = this.f19653f.a().g(3L);
        boolean z = ((g2 >> 1) & 1) == 1;
        if (z) {
            a(this.f19653f.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f19653f.readShort());
        this.f19653f.skip(8L);
        if (((g2 >> 2) & 1) == 1) {
            this.f19653f.f(2L);
            if (z) {
                a(this.f19653f.a(), 0L, 2L);
            }
            long g3 = this.f19653f.a().g();
            this.f19653f.f(g3);
            if (z) {
                a(this.f19653f.a(), 0L, g3);
            }
            this.f19653f.skip(g3);
        }
        if (((g2 >> 3) & 1) == 1) {
            long a2 = this.f19653f.a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    a(this.f19653f.a(), 0L, a2 + 1);
                }
                this.f19653f.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((g2 >> 4) & 1) == 1) {
            long a3 = this.f19653f.a((byte) 0);
            if (a3 != -1) {
                if (z) {
                    a(this.f19653f.a(), 0L, a3 + 1);
                }
                this.f19653f.skip(a3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            a("FHCRC", this.f19653f.g(), (short) this.f19656i.getValue());
            this.f19656i.reset();
        }
    }
}
