package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class wg implements zd1 {

    /* renamed from: e, reason: collision with root package name */
    private final ByteBuffer f10113e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wg(ByteBuffer byteBuffer) {
        this.f10113e = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zd1
    public final ByteBuffer a(long j2, long j3) {
        int position = this.f10113e.position();
        this.f10113e.position((int) j2);
        ByteBuffer slice = this.f10113e.slice();
        slice.limit((int) j3);
        this.f10113e.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.zd1, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zd1
    public final void g(long j2) {
        this.f10113e.position((int) j2);
    }

    @Override // com.google.android.gms.internal.ads.zd1
    public final long position() {
        return this.f10113e.position();
    }

    @Override // com.google.android.gms.internal.ads.zd1
    public final int read(ByteBuffer byteBuffer) {
        if (this.f10113e.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.f10113e.remaining());
        byte[] bArr = new byte[min];
        this.f10113e.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zd1
    public final long size() {
        return this.f10113e.limit();
    }
}
