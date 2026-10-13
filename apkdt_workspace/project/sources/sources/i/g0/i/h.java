package i.g0.i;

import i.g0.i.d;
import j.u;
import j.v;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Http2Reader.java */
/* loaded from: classes2.dex */
public final class h implements Closeable {

    /* renamed from: i, reason: collision with root package name */
    static final Logger f18664i = Logger.getLogger(e.class.getName());

    /* renamed from: e, reason: collision with root package name */
    private final j.e f18665e;

    /* renamed from: f, reason: collision with root package name */
    private final a f18666f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f18667g;

    /* renamed from: h, reason: collision with root package name */
    final d.a f18668h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Reader.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(int i2, int i3, int i4, boolean z);

        void a(int i2, int i3, List<c> list);

        void a(int i2, long j2);

        void a(int i2, i.g0.i.b bVar);

        void a(int i2, i.g0.i.b bVar, j.f fVar);

        void a(boolean z, int i2, int i3);

        void a(boolean z, int i2, int i3, List<c> list);

        void a(boolean z, int i2, j.e eVar, int i3);

        void a(boolean z, m mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j.e eVar, boolean z) {
        this.f18665e = eVar;
        this.f18667g = z;
        this.f18666f = new a(this.f18665e);
        this.f18668h = new d.a(4096, this.f18666f);
    }

