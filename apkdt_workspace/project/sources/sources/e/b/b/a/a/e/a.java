package e.b.b.a.a.e;

import android.os.Build;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AESUtil.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Cipher f17049a;

    public static synchronized byte[] a(byte[] bArr, byte[] bArr2, int i2, int i3) {
        byte[] doFinal;
        synchronized (a.class) {
            try {
                if (f17049a == null) {
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    f17049a = Cipher.getInstance("AES");
                    f17049a.init(1, secretKeySpec);
                }
                doFinal = f17049a.doFinal(bArr2, i2, i3);
            } catch (Throwable unused) {
                f17049a = null;
                return null;
            }
        }
        return doFinal;
    }

    public static byte[] a(byte[] bArr) {
        SecureRandom secureRandom;
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            if (Build.VERSION.SDK_INT >= 17) {
                try {
                    secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
                } catch (Throwable unused) {
                    secureRandom = SecureRandom.getInstance("SHA1PRNG");
                }
            } else {
                secureRandom = SecureRandom.getInstance("SHA1PRNG");
            }
            secureRandom.setSeed(bArr);
            keyGenerator.init(128, secureRandom);
            return keyGenerator.generateKey().getEncoded();
        } catch (Throwable unused2) {
            return null;
        }
    }
}
