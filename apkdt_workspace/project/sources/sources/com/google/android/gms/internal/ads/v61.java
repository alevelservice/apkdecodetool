package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v61 implements z01 {

    /* renamed from: a, reason: collision with root package name */
    private final Mac f9873a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9874b;

    /* renamed from: c, reason: collision with root package name */
    private final String f9875c;

    /* renamed from: d, reason: collision with root package name */
    private final Key f9876d;

    public v61(String str, Key key, int i2) {
        if (i2 >= 10) {
            if (key.getEncoded().length >= 16) {
                char c2 = 65535;
                int hashCode = str.hashCode();
                if (hashCode != -1823053428) {
                    if (hashCode != 392315118) {
                        if (hashCode == 392317873 && str.equals("HMACSHA512")) {
                            c2 = 2;
                        }
                    } else if (str.equals("HMACSHA256")) {
                        c2 = 1;
                    }
                } else if (str.equals("HMACSHA1")) {
                    c2 = 0;
                }
                if (c2 != 0) {
                    if (c2 != 1) {
                        if (c2 != 2) {
                            String valueOf = String.valueOf(str);
                            throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
                        }
                        if (i2 > 64) {
                            throw new InvalidAlgorithmParameterException("tag size too big");
                        }
                    } else if (i2 > 32) {
                        throw new InvalidAlgorithmParameterException("tag size too big");
                    }
                } else if (i2 > 20) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                this.f9875c = str;
                this.f9874b = i2;
                this.f9876d = key;
                this.f9873a = k61.f7624g.a(str);
                this.f9873a.init(key);
                return;
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.z01
    public final byte[] a(byte[] bArr) {
        Mac a2;
        try {
            a2 = (Mac) this.f9873a.clone();
        } catch (CloneNotSupportedException unused) {
            a2 = k61.f7624g.a(this.f9875c);
            a2.init(this.f9876d);
        }
        a2.update(bArr);
        byte[] bArr2 = new byte[this.f9874b];
        System.arraycopy(a2.doFinal(), 0, bArr2, 0, this.f9874b);
        return bArr2;
    }
}
