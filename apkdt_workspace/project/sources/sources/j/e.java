package j;

import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: BufferedSource.java */
/* loaded from: classes2.dex */
public interface e extends u, ReadableByteChannel {
    long a(byte b2);

    c a();

    String a(Charset charset);

    boolean a(long j2, f fVar);

    f c(long j2);

    byte[] c();

    String d(long j2);

    boolean d();

    String e();

    byte[] e(long j2);

    int f();

    void f(long j2);

    short g();

    long h();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    short readShort();

    void skip(long j2);
}
