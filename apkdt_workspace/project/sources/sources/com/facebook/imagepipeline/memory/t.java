package com.facebook.imagepipeline.memory;

import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* compiled from: MemoryChunk.java */
/* loaded from: classes.dex */
public interface t {
    int a(int i2, byte[] bArr, int i3, int i4);

    void a(int i2, t tVar, int i3, int i4);

    byte b(int i2);

    int b(int i2, byte[] bArr, int i3, int i4);

    void close();

    int i();

    boolean isClosed();

    long j();

    @Nullable
    ByteBuffer w();

    long x();
}
