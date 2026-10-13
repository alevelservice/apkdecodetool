package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yo1 {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f10619a;

    /* renamed from: b, reason: collision with root package name */
    private int f10620b;

    /* renamed from: c, reason: collision with root package name */
    private int f10621c;

    /* renamed from: d, reason: collision with root package name */
    private int f10622d = 0;

    public yo1(byte[] bArr, int i2, int i3) {
        this.f10619a = bArr;
        this.f10621c = i2;
        this.f10620b = i3;
        e();
    }

    private final int d() {
        int i2 = 0;
        while (!a()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? a(i2) : 0);
    }

    private final void e() {
        int i2;
        int i3;
        int i4 = this.f10621c;
        no1.b(i4 >= 0 && (i2 = this.f10622d) >= 0 && i2 < 8 && (i4 < (i3 = this.f10620b) || (i4 == i3 && i2 == 0)));
    }

    public final boolean a() {
        return a(1) == 1;
    }

    public final void b(int i2) {
        int i3 = this.f10621c;
        this.f10621c = (i2 / 8) + i3;
        this.f10622d += i2 % 8;
        int i4 = this.f10622d;
        if (i4 > 7) {
            this.f10621c++;
            this.f10622d = i4 - 8;
        }
        while (true) {
            i3++;
            if (i3 <= this.f10621c) {
                if (c(i3)) {
                    this.f10621c++;
                    i3 += 2;
                }
            } else {
                e();
                return;
            }
        }
    }

    public final int c() {
        int d2 = d();
        return (d2 % 2 == 0 ? -1 : 1) * ((d2 + 1) / 2);
    }

    public final int a(int i2) {
        int i3;
        int i4;
        if (i2 == 0) {
            return 0;
        }
        int i5 = i2 / 8;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = c(this.f10621c + 1) ? this.f10621c + 2 : this.f10621c + 1;
            int i9 = this.f10622d;
            if (i9 != 0) {
                byte[] bArr = this.f10619a;
                i4 = ((bArr[i8] & 255) >>> (8 - i9)) | ((bArr[this.f10621c] & 255) << i9);
            } else {
                i4 = this.f10619a[this.f10621c];
            }
            i2 -= 8;
            i6 |= (255 & i4) << i2;
            this.f10621c = i8;
        }
        if (i2 > 0) {
            int i10 = this.f10622d + i2;
            byte b2 = (byte) (255 >> (8 - i2));
            int i11 = c(this.f10621c + 1) ? this.f10621c + 2 : this.f10621c + 1;
            if (i10 > 8) {
                byte[] bArr2 = this.f10619a;
                i3 = (b2 & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[this.f10621c] & 255) << (i10 - 8)))) | i6;
                this.f10621c = i11;
            } else {
                i3 = (b2 & ((255 & this.f10619a[this.f10621c]) >> (8 - i10))) | i6;
                if (i10 == 8) {
                    this.f10621c = i11;
                }
            }
            i6 = i3;
            this.f10622d = i10 % 8;
        }
        e();
        return i6;
    }

    private final boolean c(int i2) {
        if (2 > i2 || i2 >= this.f10620b) {
            return false;
        }
        byte[] bArr = this.f10619a;
        return bArr[i2] == 3 && bArr[i2 + (-2)] == 0 && bArr[i2 - 1] == 0;
    }

    public final int b() {
        return d();
    }
}
