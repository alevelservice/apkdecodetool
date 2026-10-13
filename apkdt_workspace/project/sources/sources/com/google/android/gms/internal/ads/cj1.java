package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cj1 implements bi1 {

    /* renamed from: d, reason: collision with root package name */
    private zi1 f6034d;

    /* renamed from: j, reason: collision with root package name */
    private long f6040j;

    /* renamed from: k, reason: collision with root package name */
    private long f6041k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f6042l;

    /* renamed from: e, reason: collision with root package name */
    private float f6035e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    private float f6036f = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    private int f6032b = -1;

    /* renamed from: c, reason: collision with root package name */
    private int f6033c = -1;

    /* renamed from: g, reason: collision with root package name */
    private ByteBuffer f6037g = bi1.f5779a;

    /* renamed from: h, reason: collision with root package name */
    private ShortBuffer f6038h = this.f6037g.asShortBuffer();

    /* renamed from: i, reason: collision with root package name */
    private ByteBuffer f6039i = bi1.f5779a;

    public final float a(float f2) {
        this.f6035e = cp1.a(f2, 0.1f, 8.0f);
        return this.f6035e;
    }

    public final float b(float f2) {
        this.f6036f = cp1.a(f2, 0.1f, 8.0f);
        return f2;
    }

    public final long c() {
        return this.f6041k;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void flush() {
        this.f6034d = new zi1(this.f6033c, this.f6032b);
        this.f6034d.a(this.f6035e);
        this.f6034d.b(this.f6036f);
        this.f6039i = bi1.f5779a;
        this.f6040j = 0L;
        this.f6041k = 0L;
        this.f6042l = false;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean i() {
        return Math.abs(this.f6035e - 1.0f) >= 0.01f || Math.abs(this.f6036f - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final ByteBuffer j() {
        ByteBuffer byteBuffer = this.f6039i;
        this.f6039i = bi1.f5779a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int k() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean l() {
        if (!this.f6042l) {
            return false;
        }
        zi1 zi1Var = this.f6034d;
        return zi1Var == null || zi1Var.b() == 0;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void m() {
        this.f6034d.a();
        this.f6042l = true;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int n() {
        return this.f6032b;
    }

    public final long b() {
        return this.f6040j;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean a(int i2, int i3, int i4) {
        if (i4 == 2) {
            if (this.f6033c == i2 && this.f6032b == i3) {
                return false;
            }
            this.f6033c = i2;
            this.f6032b = i3;
            return true;
        }
        throw new ai1(i2, i3, i4);
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f6040j += remaining;
            this.f6034d.a(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b2 = (this.f6034d.b() * this.f6032b) << 1;
        if (b2 > 0) {
            if (this.f6037g.capacity() < b2) {
                this.f6037g = ByteBuffer.allocateDirect(b2).order(ByteOrder.nativeOrder());
                this.f6038h = this.f6037g.asShortBuffer();
            } else {
                this.f6037g.clear();
                this.f6038h.clear();
            }
            this.f6034d.b(this.f6038h);
            this.f6041k += b2;
            this.f6037g.limit(b2);
            this.f6039i = this.f6037g;
        }
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void a() {
        this.f6034d = null;
        this.f6037g = bi1.f5779a;
        this.f6038h = this.f6037g.asShortBuffer();
        this.f6039i = bi1.f5779a;
        this.f6032b = -1;
        this.f6033c = -1;
        this.f6040j = 0L;
        this.f6041k = 0L;
        this.f6042l = false;
    }
}
