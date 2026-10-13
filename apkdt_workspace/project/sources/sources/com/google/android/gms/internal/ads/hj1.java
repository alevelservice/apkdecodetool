package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hj1 extends bj1 {

    /* renamed from: b, reason: collision with root package name */
    public final ej1 f7090b = new ej1();

    /* renamed from: c, reason: collision with root package name */
    public ByteBuffer f7091c;

    /* renamed from: d, reason: collision with root package name */
    public long f7092d;

    public hj1(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.bj1
    public final void a() {
        super.a();
        ByteBuffer byteBuffer = this.f7091c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final void d(int i2) {
        ByteBuffer byteBuffer = this.f7091c;
        if (byteBuffer != null) {
            int capacity = byteBuffer.capacity();
            int position = this.f7091c.position() + i2;
            if (capacity >= position) {
                return;
            }
            e(position);
            throw null;
        }
        e(i2);
        throw null;
    }

    public final boolean e() {
        return c(1073741824);
    }

    private final ByteBuffer e(int i2) {
        ByteBuffer byteBuffer = this.f7091c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i2);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }
}
