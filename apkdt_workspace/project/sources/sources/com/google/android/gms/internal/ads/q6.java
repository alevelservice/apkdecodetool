package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
final class q6 extends FilterInputStream {

    /* renamed from: e, reason: collision with root package name */
    private final long f8852e;

    /* renamed from: f, reason: collision with root package name */
    private long f8853f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q6(InputStream inputStream, long j2) {
        super(inputStream);
        this.f8852e = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long i() {
        return this.f8852e - this.f8853f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f8853f++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        int read = super.read(bArr, i2, i3);
        if (read != -1) {
            this.f8853f += read;
        }
        return read;
    }
}