    private void b(b bVar, int i2, byte b2, int i3) {
        if (i2 < 8) {
            e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i2));
            throw null;
        }
        if (i3 == 0) {
            int readInt = this.f18665e.readInt();
            int readInt2 = this.f18665e.readInt();
            int i4 = i2 - 8;
            i.g0.i.b fromHttp2 = i.g0.i.b.fromHttp2(readInt2);
            if (fromHttp2 == null) {
                e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
                throw null;
            }
            j.f fVar = j.f.EMPTY;
            if (i4 > 0) {
                fVar = this.f18665e.c(i4);
            }
            bVar.a(readInt, fromHttp2, fVar);
            return;
        }
        e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        throw null;
    }

    private void c(b bVar, int i2, byte b2, int i3) {
        if (i3 != 0) {
            boolean z = (b2 & 1) != 0;
            short readByte = (b2 & 8) != 0 ? (short) (this.f18665e.readByte() & 255) : (short) 0;
            if ((b2 & 32) != 0) {
                a(bVar, i3);
                i2 -= 5;
            }
            bVar.a(z, i3, -1, a(a(i2, b2, readByte), readByte, b2, i3));
            return;
        }
        e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        throw null;
    }

    private void d(b bVar, int i2, byte b2, int i3) {
        if (i2 != 8) {
            e.b("TYPE_PING length != 8: %s", Integer.valueOf(i2));
            throw null;
        }
        if (i3 == 0) {
            bVar.a((b2 & 1) != 0, this.f18665e.readInt(), this.f18665e.readInt());
            return;
        }
        e.b("TYPE_PING streamId != 0", new Object[0]);
        throw null;
    }

    private void e(b bVar, int i2, byte b2, int i3) {
        if (i2 != 5) {
            e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i2));
            throw null;
        }
        if (i3 != 0) {
            a(bVar, i3);
        } else {
            e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    private void f(b bVar, int i2, byte b2, int i3) {
        if (i3 != 0) {
            short readByte = (b2 & 8) != 0 ? (short) (this.f18665e.readByte() & 255) : (short) 0;
            bVar.a(i3, this.f18665e.readInt() & Integer.MAX_VALUE, a(a(i2 - 4, b2, readByte), readByte, b2, i3));
        } else {
            e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
    }

    private void g(b bVar, int i2, byte b2, int i3) {
        if (i2 != 4) {
            e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i2));
            throw null;
        }
        if (i3 != 0) {
            int readInt = this.f18665e.readInt();
            i.g0.i.b fromHttp2 = i.g0.i.b.fromHttp2(readInt);
            if (fromHttp2 != null) {
                bVar.a(i3, fromHttp2);
                return;
            } else {
                e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                throw null;
            }
        }
        e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        throw null;
    }

    private void h(b bVar, int i2, byte b2, int i3) {
        if (i3 != 0) {
            e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b2 & 1) != 0) {
            if (i2 == 0) {
                bVar.a();
                return;
            } else {
                e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        }
        if (i2 % 6 != 0) {
            e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i2));
            throw null;
        }
        m mVar = new m();
        for (int i4 = 0; i4 < i2; i4 += 6) {
            int readShort = this.f18665e.readShort() & 65535;
            int readInt = this.f18665e.readInt();
            switch (readShort) {
                case 2:
                    if (readInt != 0 && readInt != 1) {
                        e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                    break;
                case 3:
                    readShort = 4;
                    break;
                case 4:
                    readShort = 7;
                    if (readInt < 0) {
                        e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                    break;
                case 5:
                    if (readInt < 16384 || readInt > 16777215) {
                        e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                        throw null;
                    }
                    break;
                    break;
            }
            mVar.a(readShort, readInt);
        }
        bVar.a(false, mVar);
    }

    private void i(b bVar, int i2, byte b2, int i3) {
        if (i2 != 4) {
            e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i2));
            throw null;
        }
        long readInt = this.f18665e.readInt() & 2147483647L;
        if (readInt != 0) {
            bVar.a(i3, readInt);
        } else {
            e.b("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
    }

    public void a(b bVar) {
        if (this.f18667g) {
            if (a(true, bVar)) {
                return;
            }
            e.b("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        j.f c2 = this.f18665e.c(e.f18601a.size());
        if (f18664i.isLoggable(Level.FINE)) {
            f18664i.fine(i.g0.c.a("<< CONNECTION %s", c2.hex()));
        }
        if (e.f18601a.equals(c2)) {
            return;
        }
        e.b("Expected a connection header but was %s", c2.utf8());
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f18665e.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Reader.java */
    /* loaded from: classes2.dex */
    public static final class a implements u {

        /* renamed from: e, reason: collision with root package name */
        private final j.e f18669e;

        /* renamed from: f, reason: collision with root package name */
        int f18670f;

        /* renamed from: g, reason: collision with root package name */
        byte f18671g;

        /* renamed from: h, reason: collision with root package name */
        int f18672h;

        /* renamed from: i, reason: collision with root package name */
        int f18673i;

        /* renamed from: j, reason: collision with root package name */
        short f18674j;

        a(j.e eVar) {
            this.f18669e = eVar;
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            while (true) {
                int i2 = this.f18673i;
                if (i2 == 0) {
                    this.f18669e.skip(this.f18674j);
                    this.f18674j = (short) 0;
                    if ((this.f18671g & 4) != 0) {
                        return -1L;
                    }
                    b();
                } else {
                    long b2 = this.f18669e.b(cVar, Math.min(j2, i2));
                    if (b2 == -1) {
                        return -1L;
                    }
                    this.f18673i = (int) (this.f18673i - b2);
                    return b2;
                }
            }
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // j.u
        public v timeout() {
            return this.f18669e.timeout();
        }

        private void b() {
            int i2 = this.f18672h;
            int a2 = h.a(this.f18669e);
            this.f18673i = a2;
            this.f18670f = a2;
            byte readByte = (byte) (this.f18669e.readByte() & 255);
            this.f18671g = (byte) (this.f18669e.readByte() & 255);
            if (h.f18664i.isLoggable(Level.FINE)) {
                h.f18664i.fine(e.a(true, this.f18672h, this.f18670f, readByte, this.f18671g));
            }
            this.f18672h = this.f18669e.readInt() & Integer.MAX_VALUE;
            if (readByte != 9) {
                e.b("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                throw null;
            }
            if (this.f18672h == i2) {
                return;
            }
            e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }
    }

    public boolean a(boolean z, b bVar) {
        try {
            this.f18665e.f(9L);
            int a2 = a(this.f18665e);
            if (a2 < 0 || a2 > 16384) {
                e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a2));
                throw null;
            }
            byte readByte = (byte) (this.f18665e.readByte() & 255);
            if (z && readByte != 4) {
                e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                throw null;
            }
            byte readByte2 = (byte) (this.f18665e.readByte() & 255);
            int readInt = this.f18665e.readInt() & Integer.MAX_VALUE;
            if (f18664i.isLoggable(Level.FINE)) {
                f18664i.fine(e.a(true, readInt, a2, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    a(bVar, a2, readByte2, readInt);
                    return true;
                case 1:
                    c(bVar, a2, readByte2, readInt);
                    return true;
                case 2:
                    e(bVar, a2, readByte2, readInt);
                    return true;
                case 3:
                    g(bVar, a2, readByte2, readInt);
                    return true;
                case 4:
                    h(bVar, a2, readByte2, readInt);
                    return true;
                case 5:
                    f(bVar, a2, readByte2, readInt);
                    return true;
                case 6:
                    d(bVar, a2, readByte2, readInt);
                    return true;
                case 7:
                    b(bVar, a2, readByte2, readInt);
                    return true;
                case 8:
                    i(bVar, a2, readByte2, readInt);
                    return true;
                default:
                    this.f18665e.skip(a2);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private List<c> a(int i2, short s, byte b2, int i3) {
        a aVar = this.f18666f;
        aVar.f18673i = i2;
        aVar.f18670f = i2;
        aVar.f18674j = s;
        aVar.f18671g = b2;
        aVar.f18672h = i3;
        this.f18668h.c();
        return this.f18668h.a();
    }

    private void a(b bVar, int i2, byte b2, int i3) {
        if (i3 == 0) {
            e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
            throw null;
        }
        boolean z = (b2 & 1) != 0;
        if (!((b2 & 32) != 0)) {
            short readByte = (b2 & 8) != 0 ? (short) (this.f18665e.readByte() & 255) : (short) 0;
            bVar.a(z, i3, this.f18665e, a(i2, b2, readByte));
            this.f18665e.skip(readByte);
            return;
        }
        e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        throw null;
    }

    private void a(b bVar, int i2) {
        int readInt = this.f18665e.readInt();
        bVar.a(i2, readInt & Integer.MAX_VALUE, (this.f18665e.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    static int a(j.e eVar) {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    static int a(int i2, byte b2, short s) {
        if ((b2 & 8) != 0) {
            i2--;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }
}
