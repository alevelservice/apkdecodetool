package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class vh1 {

    /* renamed from: a, reason: collision with root package name */
    public static final vh1 f9932a = new th1();

    public abstract int a(Object obj);

    public abstract wh1 a(int i2, wh1 wh1Var, boolean z, long j2);

    public abstract xh1 a(int i2, xh1 xh1Var, boolean z);

    public final boolean a() {
        return b() == 0;
    }

    public abstract int b();

    public abstract int c();

    public final wh1 a(int i2, wh1 wh1Var, boolean z) {
        return a(i2, wh1Var, false, 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        if ((b() - 1) == 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r3, com.google.android.gms.internal.ads.xh1 r4, com.google.android.gms.internal.ads.wh1 r5, int r6) {
        /*
            r2 = this;
            r0 = 0
            r2.a(r3, r4, r0)
            r2.a(r0, r5, r0)
            r4 = 1
            if (r3 != 0) goto L31
            r3 = -1
            if (r6 == 0) goto L22
            if (r6 == r4) goto L20
            r1 = 2
            if (r6 != r1) goto L1a
            int r6 = r2.b()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            goto L20
        L1a:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            r3.<init>()
            throw r3
        L20:
            r4 = 0
            goto L2a
        L22:
            int r6 = r2.b()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            r4 = -1
        L2a:
            if (r4 != r3) goto L2d
            return r3
        L2d:
            r2.a(r4, r5, r0)
            return r0
        L31:
            int r3 = r3 + r4
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vh1.a(int, com.google.android.gms.internal.ads.xh1, com.google.android.gms.internal.ads.wh1, int):int");
    }
}
