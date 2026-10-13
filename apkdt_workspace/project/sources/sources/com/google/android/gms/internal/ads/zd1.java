package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public interface zd1 extends Closeable {
    ByteBuffer a(long j2, long j3);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void g(long j2);

    long position();

    int read(ByteBuffer byteBuffer);

    long size();
}
