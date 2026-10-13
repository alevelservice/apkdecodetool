package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class d7 {
    /* JADX INFO: Access modifiers changed from: private */
    public static void a(byte b2, char[] cArr, int i2) {
        cArr[i2] = (char) b2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(byte b2) {
        return b2 >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(byte b2) {
        return b2 < -32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(byte b2) {
        return b2 < -16;
    }

    private static boolean d(byte b2) {
        return b2 > -65;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(byte b2, byte b3, char[] cArr, int i2) {
        if (b2 >= -62 && !d(b3)) {
            cArr[i2] = (char) (((b2 & 31) << 6) | (b3 & 63));
            return;
        }
        throw l4.zzvb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(byte b2, byte b3, byte b4, char[] cArr, int i2) {
        if (!d(b3) && ((b2 != -32 || b3 >= -96) && ((b2 != -19 || b3 < -96) && !d(b4)))) {
            cArr[i2] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
            return;
        }
        throw l4.zzvb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i2) {
        if (!d(b3) && (((b2 << 28) + (b3 + 112)) >> 30) == 0 && !d(b4) && !d(b5)) {
            int i3 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
            cArr[i2] = (char) ((i3 >>> 10) + 55232);
            cArr[i2 + 1] = (char) ((i3 & 1023) + 56320);
            return;
        }
        throw l4.zzvb();
    }
}
