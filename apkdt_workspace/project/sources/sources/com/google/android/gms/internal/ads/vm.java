package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vm extends yd1 {
    private Date n;
    private Date o;
    private long p;
    private long q;
    private double r;
    private float s;
    private je1 t;
    private long u;

    public vm() {
        super("mvhd");
        this.r = 1.0d;
        this.s = 1.0f;
        this.t = je1.f7461j;
    }

    @Override // com.google.android.gms.internal.ads.wd1
    public final void a(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if (b() == 1) {
            this.n = be1.a(bj.c(byteBuffer));
            this.o = be1.a(bj.c(byteBuffer));
            this.p = bj.a(byteBuffer);
            this.q = bj.c(byteBuffer);
        } else {
            this.n = be1.a(bj.a(byteBuffer));
            this.o = be1.a(bj.a(byteBuffer));
            this.p = bj.a(byteBuffer);
            this.q = bj.a(byteBuffer);
        }
        this.r = bj.d(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.s = ((short) ((r0[1] & 255) | ((short) (0 | ((r0[0] << 8) & 65280))))) / 256.0f;
        bj.b(byteBuffer);
        bj.a(byteBuffer);
        bj.a(byteBuffer);
        this.t = je1.a(byteBuffer);
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.u = bj.a(byteBuffer);
    }

    public final long c() {
        return this.q;
    }

    public final long d() {
        return this.p;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.n + ";modificationTime=" + this.o + ";timescale=" + this.p + ";duration=" + this.q + ";rate=" + this.r + ";volume=" + this.s + ";matrix=" + this.t + ";nextTrackId=" + this.u + "]";
    }
}
