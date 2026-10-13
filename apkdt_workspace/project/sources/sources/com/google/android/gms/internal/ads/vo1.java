package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vo1 {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f9967a;

    /* renamed from: b, reason: collision with root package name */
    private int f9968b;

    /* renamed from: c, reason: collision with root package name */
    private int f9969c;

    public vo1() {
    }

    public final void a(int i2) {
        a(a() < i2 ? new byte[i2] : this.f9967a, i2);
    }

    public final void b(int i2) {
        no1.a(i2 >= 0 && i2 <= this.f9967a.length);
        this.f9969c = i2;
    }

    public final int c() {
        return this.f9969c;
    }

    public final void d(int i2) {
        c(this.f9968b + i2);
    }

    public final long e() {
        byte[] bArr = this.f9967a;
        this.f9968b = this.f9968b + 1;
        this.f9968b = this.f9968b + 1;
        long j2 = ((bArr[r1] & 255) << 56) | ((bArr[r5] & 255) << 48);
        this.f9968b = this.f9968b + 1;
        long j3 = j2 | ((bArr[r5] & 255) << 40);
        this.f9968b = this.f9968b + 1;
        long j4 = j3 | ((bArr[r5] & 255) << 32);
        this.f9968b = this.f9968b + 1;
        long j5 = j4 | ((bArr[r5] & 255) << 24);
        this.f9968b = this.f9968b + 1;
        long j6 = j5 | ((bArr[r5] & 255) << 16);
        this.f9968b = this.f9968b + 1;
        long j7 = j6 | ((bArr[r5] & 255) << 8);
        this.f9968b = this.f9968b + 1;
        return j7 | (255 & bArr[r5]);
    }

    public final short f() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.f9968b;
        this.f9968b = i4 + 1;
        return (short) ((bArr[i4] & 255) | i3);
    }

    public final int g() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        return bArr[i2] & 255;
    }

    public final int h() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.f9968b;
        this.f9968b = i4 + 1;
        return (bArr[i4] & 255) | i3;
    }

    public final void i() {
        this.f9968b = 0;
        this.f9969c = 0;
    }

    public final int j() {
        return this.f9969c - this.f9968b;
    }

    public final int k() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.f9968b;
        this.f9968b = i4 + 1;
        return ((bArr[i4] & 255) << 8) | i3;
    }

    public final long l() {
        byte[] bArr = this.f9967a;
        this.f9968b = this.f9968b + 1;
        this.f9968b = this.f9968b + 1;
        long j2 = ((bArr[r1] & 255) << 24) | ((bArr[r5] & 255) << 16);
        this.f9968b = this.f9968b + 1;
        long j3 = j2 | ((bArr[r5] & 255) << 8);
        this.f9968b = this.f9968b + 1;
        return j3 | (255 & bArr[r5]);
    }

    public final long m() {
        byte[] bArr = this.f9967a;
        this.f9968b = this.f9968b + 1;
        this.f9968b = this.f9968b + 1;
        long j2 = (bArr[r1] & 255) | ((bArr[r5] & 255) << 8);
        this.f9968b = this.f9968b + 1;
        long j3 = j2 | ((bArr[r5] & 255) << 16);
        this.f9968b = this.f9968b + 1;
        return j3 | ((255 & bArr[r5]) << 24);
    }

    public final int n() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.f9968b;
        this.f9968b = i4 + 1;
        int i5 = (bArr[i4] & 255) | i3;
        this.f9968b += 2;
        return i5;
    }

    public final int o() {
        int d2 = d();
        if (d2 >= 0) {
            return d2;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(d2);
        throw new IllegalStateException(sb.toString());
    }

    public final long p() {
        long e2 = e();
        if (e2 >= 0) {
            return e2;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(e2);
        throw new IllegalStateException(sb.toString());
    }

    public vo1(int i2) {
        this.f9967a = new byte[i2];
        this.f9969c = i2;
    }

    public final void a(byte[] bArr, int i2) {
        this.f9967a = bArr;
        this.f9969c = i2;
        this.f9968b = 0;
    }

    public final void c(int i2) {
        no1.a(i2 >= 0 && i2 <= this.f9969c);
        this.f9968b = i2;
    }

    public final int d() {
        byte[] bArr = this.f9967a;
        int i2 = this.f9968b;
        this.f9968b = i2 + 1;
        int i3 = (bArr[i2] & 255) << 24;
        int i4 = this.f9968b;
        this.f9968b = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 16);
        int i6 = this.f9968b;
        this.f9968b = i6 + 1;
        int i7 = i5 | ((bArr[i6] & 255) << 8);
        int i8 = this.f9968b;
        this.f9968b = i8 + 1;
        return (bArr[i8] & 255) | i7;
    }

    public final String e(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = (this.f9968b + i2) - 1;
        String str = new String(this.f9967a, this.f9968b, (i3 >= this.f9969c || this.f9967a[i3] != 0) ? i2 : i2 - 1);
        this.f9968b += i2;
        return str;
    }

    public final int b() {
        return this.f9968b;
    }

    public vo1(byte[] bArr) {
        this.f9967a = bArr;
        this.f9969c = bArr.length;
    }

    public final int a() {
        byte[] bArr = this.f9967a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final void a(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.f9967a, this.f9968b, bArr, i2, i3);
        this.f9968b += i3;
    }
}
