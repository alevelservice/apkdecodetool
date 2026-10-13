package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class si1 implements bi1 {

    /* renamed from: b, reason: collision with root package name */
    private int f9369b;

    /* renamed from: c, reason: collision with root package name */
    private int f9370c;

    /* renamed from: d, reason: collision with root package name */
    private int[] f9371d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9372e;

    /* renamed from: f, reason: collision with root package name */
    private int[] f9373f;

    /* renamed from: g, reason: collision with root package name */
    private ByteBuffer f9374g;

    /* renamed from: h, reason: collision with root package name */
    private ByteBuffer f9375h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f9376i;

    public si1() {
        ByteBuffer byteBuffer = bi1.f5779a;
        this.f9374g = byteBuffer;
        this.f9375h = byteBuffer;
        this.f9369b = -1;
        this.f9370c = -1;
    }

    public final void a(int[] iArr) {
        this.f9371d = iArr;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void flush() {
        this.f9375h = bi1.f5779a;
        this.f9376i = false;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean i() {
        return this.f9372e;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final ByteBuffer j() {
        ByteBuffer byteBuffer = this.f9375h;
        this.f9375h = bi1.f5779a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int k() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean l() {
        return this.f9376i && this.f9375h == bi1.f5779a;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void m() {
        this.f9376i = true;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int n() {
        int[] iArr = this.f9373f;
        return iArr == null ? this.f9369b : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean a(int i2, int i3, int i4) {
        boolean z = !Arrays.equals(this.f9371d, this.f9373f);
        this.f9373f = this.f9371d;
        if (this.f9373f == null) {
            this.f9372e = false;
            return z;
        }
        if (i4 == 2) {
            if (!z && this.f9370c == i2 && this.f9369b == i3) {
                return false;
            }
            this.f9370c = i2;
            this.f9369b = i3;
            this.f9372e = i3 != this.f9373f.length;
            int i5 = 0;
            while (true) {
                int[] iArr = this.f9373f;
                if (i5 >= iArr.length) {
                    return true;
                }
                int i6 = iArr[i5];
                if (i6 < i3) {
                    this.f9372e = (i6 != i5) | this.f9372e;
                    i5++;
                } else {
                    throw new ai1(i2, i3, i4);
                }
            }
        } else {
            throw new ai1(i2, i3, i4);
        }
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f9369b * 2)) * this.f9373f.length) << 1;
        if (this.f9374g.capacity() < length) {
            this.f9374g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f9374g.clear();
        }
        while (position < limit) {
            for (int i2 : this.f9373f) {
                this.f9374g.putShort(byteBuffer.getShort((i2 * 2) + position));
            }
            position += this.f9369b << 1;
        }
        byteBuffer.position(limit);
        this.f9374g.flip();
        this.f9375h = this.f9374g;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void a() {
        flush();
        this.f9374g = bi1.f5779a;
        this.f9369b = -1;
        this.f9370c = -1;
        this.f9373f = null;
        this.f9372e = false;
    }
}
