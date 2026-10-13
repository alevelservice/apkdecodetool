package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fr1 extends cr1 {

    /* renamed from: c, reason: collision with root package name */
    private MessageDigest f6712c;

    @Override // com.google.android.gms.internal.ads.cr1
    public final byte[] a(String str) {
        byte[] bArr;
        String[] split = str.split(HanziToPinyin.Token.SEPARATOR);
        int i2 = 4;
        if (split.length == 1) {
            int a2 = gr1.a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(a2);
            bArr = allocate.array();
        } else if (split.length < 5) {
            bArr = new byte[split.length << 1];
            for (int i3 = 0; i3 < split.length; i3++) {
                int a3 = gr1.a(split[i3]);
                int i4 = (a3 >> 16) ^ (65535 & a3);
                byte[] bArr2 = {(byte) i4, (byte) (i4 >> 8)};
                int i5 = i3 << 1;
                bArr[i5] = bArr2[0];
                bArr[i5 + 1] = bArr2[1];
            }
        } else {
            bArr = new byte[split.length];
            for (int i6 = 0; i6 < split.length; i6++) {
                int a4 = gr1.a(split[i6]);
                bArr[i6] = (byte) ((a4 >> 24) ^ (((a4 & 255) ^ ((a4 >> 8) & 255)) ^ ((a4 >> 16) & 255)));
            }
        }
        this.f6712c = a();
        synchronized (this.f6104a) {
            if (this.f6712c == null) {
                return new byte[0];
            }
            this.f6712c.reset();
            this.f6712c.update(bArr);
            byte[] digest = this.f6712c.digest();
            if (digest.length <= 4) {
                i2 = digest.length;
            }
            byte[] bArr3 = new byte[i2];
            System.arraycopy(digest, 0, bArr3, 0, bArr3.length);
            return bArr3;
        }
    }
}
