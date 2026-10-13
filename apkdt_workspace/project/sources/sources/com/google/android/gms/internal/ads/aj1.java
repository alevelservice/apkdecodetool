package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class aj1 implements bi1 {

    /* renamed from: b, reason: collision with root package name */
    private int f5582b = -1;

    /* renamed from: c, reason: collision with root package name */
    private int f5583c = -1;

    /* renamed from: d, reason: collision with root package name */
    private int f5584d = 0;

    /* renamed from: e, reason: collision with root package name */
    private ByteBuffer f5585e;

    /* renamed from: f, reason: collision with root package name */
    private ByteBuffer f5586f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f5587g;

    public aj1() {
        ByteBuffer byteBuffer = bi1.f5779a;
        this.f5585e = byteBuffer;
        this.f5586f = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean a(int i2, int i3, int i4) {
        if (i4 != 3 && i4 != 2 && i4 != Integer.MIN_VALUE && i4 != 1073741824) {
            throw new ai1(i2, i3, i4);
        }
        if (this.f5582b == i2 && this.f5583c == i3 && this.f5584d == i4) {
            return false;
        }
        this.f5582b = i2;
        this.f5583c = i3;
        this.f5584d = i4;
        if (i4 != 2) {
            return true;
        }
        this.f5585e = bi1.f5779a;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void flush() {
        this.f5586f = bi1.f5779a;
        this.f5587g = false;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean i() {
        int i2 = this.f5584d;
        return (i2 == 0 || i2 == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final ByteBuffer j() {
        ByteBuffer byteBuffer = this.f5586f;
        this.f5586f = bi1.f5779a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int k() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final boolean l() {
        return this.f5587g && this.f5586f == bi1.f5779a;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void m() {
        this.f5587g = true;
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final int n() {
        return this.f5583c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0081 A[ADDED_TO_REGION, LOOP:2: B:24:0x0081->B:25:0x0083, LOOP_START, PHI: r0
  0x0081: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:10:0x0041, B:25:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    @Override // com.google.android.gms.internal.ads.bi1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.nio.ByteBuffer r8) {
        /*
            r7 = this;
            int r0 = r8.position()
            int r1 = r8.limit()
            int r2 = r1 - r0
            int r3 = r7.f5584d
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 3
            if (r3 == r5) goto L20
            if (r3 == r6) goto L21
            if (r3 != r4) goto L1a
            int r2 = r2 / 2
            goto L23
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L20:
            int r2 = r2 / r6
        L21:
            int r2 = r2 << 1
        L23:
            java.nio.ByteBuffer r3 = r7.f5585e
            int r3 = r3.capacity()
            if (r3 >= r2) goto L3a
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocateDirect(r2)
            java.nio.ByteOrder r3 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteBuffer r2 = r2.order(r3)
            r7.f5585e = r2
            goto L3f
        L3a:
            java.nio.ByteBuffer r2 = r7.f5585e
            r2.clear()
        L3f:
            int r2 = r7.f5584d
            if (r2 == r5) goto L81
            if (r2 == r6) goto L68
            if (r2 != r4) goto L62
        L47:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.f5585e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f5585e
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L47
        L62:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L68:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.f5585e
            r3 = 0
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f5585e
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + (-128)
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L68
        L81:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.f5585e
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f5585e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L81
        L9c:
            int r0 = r8.limit()
            r8.position(r0)
            java.nio.ByteBuffer r8 = r7.f5585e
            r8.flip()
            java.nio.ByteBuffer r8 = r7.f5585e
            r7.f5586f = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aj1.a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.bi1
    public final void a() {
        flush();
        this.f5585e = bi1.f5779a;
        this.f5582b = -1;
        this.f5583c = -1;
        this.f5584d = 0;
    }
}
