package e.i.b.b.b.b;

import java.io.InputStream;
import java.util.Queue;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class g {
    static {
        new e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r2 = r3;
        r2 = r2 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
    
        if (r2 <= 2147483647L) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
    
        r3 = Integer.MAX_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003d, code lost:
    
        r2 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (r2 >= (-2147483648L)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        r3 = e.b.b.a.a.a.c.ALL_INT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0049, code lost:
    
        r3 = (int) r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(java.io.InputStream r8) {
        /*
            java.util.ArrayDeque r0 = new java.util.ArrayDeque
            r1 = 20
            r0.<init>(r1)
            r1 = 0
            r2 = 8192(0x2000, float:1.148E-41)
            r2 = 0
            r3 = 8192(0x2000, float:1.148E-41)
        Ld:
            r4 = -1
            r5 = 2147483639(0x7ffffff7, float:NaN)
            if (r2 >= r5) goto L4b
            int r5 = r5 - r2
            int r5 = java.lang.Math.min(r3, r5)
            byte[] r5 = new byte[r5]
            r0.add(r5)
            r6 = r2
            r2 = 0
        L1f:
            int r7 = r5.length
            if (r2 >= r7) goto L31
            int r7 = r7 - r2
            int r7 = r8.read(r5, r2, r7)
            if (r7 != r4) goto L2e
            byte[] r8 = a(r0, r6)
            goto L55
        L2e:
            int r2 = r2 + r7
            int r6 = r6 + r7
            goto L1f
        L31:
            long r2 = (long) r3
            long r2 = r2 + r2
            r4 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 <= 0) goto L3f
            r3 = 2147483647(0x7fffffff, float:NaN)
        L3d:
            r2 = r6
            goto Ld
        L3f:
            r4 = -2147483648(0xffffffff80000000, double:NaN)
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 >= 0) goto L49
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L3d
        L49:
            int r3 = (int) r2
            goto L3d
        L4b:
            int r8 = r8.read()
            if (r8 != r4) goto L56
            byte[] r8 = a(r0, r5)
        L55:
            return r8
        L56:
            java.lang.OutOfMemoryError r8 = new java.lang.OutOfMemoryError
            java.lang.String r0 = "input is too large to fit in a byte array"
            r8.<init>(r0)
            goto L5f
        L5e:
            throw r8
        L5f:
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: e.i.b.b.b.b.g.a(java.io.InputStream):byte[]");
    }

    public static InputStream a(InputStream inputStream, long j2) {
        return new f(inputStream, 1048577L);
    }

    private static byte[] a(Queue<byte[]> queue, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = i2;
        while (i3 > 0) {
            byte[] remove = queue.remove();
            int min = Math.min(i3, remove.length);
            System.arraycopy(remove, 0, bArr, i2 - i3, min);
            i3 -= min;
        }
        return bArr;
    }
}
