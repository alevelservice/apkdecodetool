package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public final class k {
    @KeepForSdk
    public static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @KeepForSdk
    @Deprecated
    public static long a(InputStream inputStream, OutputStream outputStream) {
        return a(inputStream, outputStream, false);
    }

    @Deprecated
    private static long a(InputStream inputStream, OutputStream outputStream, boolean z) {
        return a(inputStream, outputStream, z, 1024);
    }

    @KeepForSdk
    @Deprecated
    public static long a(InputStream inputStream, OutputStream outputStream, boolean z, int i2) {
        byte[] bArr = new byte[i2];
        long j2 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i2);
                if (read == -1) {
                    break;
                }
                j2 += read;
                outputStream.write(bArr, 0, read);
            } finally {
                if (z) {
                    a(inputStream);
                    a(outputStream);
                }
            }
        }
        return j2;
    }

    @KeepForSdk
    @Deprecated
    public static byte[] a(InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }
}
