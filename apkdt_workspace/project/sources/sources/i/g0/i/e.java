package i.g0.i;

import java.io.IOException;

/* compiled from: Http2.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    static final j.f f18601a = j.f.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: b, reason: collision with root package name */
    private static final String[] f18602b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: c, reason: collision with root package name */
    static final String[] f18603c = new String[64];

    /* renamed from: d, reason: collision with root package name */
    static final String[] f18604d = new String[256];

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = f18604d;
            if (i3 >= strArr.length) {
                break;
            }
            strArr[i3] = i.g0.c.a("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr2 = f18603c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i4 : iArr) {
            f18603c[i4 | 8] = f18603c[i4] + "|PADDED";
        }
        String[] strArr3 = f18603c;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        for (int i5 : new int[]{4, 32, 36}) {
            for (int i6 : iArr) {
                int i7 = i6 | i5;
                f18603c[i7] = f18603c[i6] + '|' + f18603c[i5];
                f18603c[i7 | 8] = f18603c[i6] + '|' + f18603c[i5] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr4 = f18603c;
            if (i2 >= strArr4.length) {
                return;
            }
            if (strArr4[i2] == null) {
                strArr4[i2] = f18604d[i2];
            }
            i2++;
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(i.g0.c.a(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IOException b(String str, Object... objArr) {
        throw new IOException(i.g0.c.a(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(boolean z, int i2, int i3, byte b2, byte b3) {
        String[] strArr = f18602b;
        String a2 = b2 < strArr.length ? strArr[b2] : i.g0.c.a("0x%02x", Byte.valueOf(b2));
        String a3 = a(b2, b3);
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i3);
        objArr[3] = a2;
        objArr[4] = a3;
        return i.g0.c.a("%s 0x%08x %5d %-13s %s", objArr);
    }

    static String a(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        if (b2 != 2 && b2 != 3) {
            if (b2 == 4 || b2 == 6) {
                return b3 == 1 ? "ACK" : f18604d[b3];
            }
            if (b2 != 7 && b2 != 8) {
                String[] strArr = f18603c;
                String str = b3 < strArr.length ? strArr[b3] : f18604d[b3];
                if (b2 != 5 || (b3 & 4) == 0) {
                    return (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f18604d[b3];
    }
}
