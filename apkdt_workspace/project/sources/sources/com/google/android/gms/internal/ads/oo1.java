package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oo1 {

    /* renamed from: a, reason: collision with root package name */
    private int f8570a;

    /* renamed from: b, reason: collision with root package name */
    private long[] f8571b;

    public oo1() {
        this(32);
    }

    public final void a(long j2) {
        int i2 = this.f8570a;
        long[] jArr = this.f8571b;
        if (i2 == jArr.length) {
            this.f8571b = Arrays.copyOf(jArr, i2 << 1);
        }
        long[] jArr2 = this.f8571b;
        int i3 = this.f8570a;
        this.f8570a = i3 + 1;
        jArr2[i3] = j2;
    }

    private oo1(int i2) {
        this.f8571b = new long[32];
    }

    public final long a(int i2) {
        if (i2 >= 0 && i2 < this.f8570a) {
            return this.f8571b[i2];
        }
        int i3 = this.f8570a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i2);
        sb.append(", size is ");
        sb.append(i3);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final int a() {
        return this.f8570a;
    }
}
