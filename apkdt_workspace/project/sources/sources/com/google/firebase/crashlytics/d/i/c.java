package com.google.firebase.crashlytics.d.i;

import com.facebook.cache.disk.DefaultDiskStorage;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: QueueFile.java */
/* loaded from: classes.dex */
public class c implements Closeable {

    /* renamed from: k, reason: collision with root package name */
    private static final Logger f14588k = Logger.getLogger(c.class.getName());

    /* renamed from: e, reason: collision with root package name */
    private final RandomAccessFile f14589e;

    /* renamed from: f, reason: collision with root package name */
    int f14590f;

    /* renamed from: g, reason: collision with root package name */
    private int f14591g;

    /* renamed from: h, reason: collision with root package name */
    private b f14592h;

    /* renamed from: i, reason: collision with root package name */
    private b f14593i;

    /* renamed from: j, reason: collision with root package name */
    private final byte[] f14594j = new byte[16];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes.dex */
    public class a implements d {

        /* renamed from: a, reason: collision with root package name */
        boolean f14595a = true;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ StringBuilder f14596b;

        a(c cVar, StringBuilder sb) {
            this.f14596b = sb;
        }

        @Override // com.google.firebase.crashlytics.d.i.c.d
        public void a(InputStream inputStream, int i2) {
            if (this.f14595a) {
                this.f14595a = false;
            } else {
                this.f14596b.append(", ");
            }
            this.f14596b.append(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: c, reason: collision with root package name */
        static final b f14597c = new b(0, 0);

        /* renamed from: a, reason: collision with root package name */
        final int f14598a;

        /* renamed from: b, reason: collision with root package name */
        final int f14599b;

        b(int i2, int i3) {
            this.f14598a = i2;
            this.f14599b = i3;
        }

        public String toString() {
            return b.class.getSimpleName() + "[position = " + this.f14598a + ", length = " + this.f14599b + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: QueueFile.java */
    /* renamed from: com.google.firebase.crashlytics.d.i.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0117c extends InputStream {

        /* renamed from: e, reason: collision with root package name */
        private int f14600e;

        /* renamed from: f, reason: collision with root package name */
        private int f14601f;

        /* synthetic */ C0117c(c cVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            c.a(bArr, "buffer");
            if ((i2 | i3) >= 0 && i3 <= bArr.length - i2) {
                int i4 = this.f14601f;
                if (i4 <= 0) {
                    return -1;
                }
                if (i3 > i4) {
                    i3 = i4;
                }
                c.this.b(this.f14600e, bArr, i2, i3);
                this.f14600e = c.this.f(this.f14600e + i3);
                this.f14601f -= i3;
                return i3;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        private C0117c(b bVar) {
            this.f14600e = c.this.f(bVar.f14598a + 4);
            this.f14601f = bVar.f14599b;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f14601f == 0) {
                return -1;
            }
            c.this.f14589e.seek(this.f14600e);
            int read = c.this.f14589e.read();
            this.f14600e = c.this.f(this.f14600e + 1);
            this.f14601f--;
            return read;
        }
    }

    /* compiled from: QueueFile.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(InputStream inputStream, int i2);
    }

    public c(File file) {
        if (!file.exists()) {
            a(file);
        }
        this.f14589e = b(file);
        m();
    }

    private static void b(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 >> 24);
        bArr[i2 + 1] = (byte) (i3 >> 16);
        bArr[i2 + 2] = (byte) (i3 >> 8);
        bArr[i2 + 3] = (byte) i3;
    }

    private void c(int i2, byte[] bArr, int i3, int i4) {
        int f2 = f(i2);
        int i5 = f2 + i4;
        int i6 = this.f14590f;
        if (i5 <= i6) {
            this.f14589e.seek(f2);
            this.f14589e.write(bArr, i3, i4);
            return;
        }
        int i7 = i6 - f2;
        this.f14589e.seek(f2);
        this.f14589e.write(bArr, i3, i7);
        this.f14589e.seek(16L);
        this.f14589e.write(bArr, i3 + i7, i4 - i7);
    }

    private b d(int i2) {
        if (i2 == 0) {
            return b.f14597c;
        }
        this.f14589e.seek(i2);
        return new b(i2, this.f14589e.readInt());
    }

    private void e(int i2) {
        this.f14589e.setLength(i2);
        this.f14589e.getChannel().force(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f(int i2) {
        int i3 = this.f14590f;
        return i2 < i3 ? i2 : (i2 + 16) - i3;
    }

    private void m() {
        this.f14589e.seek(0L);
        this.f14589e.readFully(this.f14594j);
        this.f14590f = a(this.f14594j, 0);
        if (this.f14590f <= this.f14589e.length()) {
            this.f14591g = a(this.f14594j, 4);
            int a2 = a(this.f14594j, 8);
            int a3 = a(this.f14594j, 12);
            this.f14592h = d(a2);
            this.f14593i = d(a3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f14590f + ", Actual length: " + this.f14589e.length());
    }

    private int o() {
        return this.f14590f - l();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f14589e.close();
    }

    public synchronized void i() {
        a(4096, 0, 0, 0);
        this.f14591g = 0;
        this.f14592h = b.f14597c;
        this.f14593i = b.f14597c;
        if (this.f14590f > 4096) {
            e(4096);
        }
        this.f14590f = 4096;
    }

    public synchronized boolean j() {
        return this.f14591g == 0;
    }

    public synchronized void k() {
        if (!j()) {
            if (this.f14591g == 1) {
                i();
            } else {
                int f2 = f(this.f14592h.f14598a + 4 + this.f14592h.f14599b);
                b(f2, this.f14594j, 0, 4);
                int a2 = a(this.f14594j, 0);
                a(this.f14590f, this.f14591g - 1, f2, this.f14593i.f14598a);
                this.f14591g--;
                this.f14592h = new b(f2, a2);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    public int l() {
        if (this.f14591g == 0) {
            return 16;
        }
        b bVar = this.f14593i;
        int i2 = bVar.f14598a;
        int i3 = this.f14592h.f14598a;
        if (i2 >= i3) {
            return (i2 - i3) + 4 + bVar.f14599b + 16;
        }
        return (((i2 + 4) + bVar.f14599b) + this.f14590f) - i3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f14590f);
        sb.append(", size=");
        sb.append(this.f14591g);
        sb.append(", first=");
        sb.append(this.f14592h);
        sb.append(", last=");
        sb.append(this.f14593i);
        sb.append(", element lengths=[");
        try {
            a(new a(this, sb));
        } catch (IOException e2) {
            f14588k.log(Level.WARNING, "read error", (Throwable) e2);
        }
        sb.append("]]");
        return sb.toString();
    }

    static /* synthetic */ Object a(Object obj, String str) {
        b(obj, str);
        return obj;
    }

    private static void a(byte[] bArr, int... iArr) {
        int i2 = 0;
        for (int i3 : iArr) {
            b(bArr, i2, i3);
            i2 += 4;
        }
    }

    private static RandomAccessFile b(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2, byte[] bArr, int i3, int i4) {
        int f2 = f(i2);
        int i5 = f2 + i4;
        int i6 = this.f14590f;
        if (i5 <= i6) {
            this.f14589e.seek(f2);
            this.f14589e.readFully(bArr, i3, i4);
            return;
        }
        int i7 = i6 - f2;
        this.f14589e.seek(f2);
        this.f14589e.readFully(bArr, i3, i7);
        this.f14589e.seek(16L);
        this.f14589e.readFully(bArr, i3 + i7, i4 - i7);
    }

    private static int a(byte[] bArr, int i2) {
        return ((bArr[i2] & 255) << 24) + ((bArr[i2 + 1] & 255) << 16) + ((bArr[i2 + 2] & 255) << 8) + (bArr[i2 + 3] & 255);
    }

    private void a(int i2, int i3, int i4, int i5) {
        a(this.f14594j, i2, i3, i4, i5);
        this.f14589e.seek(0L);
        this.f14589e.write(this.f14594j);
    }

    private void c(int i2) {
        int i3 = i2 + 4;
        int o = o();
        if (o >= i3) {
            return;
        }
        int i4 = this.f14590f;
        do {
            o += i4;
            i4 <<= 1;
        } while (o < i3);
        e(i4);
        b bVar = this.f14593i;
        int f2 = f(bVar.f14598a + 4 + bVar.f14599b);
        if (f2 < this.f14592h.f14598a) {
            FileChannel channel = this.f14589e.getChannel();
            channel.position(this.f14590f);
            long j2 = f2 - 4;
            if (channel.transferTo(16L, j2, channel) != j2) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i5 = this.f14593i.f14598a;
        int i6 = this.f14592h.f14598a;
        if (i5 < i6) {
            int i7 = (this.f14590f + i5) - 16;
            a(i4, this.f14591g, i6, i7);
            this.f14593i = new b(i7, this.f14593i.f14599b);
        } else {
            a(i4, this.f14591g, i6, i5);
        }
        this.f14590f = i4;
    }

    private static void a(File file) {
        File file2 = new File(file.getPath() + DefaultDiskStorage.FileType.TEMP);
        RandomAccessFile b2 = b(file2);
        try {
            b2.setLength(4096L);
            b2.seek(0L);
            byte[] bArr = new byte[16];
            a(bArr, 4096, 0, 0, 0);
            b2.write(bArr);
            b2.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            b2.close();
            throw th;
        }
    }

    private static <T> T b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    public synchronized void a(byte[] bArr, int i2, int i3) {
        b(bArr, "buffer");
        if ((i2 | i3) >= 0 && i3 <= bArr.length - i2) {
            c(i3);
            boolean j2 = j();
            b bVar = new b(j2 ? 16 : f(this.f14593i.f14598a + 4 + this.f14593i.f14599b), i3);
            b(this.f14594j, 0, i3);
            c(bVar.f14598a, this.f14594j, 0, 4);
            c(bVar.f14598a + 4, bArr, i2, i3);
            a(this.f14590f, this.f14591g + 1, j2 ? bVar.f14598a : this.f14592h.f14598a, bVar.f14598a);
            this.f14593i = bVar;
            this.f14591g++;
            if (j2) {
                this.f14592h = this.f14593i;
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public synchronized void a(d dVar) {
        int i2 = this.f14592h.f14598a;
        for (int i3 = 0; i3 < this.f14591g; i3++) {
            b d2 = d(i2);
            dVar.a(new C0117c(this, d2, null), d2.f14599b);
            i2 = f(d2.f14598a + 4 + d2.f14599b);
        }
    }
}
