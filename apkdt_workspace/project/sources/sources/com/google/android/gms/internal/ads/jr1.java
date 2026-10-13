package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class jr1 extends cr1 {

    /* renamed from: c, reason: collision with root package name */
    private MessageDigest f7561c;

    /* renamed from: d, reason: collision with root package name */
    private final int f7562d;

    /* renamed from: e, reason: collision with root package name */
    private final int f7563e;

    public jr1(int i2) {
        int i3 = i2 / 8;
        this.f7562d = i2 % 8 > 0 ? i3 + 1 : i3;
        this.f7563e = i2;
    }

    @Override // com.google.android.gms.internal.ads.cr1
    public final byte[] a(String str) {
        synchronized (this.f6104a) {
            this.f7561c = a();
            if (this.f7561c == null) {
                return new byte[0];
            }
            this.f7561c.reset();
            this.f7561c.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] digest = this.f7561c.digest();
            byte[] bArr = new byte[digest.length > this.f7562d ? this.f7562d : digest.length];
            System.arraycopy(digest, 0, bArr, 0, bArr.length);
            if (this.f7563e % 8 > 0) {
                long j2 = 0;
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    if (i2 > 0) {
                        j2 <<= 8;
                    }
                    j2 += bArr[i2] & 255;
                }
                long j3 = j2 >>> (8 - (this.f7563e % 8));
                for (int i3 = this.f7562d - 1; i3 >= 0; i3--) {
                    bArr[i3] = (byte) (255 & j3);
                    j3 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
