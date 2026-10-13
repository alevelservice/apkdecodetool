package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u61 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f9686a;

    private u61(byte[] bArr, int i2, int i3) {
        this.f9686a = new byte[i3];
        System.arraycopy(bArr, 0, this.f9686a, 0, i3);
    }

    public static u61 a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new u61(bArr, 0, bArr.length);
    }

    public final byte[] a() {
        byte[] bArr = this.f9686a;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
