package e.b.b.a.a.e;

import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* compiled from: RSAUtil.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static Cipher f17068a;

    private static PublicKey a(String str, String str2) {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(b.a(str2)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x004a, code lost:
    
        if (r7 == null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized byte[] a(byte[] r6, java.lang.String r7) {
        /*
            java.lang.Class<e.b.b.a.a.e.m> r0 = e.b.b.a.a.e.m.class
            monitor-enter(r0)
            r1 = 0
            javax.crypto.Cipher r2 = e.b.b.a.a.e.m.f17068a     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            if (r2 != 0) goto L1c
            java.lang.String r2 = "RSA"
            java.security.PublicKey r7 = a(r2, r7)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.lang.String r2 = "RSA/ECB/PKCS1Padding"
            javax.crypto.Cipher r2 = javax.crypto.Cipher.getInstance(r2)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            e.b.b.a.a.e.m.f17068a = r2     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            javax.crypto.Cipher r2 = e.b.b.a.a.e.m.f17068a     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            r3 = 1
            r2.init(r3, r7)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
        L1c:
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            r7.<init>()     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            r2 = 0
        L22:
            int r3 = r6.length     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            if (r2 >= r3) goto L3a
            javax.crypto.Cipher r3 = e.b.b.a.a.e.m.f17068a     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            int r4 = r6.length     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            int r4 = r4 - r2
            r5 = 117(0x75, float:1.64E-43)
            if (r4 >= r5) goto L30
            int r4 = r6.length     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            int r5 = r4 - r2
        L30:
            byte[] r3 = r3.doFinal(r6, r2, r5)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            r7.write(r3)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            int r2 = r2 + 117
            goto L22
        L3a:
            r7.flush()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
            byte[] r1 = r7.toByteArray()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L4f
        L41:
            r7.close()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> L57
            goto L4d
        L45:
            r6 = move-exception
            goto L51
        L47:
            r7 = r1
        L48:
            e.b.b.a.a.e.m.f17068a = r1     // Catch: java.lang.Throwable -> L4f
            if (r7 == 0) goto L4d
            goto L41
        L4d:
            monitor-exit(r0)
            return r1
        L4f:
            r6 = move-exception
            r1 = r7
        L51:
            if (r1 == 0) goto L56
            r1.close()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L57
        L56:
            throw r6     // Catch: java.lang.Throwable -> L57
        L57:
            r6 = move-exception
            monitor-exit(r0)
            goto L5b
        L5a:
            throw r6
        L5b:
            goto L5a
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.b.a.a.e.m.a(byte[], java.lang.String):byte[]");
    }
}
