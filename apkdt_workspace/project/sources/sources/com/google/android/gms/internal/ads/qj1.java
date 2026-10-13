package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.io.EOFException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qj1 implements sj1 {

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f8928g = new byte[4096];

    /* renamed from: a, reason: collision with root package name */
    private final wn1 f8929a;

    /* renamed from: b, reason: collision with root package name */
    private final long f8930b;

    /* renamed from: c, reason: collision with root package name */
    private long f8931c;

    /* renamed from: d, reason: collision with root package name */
    private byte[] f8932d = new byte[AntDetector.ACTION_ID_SAMPLE];

    /* renamed from: e, reason: collision with root package name */
    private int f8933e;

    /* renamed from: f, reason: collision with root package name */
    private int f8934f;

    public qj1(wn1 wn1Var, long j2, long j3) {
        this.f8929a = wn1Var;
        this.f8931c = j2;
        this.f8930b = j3;
    }

    private final int d(int i2) {
        int min = Math.min(this.f8934f, i2);
        e(min);
        return min;
    }

    private final void e(int i2) {
        this.f8934f -= i2;
        this.f8933e = 0;
        byte[] bArr = this.f8932d;
        int i3 = this.f8934f;
        if (i3 < bArr.length - 524288) {
            bArr = new byte[i3 + AntDetector.ACTION_ID_SAMPLE];
        }
        System.arraycopy(this.f8932d, i2, bArr, 0, this.f8934f);
        this.f8932d = bArr;
    }

    private final void f(int i2) {
        if (i2 != -1) {
            this.f8931c += i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final int a(byte[] bArr, int i2, int i3) {
        int c2 = c(bArr, i2, i3);
        if (c2 == 0) {
            c2 = a(bArr, i2, i3, 0, true);
        }
        f(c2);
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final int b(int i2) {
        int d2 = d(i2);
        if (d2 == 0) {
            byte[] bArr = f8928g;
            d2 = a(bArr, 0, Math.min(i2, bArr.length), 0, true);
        }
        f(d2);
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final void c(int i2) {
        a(i2, false);
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final void readFully(byte[] bArr, int i2, int i3) {
        a(bArr, i2, i3, false);
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final long c() {
        return this.f8931c;
    }

    private final int c(byte[] bArr, int i2, int i3) {
        int i4 = this.f8934f;
        if (i4 == 0) {
            return 0;
        }
        int min = Math.min(i4, i3);
        System.arraycopy(this.f8932d, 0, bArr, i2, min);
        e(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final boolean a(byte[] bArr, int i2, int i3, boolean z) {
        int c2 = c(bArr, i2, i3);
        while (c2 < i3 && c2 != -1) {
            c2 = a(bArr, i2, i3, c2, z);
        }
        f(c2);
        return c2 != -1;
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final void b(byte[] bArr, int i2, int i3) {
        if (a(i3, false)) {
            System.arraycopy(this.f8932d, this.f8933e - i3, bArr, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final void a(int i2) {
        int d2 = d(i2);
        while (d2 < i2 && d2 != -1) {
            byte[] bArr = f8928g;
            d2 = a(bArr, -d2, Math.min(i2, bArr.length + d2), d2, false);
        }
        f(d2);
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final void b() {
        this.f8933e = 0;
    }

    private final boolean a(int i2, boolean z) {
        int i3 = this.f8933e + i2;
        byte[] bArr = this.f8932d;
        if (i3 > bArr.length) {
            this.f8932d = Arrays.copyOf(this.f8932d, cp1.a(bArr.length << 1, AntDetector.ACTION_ID_SAMPLE + i3, i3 + 524288));
        }
        int min = Math.min(this.f8934f - this.f8933e, i2);
        while (min < i2) {
            min = a(this.f8932d, this.f8933e, i2, min, false);
            if (min == -1) {
                return false;
            }
        }
        this.f8933e += i2;
        this.f8934f = Math.max(this.f8934f, this.f8933e);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.sj1
    public final long a() {
        return this.f8930b;
    }

    private final int a(byte[] bArr, int i2, int i3, int i4, boolean z) {
        if (!Thread.interrupted()) {
            int a2 = this.f8929a.a(bArr, i2 + i4, i3 - i4);
            if (a2 != -1) {
                return i4 + a2;
            }
            if (i4 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }
}
