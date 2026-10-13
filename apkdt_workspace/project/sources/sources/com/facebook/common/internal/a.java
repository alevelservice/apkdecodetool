package com.facebook.common.internal;

import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: ByteStreams.java */
/* loaded from: classes.dex */
public final class a {
    public static long a(InputStream inputStream, OutputStream outputStream) {
        h.a(inputStream);
        h.a(outputStream);
        byte[] bArr = new byte[4096];
        long j2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j2;
            }
            outputStream.write(bArr, 0, read);
            j2 += read;
        }
    }

    public static int a(InputStream inputStream, byte[] bArr, int i2, int i3) {
        h.a(inputStream);
        h.a(bArr);
        if (i3 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i4 = 0;
        while (i4 < i3) {
            int read = inputStream.read(bArr, i2 + i4, i3 - i4);
            if (read == -1) {
                break;
            }
            i4 += read;
        }
        return i4;
    }
}
