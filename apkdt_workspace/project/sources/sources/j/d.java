package j;

import java.nio.channels.WritableByteChannel;

/* compiled from: BufferedSink.java */
/* loaded from: classes2.dex */
public interface d extends t, WritableByteChannel {
    long a(u uVar);

    c a();

    d a(int i2);

    d a(long j2);

    d a(f fVar);

    d a(String str);

    d b();

    d b(long j2);

    @Override // j.t, java.io.Flushable
    void flush();

    d write(byte[] bArr);

    d write(byte[] bArr, int i2, int i3);

    d writeByte(int i2);

    d writeInt(int i2);

    d writeShort(int i2);
}
