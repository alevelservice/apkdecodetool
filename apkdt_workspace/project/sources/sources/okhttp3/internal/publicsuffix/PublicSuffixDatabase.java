package okhttp3.internal.publicsuffix;

import i.g0.c;
import j.e;
import j.l;
import j.n;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* renamed from: e, reason: collision with root package name */
    private static final byte[] f20188e = {42};

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f20189f = new String[0];

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f20190g = {"*"};

    /* renamed from: h, reason: collision with root package name */
    private static final PublicSuffixDatabase f20191h = new PublicSuffixDatabase();

    /* renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f20192a = new AtomicBoolean(false);

    /* renamed from: b, reason: collision with root package name */
    private final CountDownLatch f20193b = new CountDownLatch(1);

    /* renamed from: c, reason: collision with root package name */
    private byte[] f20194c;

    /* renamed from: d, reason: collision with root package name */
    private byte[] f20195d;

    public static PublicSuffixDatabase a() {
        return f20191h;
    }

    private void b() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        e a2 = n.a(new l(n.a(resourceAsStream)));
        try {
            byte[] bArr = new byte[a2.readInt()];
            a2.readFully(bArr);
            byte[] bArr2 = new byte[a2.readInt()];
            a2.readFully(bArr2);
            synchronized (this) {
                this.f20194c = bArr;
                this.f20195d = bArr2;
            }
            this.f20193b.countDown();
        } finally {
            c.a(a2);
        }
    }

    private void c() {
        boolean z = false;
        while (true) {
            try {
                try {
                    b();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e2) {
                    okhttp3.internal.platform.e.c().a(5, "Failed to read public suffix list", e2);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public String a(String str) {
        int length;
        int length2;
        if (str != null) {
            String[] split = IDN.toUnicode(str).split("\\.");
            String[] a2 = a(split);
            if (split.length == a2.length && a2[0].charAt(0) != '!') {
                return null;
            }
            if (a2[0].charAt(0) == '!') {
                length = split.length;
                length2 = a2.length;
            } else {
                length = split.length;
                length2 = a2.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int i2 = length - length2; i2 < split2.length; i2++) {
                sb.append(split2[i2]);
                sb.append('.');
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        throw new NullPointerException("domain == null");
    }

    private String[] a(String[] strArr) {
        String str;
        String str2;
        String str3;
        String[] strArr2;
        String[] strArr3;
        if (!this.f20192a.get() && this.f20192a.compareAndSet(false, true)) {
            c();
        } else {
            try {
                this.f20193b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        synchronized (this) {
            if (this.f20194c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        byte[][] bArr = new byte[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(c.f18456i);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= bArr.length) {
                str = null;
                break;
            }
            str = a(this.f20194c, bArr, i3);
            if (str != null) {
                break;
            }
            i3++;
        }
        if (bArr.length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i4 = 0; i4 < bArr2.length - 1; i4++) {
                bArr2[i4] = f20188e;
                str2 = a(this.f20194c, bArr2, i4);
                if (str2 != null) {
                    break;
                }
            }
        }
        str2 = null;
        if (str2 != null) {
            for (int i5 = 0; i5 < bArr.length - 1; i5++) {
                str3 = a(this.f20195d, bArr, i5);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            return ("!" + str3).split("\\.");
        }
        if (str == null && str2 == null) {
            return f20190g;
        }
        if (str != null) {
            strArr2 = str.split("\\.");
        } else {
            strArr2 = f20189f;
        }
        if (str2 != null) {
            strArr3 = str2.split("\\.");
        } else {
            strArr3 = f20189f;
        }
        return strArr2.length > strArr3.length ? strArr2 : strArr3;
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = 0;
        while (i6 < length) {
            int i7 = (i6 + length) / 2;
            while (i7 > -1 && bArr[i7] != 10) {
                i7--;
            }
            int i8 = i7 + 1;
            int i9 = 1;
            while (true) {
                i3 = i8 + i9;
                if (bArr[i3] == 10) {
                    break;
                }
                i9++;
            }
            int i10 = i3 - i8;
            int i11 = i2;
            boolean z = false;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (z) {
                    z = false;
                    i4 = 46;
                } else {
                    i4 = bArr2[i11][i12] & 255;
                }
                i5 = i4 - (bArr[i8 + i13] & 255);
                if (i5 == 0) {
                    i13++;
                    i12++;
                    if (i13 == i10) {
                        break;
                    }
                    if (bArr2[i11].length == i12) {
                        if (i11 == bArr2.length - 1) {
                            break;
                        }
                        i11++;
                        z = true;
                        i12 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i5 >= 0) {
                if (i5 <= 0) {
                    int i14 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i11].length;
                    }
                    if (length2 >= i14) {
                        if (length2 <= i14) {
                            return new String(bArr, i8, i10, c.f18456i);
                        }
                    }
                }
                i6 = i3 + 1;
            }
            length = i8 - 1;
        }
        return null;
    }
}
