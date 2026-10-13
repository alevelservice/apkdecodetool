package i.g0.i;

import i.g0.i.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Writer.java */
/* loaded from: classes2.dex */
final class j implements Closeable {

    /* renamed from: k, reason: collision with root package name */
    private static final Logger f18698k = Logger.getLogger(e.class.getName());

    /* renamed from: e, reason: collision with root package name */
    private final j.d f18699e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f18700f;

    /* renamed from: i, reason: collision with root package name */
    private boolean f18703i;

    /* renamed from: g, reason: collision with root package name */
    private final j.c f18701g = new j.c();

    /* renamed from: j, reason: collision with root package name */
    final d.b f18704j = new d.b(this.f18701g);

    /* renamed from: h, reason: collision with root package name */
    private int f18702h = 16384;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(j.d dVar, boolean z) {
        this.f18699e = dVar;
        this.f18700f = z;
    }

    public synchronized void a(m mVar) {
        if (!this.f18703i) {
            this.f18702h = mVar.c(this.f18702h);
            if (mVar.b() != -1) {
                this.f18704j.a(mVar.b());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f18699e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void b(m mVar) {
        if (!this.f18703i) {
            int i2 = 0;
            a(0, mVar.d() * 6, (byte) 4, (byte) 0);
            while (i2 < 10) {
                if (mVar.d(i2)) {
                    this.f18699e.writeShort(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                    this.f18699e.writeInt(mVar.a(i2));
                }
                i2++;
            }
            this.f18699e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f18703i = true;
        this.f18699e.close();
    }

    public synchronized void flush() {
        if (!this.f18703i) {
            this.f18699e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void i() {
        if (!this.f18703i) {
            if (this.f18700f) {
                if (f18698k.isLoggable(Level.FINE)) {
                    f18698k.fine(i.g0.c.a(">> CONNECTION %s", e.f18601a.hex()));
                }
                this.f18699e.write(e.f18601a.toByteArray());
                this.f18699e.flush();
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public int j() {
        return this.f18702h;
    }

    public synchronized void a(int i2, int i3, List<c> list) {
        if (!this.f18703i) {
            this.f18704j.a(list);
            long z = this.f18701g.z();
            int min = (int) Math.min(this.f18702h - 4, z);
            long j2 = min;
            a(i2, min + 4, (byte) 5, z == j2 ? (byte) 4 : (byte) 0);
            this.f18699e.writeInt(i3 & Integer.MAX_VALUE);
            this.f18699e.a(this.f18701g, j2);
            if (z > j2) {
                b(i2, z - j2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    private void b(int i2, long j2) {
        while (j2 > 0) {
            int min = (int) Math.min(this.f18702h, j2);
            long j3 = min;
            j2 -= j3;
            a(i2, min, (byte) 9, j2 == 0 ? (byte) 4 : (byte) 0);
            this.f18699e.a(this.f18701g, j3);
        }
    }

    public synchronized void a(boolean z, int i2, int i3, List<c> list) {
        if (!this.f18703i) {
            a(z, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i2, b bVar) {
        if (!this.f18703i) {
            if (bVar.httpCode != -1) {
                a(i2, 4, (byte) 3, (byte) 0);
                this.f18699e.writeInt(bVar.httpCode);
                this.f18699e.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(boolean z, int i2, j.c cVar, int i3) {
        if (!this.f18703i) {
            a(i2, z ? (byte) 1 : (byte) 0, cVar, i3);
        } else {
            throw new IOException("closed");
        }
    }

    void a(int i2, byte b2, j.c cVar, int i3) {
        a(i2, i3, (byte) 0, b2);
        if (i3 > 0) {
            this.f18699e.a(cVar, i3);
        }
    }

    public synchronized void a(boolean z, int i2, int i3) {
        if (!this.f18703i) {
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f18699e.writeInt(i2);
            this.f18699e.writeInt(i3);
            this.f18699e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i2, b bVar, byte[] bArr) {
        if (!this.f18703i) {
            if (bVar.httpCode != -1) {
                a(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f18699e.writeInt(i2);
                this.f18699e.writeInt(bVar.httpCode);
                if (bArr.length > 0) {
                    this.f18699e.write(bArr);
                }
                this.f18699e.flush();
            } else {
                e.a("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i2, long j2) {
        if (this.f18703i) {
            throw new IOException("closed");
        }
        if (j2 != 0 && j2 <= 2147483647L) {
            a(i2, 4, (byte) 8, (byte) 0);
            this.f18699e.writeInt((int) j2);
            this.f18699e.flush();
        } else {
            e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j2));
            throw null;
        }
    }

    public void a(int i2, int i3, byte b2, byte b3) {
        if (f18698k.isLoggable(Level.FINE)) {
            f18698k.fine(e.a(false, i2, i3, b2, b3));
        }
        int i4 = this.f18702h;
        if (i3 > i4) {
            e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i4), Integer.valueOf(i3));
            throw null;
        }
        if ((Integer.MIN_VALUE & i2) != 0) {
            e.a("reserved bit set: %s", Integer.valueOf(i2));
            throw null;
        }
        a(this.f18699e, i3);
        this.f18699e.writeByte(b2 & 255);
        this.f18699e.writeByte(b3 & 255);
        this.f18699e.writeInt(i2 & Integer.MAX_VALUE);
    }

    private static void a(j.d dVar, int i2) {
        dVar.writeByte((i2 >>> 16) & 255);
        dVar.writeByte((i2 >>> 8) & 255);
        dVar.writeByte(i2 & 255);
    }

    void a(boolean z, int i2, List<c> list) {
        if (!this.f18703i) {
            this.f18704j.a(list);
            long z2 = this.f18701g.z();
            int min = (int) Math.min(this.f18702h, z2);
            long j2 = min;
            byte b2 = z2 == j2 ? (byte) 4 : (byte) 0;
            if (z) {
                b2 = (byte) (b2 | 1);
            }
            a(i2, min, (byte) 1, b2);
            this.f18699e.a(this.f18701g, j2);
            if (z2 > j2) {
                b(i2, z2 - j2);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
