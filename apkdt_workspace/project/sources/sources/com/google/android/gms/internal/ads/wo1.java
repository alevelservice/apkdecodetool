package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wo1 {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f10159a;

    /* renamed from: b, reason: collision with root package name */
    private int f10160b;

    /* renamed from: c, reason: collision with root package name */
    private int f10161c;

    /* renamed from: d, reason: collision with root package name */
    private int f10162d;

    public wo1(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public final int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = false;
        if (i2 == 0) {
            return 0;
        }
        int i7 = i2 / 8;
        int i8 = i2;
        int i9 = 0;
        for (int i10 = 0; i10 < i7; i10++) {
            int i11 = this.f10161c;
            if (i11 != 0) {
                byte[] bArr = this.f10159a;
                int i12 = this.f10160b;
                i6 = ((bArr[i12 + 1] & 255) >>> (8 - i11)) | ((bArr[i12] & 255) << i11);
            } else {
                i6 = this.f10159a[this.f10160b];
            }
            i8 -= 8;
            i9 |= (255 & i6) << i8;
            this.f10160b++;
        }
        if (i8 > 0) {
            int i13 = this.f10161c + i8;
            byte b2 = (byte) (255 >> (8 - i8));
            if (i13 > 8) {
                byte[] bArr2 = this.f10159a;
                int i14 = this.f10160b;
                i5 = (b2 & (((bArr2[i14 + 1] & 255) >> (16 - i13)) | ((bArr2[i14] & 255) << (i13 - 8)))) | i9;
                this.f10160b = i14 + 1;
            } else {
                byte[] bArr3 = this.f10159a;
                int i15 = this.f10160b;
                i5 = (b2 & ((bArr3[i15] & 255) >> (8 - i13))) | i9;
                if (i13 == 8) {
                    this.f10160b = i15 + 1;
                }
            }
            i9 = i5;
            this.f10161c = i13 % 8;
        }
        int i16 = this.f10160b;
        if (i16 >= 0 && (i3 = this.f10161c) >= 0 && i3 < 8 && (i16 < (i4 = this.f10162d) || (i16 == i4 && i3 == 0))) {
            z = true;
        }
        no1.b(z);
        return i9;
    }

    private wo1(byte[] bArr, int i2) {
        this.f10159a = bArr;
        this.f10162d = i2;
    }
}
