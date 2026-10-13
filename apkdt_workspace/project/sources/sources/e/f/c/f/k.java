package e.f.c.f;

import com.facebook.common.internal.VisibleForTesting;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: PooledByteStreams.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private final int f17163a;

    /* renamed from: b, reason: collision with root package name */
    private final a f17164b;

    public k(a aVar) {
        this(aVar, 16384);
    }

    public long a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = this.f17164b.get(this.f17163a);
        long j2 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, this.f17163a);
                if (read == -1) {
                    return j2;
                }
                outputStream.write(bArr, 0, read);
                j2 += read;
            } finally {
                this.f17164b.a(bArr);
            }
        }
    }

    @VisibleForTesting
    public k(a aVar, int i2) {
        com.facebook.common.internal.h.a(i2 > 0);
        this.f17163a = i2;
        this.f17164b = aVar;
    }
}
