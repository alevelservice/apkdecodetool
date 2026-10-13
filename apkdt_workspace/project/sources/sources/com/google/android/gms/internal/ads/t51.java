package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class t51 implements t61 {

    /* renamed from: c, reason: collision with root package name */
    private static final int[] f9511c = b(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a, reason: collision with root package name */
    int[] f9512a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t51(byte[] bArr, int i2) {
        if (bArr.length == 32) {
            this.f9512a = b(bArr);
            this.f9513b = i2;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    private static int a(int i2, int i3) {
        return (i2 >>> (-i3)) | (i2 << i3);
    }

    private static int[] b(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    @Override // com.google.android.gms.internal.ads.t61
    public final byte[] a(byte[] bArr) {
        if (bArr.length <= Integer.MAX_VALUE - a()) {
            ByteBuffer allocate = ByteBuffer.allocate(a() + bArr.length);
            a(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    abstract int[] a(int[] iArr, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - a() >= bArr.length) {
            byte[] a2 = w61.a(a());
            byteBuffer.put(a2);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i2 = (remaining / 64) + 1;
            for (int i3 = 0; i3 < i2; i3++) {
                ByteBuffer a3 = a(a2, this.f9513b + i3);
                if (i3 == i2 - 1) {
                    s51.a(byteBuffer, wrap, a3, remaining % 64);
                } else {
                    s51.a(byteBuffer, wrap, a3, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer a(byte[] bArr, int i2) {
        int[] a2 = a(b(bArr), i2);
        int[] iArr = (int[]) a2.clone();
        a(iArr);
        for (int i3 = 0; i3 < a2.length; i3++) {
            a2[i3] = a2[i3] + iArr[i3];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(a2, 0, 16);
        return order;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr, int[] iArr2) {
        int[] iArr3 = f9511c;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, f9511c.length, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr) {
        for (int i2 = 0; i2 < 10; i2++) {
            a(iArr, 0, 4, 8, 12);
            a(iArr, 1, 5, 9, 13);
            a(iArr, 2, 6, 10, 14);
            a(iArr, 3, 7, 11, 15);
            a(iArr, 0, 5, 10, 15);
            a(iArr, 1, 6, 11, 12);
            a(iArr, 2, 7, 8, 13);
            a(iArr, 3, 4, 9, 14);
        }
    }

    private static void a(int[] iArr, int i2, int i3, int i4, int i5) {
        iArr[i2] = iArr[i2] + iArr[i3];
        iArr[i5] = a(iArr[i5] ^ iArr[i2], 16);
        iArr[i4] = iArr[i4] + iArr[i5];
        iArr[i3] = a(iArr[i3] ^ iArr[i4], 12);
        iArr[i2] = iArr[i2] + iArr[i3];
        iArr[i5] = a(iArr[i2] ^ iArr[i5], 8);
        iArr[i4] = iArr[i4] + iArr[i5];
        iArr[i3] = a(iArr[i3] ^ iArr[i4], 7);
    }
}
