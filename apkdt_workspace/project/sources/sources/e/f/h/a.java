package e.f.h;

import com.facebook.common.internal.f;
import com.facebook.common.internal.h;
import e.f.h.c;
import javax.annotation.Nullable;

/* compiled from: DefaultImageFormatChecker.java */
/* loaded from: classes.dex */
public class a implements c.a {

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f17438b = {-1, -40, -1};

    /* renamed from: c, reason: collision with root package name */
    private static final int f17439c = f17438b.length;

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f17440d = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* renamed from: e, reason: collision with root package name */
    private static final int f17441e = f17440d.length;

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f17442f = e.a("GIF87a");

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f17443g = e.a("GIF89a");

    /* renamed from: h, reason: collision with root package name */
    private static final byte[] f17444h = e.a("BM");

    /* renamed from: i, reason: collision with root package name */
    private static final int f17445i = f17444h.length;

    /* renamed from: j, reason: collision with root package name */
    private static final byte[] f17446j = {0, 0, 1, 0};

    /* renamed from: k, reason: collision with root package name */
    private static final int f17447k = f17446j.length;

    /* renamed from: l, reason: collision with root package name */
    private static final String[] f17448l = {"heic", "heix", "hevc", "hevx", "mif1", "msf1"};
    private static final int m = e.a("ftyp" + f17448l[0]).length;

    /* renamed from: a, reason: collision with root package name */
    final int f17449a = f.a(21, 20, f17439c, f17441e, 6, f17445i, f17447k, m);

    private static c b(byte[] bArr, int i2) {
        h.a(e.f.c.k.c.b(bArr, 0, i2));
        if (e.f.c.k.c.d(bArr, 0)) {
            return b.f17455f;
        }
        if (e.f.c.k.c.c(bArr, 0)) {
            return b.f17456g;
        }
        if (e.f.c.k.c.a(bArr, 0, i2)) {
            if (e.f.c.k.c.a(bArr, 0)) {
                return b.f17459j;
            }
            if (e.f.c.k.c.b(bArr, 0)) {
                return b.f17458i;
            }
            return b.f17457h;
        }
        return c.f17461b;
    }

    private static boolean c(byte[] bArr, int i2) {
        byte[] bArr2 = f17444h;
        if (i2 < bArr2.length) {
            return false;
        }
        return e.a(bArr, bArr2);
    }

    private static boolean d(byte[] bArr, int i2) {
        if (i2 < 6) {
            return false;
        }
        return e.a(bArr, f17442f) || e.a(bArr, f17443g);
    }

    private static boolean e(byte[] bArr, int i2) {
        if (i2 < m || bArr[3] < 8) {
            return false;
        }
        for (String str : f17448l) {
            if (e.a(bArr, bArr.length, e.a("ftyp" + str), m) > -1) {
                return true;
            }
        }
        return false;
    }

    private static boolean f(byte[] bArr, int i2) {
        byte[] bArr2 = f17446j;
        if (i2 < bArr2.length) {
            return false;
        }
        return e.a(bArr, bArr2);
    }

    private static boolean g(byte[] bArr, int i2) {
        byte[] bArr2 = f17438b;
        return i2 >= bArr2.length && e.a(bArr, bArr2);
    }

    private static boolean h(byte[] bArr, int i2) {
        byte[] bArr2 = f17440d;
        return i2 >= bArr2.length && e.a(bArr, bArr2);
    }

    @Override // e.f.h.c.a
    public int a() {
        return this.f17449a;
    }

    @Override // e.f.h.c.a
    @Nullable
    public final c a(byte[] bArr, int i2) {
        h.a(bArr);
        if (e.f.c.k.c.b(bArr, 0, i2)) {
            return b(bArr, i2);
        }
        if (g(bArr, i2)) {
            return b.f17450a;
        }
        if (h(bArr, i2)) {
            return b.f17451b;
        }
        if (d(bArr, i2)) {
            return b.f17452c;
        }
        if (c(bArr, i2)) {
            return b.f17453d;
        }
        if (f(bArr, i2)) {
            return b.f17454e;
        }
        if (e(bArr, i2)) {
            return b.f17460k;
        }
        return c.f17461b;
    }
}
