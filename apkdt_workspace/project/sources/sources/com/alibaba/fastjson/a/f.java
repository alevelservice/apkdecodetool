package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: JSONLexer.java */
/* loaded from: classes.dex */
public final class f {
    public static final boolean[] A;
    public static final boolean[] B;
    private static boolean v;
    private static final ThreadLocal<char[]> w;
    protected static final int[] x;
    public static final char[] y;
    static final int[] z;

    /* renamed from: a, reason: collision with root package name */
    protected int f3161a;

    /* renamed from: b, reason: collision with root package name */
    protected int f3162b;

    /* renamed from: c, reason: collision with root package name */
    public int f3163c;

    /* renamed from: d, reason: collision with root package name */
    protected char f3164d;

    /* renamed from: e, reason: collision with root package name */
    protected int f3165e;

    /* renamed from: f, reason: collision with root package name */
    protected int f3166f;

    /* renamed from: g, reason: collision with root package name */
    protected char[] f3167g;

    /* renamed from: h, reason: collision with root package name */
    protected int f3168h;

    /* renamed from: i, reason: collision with root package name */
    protected boolean f3169i;

    /* renamed from: j, reason: collision with root package name */
    protected boolean f3170j;

    /* renamed from: k, reason: collision with root package name */
    protected int f3171k;

    /* renamed from: l, reason: collision with root package name */
    protected boolean f3172l;
    public TimeZone m;
    public Locale n;
    public Calendar o;
    public int p;
    protected final String q;
    protected final int r;
    protected String s;
    public boolean t;
    protected long u;

    static {
        int i2;
        try {
            i2 = Class.forName("android.os.Build$VERSION").getField("SDK_INT").getInt(null);
        } catch (Exception unused) {
            i2 = -1;
        }
        char c2 = 0;
        v = i2 >= 23;
        w = new ThreadLocal<>();
        x = new int[103];
        for (int i3 = 48; i3 <= 57; i3++) {
            x[i3] = i3 - 48;
        }
        for (int i4 = 97; i4 <= 102; i4++) {
            x[i4] = (i4 - 97) + 10;
        }
        for (int i5 = 65; i5 <= 70; i5++) {
            x[i5] = (i5 - 65) + 10;
        }
        y = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        z = new int[256];
        Arrays.fill(z, -1);
        int length = y.length;
        for (int i6 = 0; i6 < length; i6++) {
            z[y[i6]] = i6;
        }
        z[61] = 0;
        A = new boolean[256];
        char c3 = 0;
        while (true) {
            boolean[] zArr = A;
            if (c3 >= zArr.length) {
                break;
            }
            if (c3 >= 'A' && c3 <= 'Z') {
                zArr[c3] = true;
            } else if (c3 >= 'a' && c3 <= 'z') {
                A[c3] = true;
            } else if (c3 == '_') {
                A[c3] = true;
            }
            c3 = (char) (c3 + 1);
        }
        B = new boolean[256];
        while (true) {
            boolean[] zArr2 = B;
            if (c2 >= zArr2.length) {
                return;
            }
            if (c2 >= 'A' && c2 <= 'Z') {
                zArr2[c2] = true;
            } else if (c2 >= 'a' && c2 <= 'z') {
                B[c2] = true;
            } else if (c2 == '_') {
                B[c2] = true;
            } else if (c2 >= '0' && c2 <= '9') {
                B[c2] = true;
            }
            c2 = (char) (c2 + 1);
        }
    }

    public f(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    static boolean a(char c2, char c3, char c4, char c5, char c6, char c7, int i2, int i3) {
        if (c2 >= '1' && c2 <= '3' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
            if (c6 == '0') {
                if (c7 < '1' || c7 > '9') {
                    return false;
                }
            } else if (c6 != '1' || (c7 != '0' && c7 != '1' && c7 != '2')) {
                return false;
            }
            if (i2 == 48) {
                return i3 >= 49 && i3 <= 57;
            }
            if (i2 != 49 && i2 != 50) {
                return i2 == 51 && (i3 == 48 || i3 == 49);
            }
            if (i3 >= 48 && i3 <= 57) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x001d, code lost:
    
        if (r5 <= '4') goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean b(char r4, char r5, char r6, char r7, char r8, char r9) {
        /*
            r0 = 57
            r1 = 0
            r2 = 48
            if (r4 != r2) goto Lc
            if (r5 < r2) goto Lb
            if (r5 <= r0) goto L20
        Lb:
            return r1
        Lc:
            r3 = 49
            if (r4 != r3) goto L15
            if (r5 < r2) goto L14
            if (r5 <= r0) goto L20
        L14:
            return r1
        L15:
            r3 = 50
            if (r4 != r3) goto L42
            if (r5 < r2) goto L42
            r4 = 52
            if (r5 <= r4) goto L20
            goto L42
        L20:
            r4 = 53
            r5 = 54
            if (r6 < r2) goto L2d
            if (r6 > r4) goto L2d
            if (r7 < r2) goto L2c
            if (r7 <= r0) goto L32
        L2c:
            return r1
        L2d:
            if (r6 != r5) goto L42
            if (r7 == r2) goto L32
            return r1
        L32:
            if (r8 < r2) goto L3b
            if (r8 > r4) goto L3b
            if (r9 < r2) goto L3a
            if (r9 <= r0) goto L40
        L3a:
            return r1
        L3b:
            if (r8 != r5) goto L42
            if (r9 == r2) goto L40
            return r1
        L40:
            r4 = 1
            return r4
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.b(char, char, char, char, char, char):boolean");
    }

    private void v() {
        this.f3171k = this.f3165e - 1;
        this.f3172l = false;
        do {
            this.f3168h++;
            c();
        } while (Character.isLetterOrDigit(this.f3164d));
        String m = m();
        if (m.equals("null")) {
            this.f3161a = 8;
            return;
        }
        if (m.equals("true")) {
            this.f3161a = 6;
            return;
        }
        if (m.equals("false")) {
            this.f3161a = 7;
            return;
        }
        if (m.equals("new")) {
            this.f3161a = 9;
            return;
        }
        if (m.equals("undefined")) {
            this.f3161a = 23;
            return;
        }
        if (m.equals("Set")) {
            this.f3161a = 21;
        } else if (m.equals("TreeSet")) {
            this.f3161a = 22;
        } else {
            this.f3161a = 18;
        }
    }

    public final int a() {
        return this.f3161a;
    }

    public void b() {
        char[] cArr = this.f3167g;
        if (cArr.length <= 8196) {
            w.set(cArr);
        }
        this.f3167g = null;
    }

    public char c() {
        int i2 = this.f3165e + 1;
        this.f3165e = i2;
        char charAt = i2 >= this.r ? (char) 26 : this.q.charAt(i2);
        this.f3164d = charAt;
        return charAt;
    }

    public final String d() {
        char charAt = this.q.charAt((this.f3171k + this.f3168h) - 1);
        int i2 = this.f3168h;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i2--;
        }
        return b(this.f3171k, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        p();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x010d, code lost:
    
        v();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0110, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:46:0x0078. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.e():void");
    }

    public final void f() {
        while (true) {
            char c2 = this.f3164d;
            if (!(c2 <= ' ' && (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b'))) {
                break;
            } else {
                c();
            }
        }
        char c3 = this.f3164d;
        if (c3 != '_' && !Character.isLetter(c3)) {
            e();
        } else {
            v();
        }
    }

    public final Number g() {
        char c2;
        long j2;
        boolean z2;
        long j3;
        int i2 = this.f3171k;
        int i3 = this.f3168h + i2;
        int i4 = i3 - 1;
        char charAt = i4 >= this.r ? (char) 26 : this.q.charAt(i4);
        if (charAt == 'B') {
            i3--;
            c2 = 'B';
        } else if (charAt == 'L') {
            i3--;
            c2 = 'L';
        } else if (charAt != 'S') {
            c2 = ' ';
        } else {
            i3--;
            c2 = 'S';
        }
        int i5 = this.f3171k;
        if ((i5 >= this.r ? (char) 26 : this.q.charAt(i5)) == '-') {
            j2 = Long.MIN_VALUE;
            i2++;
            z2 = true;
        } else {
            j2 = -9223372036854775807L;
            z2 = false;
        }
        if (i2 < i3) {
            j3 = -((i2 >= this.r ? (char) 26 : this.q.charAt(i2)) - '0');
            i2++;
        } else {
            j3 = 0;
        }
        while (i2 < i3) {
            int i6 = i2 + 1;
            int charAt2 = (i2 >= this.r ? (char) 26 : this.q.charAt(i2)) - '0';
            if (j3 < -922337203685477580L) {
                return new BigInteger(d());
            }
            long j4 = j3 * 10;
            long j5 = charAt2;
            if (j4 < j2 + j5) {
                return new BigInteger(d());
            }
            j3 = j4 - j5;
            i2 = i6;
        }
        if (!z2) {
            long j6 = -j3;
            if (j6 > 2147483647L || c2 == 'L') {
                return Long.valueOf(j6);
            }
            if (c2 == 'S') {
                return Short.valueOf((short) j6);
            }
            if (c2 == 'B') {
                return Byte.valueOf((byte) j6);
            }
            return Integer.valueOf((int) j6);
        }
        if (i2 <= this.f3171k + 1) {
            throw new NumberFormatException(d());
        }
        if (j3 < -2147483648L || c2 == 'L') {
            return Long.valueOf(j3);
        }
        if (c2 == 'S') {
            return Short.valueOf((short) j3);
        }
        if (c2 == 'B') {
            return Byte.valueOf((byte) j3);
        }
        return Integer.valueOf((int) j3);
    }

    public String h() {
        StringBuilder sb = new StringBuilder();
        sb.append("pos ");
        sb.append(this.f3165e);
        sb.append(", json : ");
        sb.append(this.r < 65536 ? this.q : this.q.substring(0, AntDetector.ACTION_ID_SAMPLE));
        return sb.toString();
    }

    protected void i() {
        c();
        char c2 = this.f3164d;
        if (c2 != '/') {
            if (c2 == '*') {
                c();
                while (true) {
                    char c3 = this.f3164d;
                    if (c3 == 26) {
                        return;
                    }
                    if (c3 == '*') {
                        c();
                        if (this.f3164d == '/') {
                            c();
                            return;
                        }
                    } else {
                        c();
                    }
                }
            } else {
                throw new com.alibaba.fastjson.f("invalid comment");
            }
        }
        do {
            c();
        } while (this.f3164d != '\n');
        c();
    }

    public final void j() {
        char c2 = this.f3164d;
        int i2 = this.f3165e + 1;
        int indexOf = this.q.indexOf(c2, i2);
        if (indexOf != -1) {
            int i3 = indexOf - i2;
            char[] a2 = a(this.f3165e + 1, i3);
            boolean z2 = false;
            while (i3 > 0 && a2[i3 - 1] == '\\') {
                int i4 = 1;
                for (int i5 = i3 - 2; i5 >= 0 && a2[i5] == '\\'; i5--) {
                    i4++;
                }
                if (i4 % 2 == 0) {
                    break;
                }
                int indexOf2 = this.q.indexOf(c2, indexOf + 1);
                int i6 = (indexOf2 - indexOf) + i3;
                if (i6 >= a2.length) {
                    int length = (a2.length * 3) / 2;
                    if (length < i6) {
                        length = i6;
                    }
                    char[] cArr = new char[length];
                    System.arraycopy(a2, 0, cArr, 0, a2.length);
                    a2 = cArr;
                }
                this.q.getChars(indexOf, indexOf2, a2, i3);
                indexOf = indexOf2;
                i3 = i6;
                z2 = true;
            }
            if (!z2) {
                for (int i7 = 0; i7 < i3; i7++) {
                    if (a2[i7] == '\\') {
                        z2 = true;
                    }
                }
            }
            this.f3167g = a2;
            this.f3168h = i3;
            this.f3171k = this.f3165e;
            this.f3172l = z2;
            this.f3165e = indexOf + 1;
            int i8 = this.f3165e;
            this.f3164d = i8 >= this.r ? (char) 26 : this.q.charAt(i8);
            this.f3161a = 4;
            return;
        }
        throw new com.alibaba.fastjson.f("unclosed str, " + h());
    }

    public final int k() {
        int i2;
        boolean z2;
        int i3 = this.f3171k;
        int i4 = this.f3168h + i3;
        int i5 = 0;
        if ((i3 >= this.r ? (char) 26 : this.q.charAt(i3)) == '-') {
            i2 = e.b.b.a.a.a.c.ALL_INT;
            i3++;
            z2 = true;
        } else {
            i2 = -2147483647;
            z2 = false;
        }
        if (i3 < i4) {
            i5 = -((i3 >= this.r ? (char) 26 : this.q.charAt(i3)) - '0');
            i3++;
        }
        while (i3 < i4) {
            int i6 = i3 + 1;
            char charAt = i3 >= this.r ? (char) 26 : this.q.charAt(i3);
            if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                i3 = i6;
                break;
            }
            int i7 = charAt - '0';
            if (i5 < -214748364) {
                throw new NumberFormatException(d());
            }
            int i8 = i5 * 10;
            if (i8 < i2 + i7) {
                throw new NumberFormatException(d());
            }
            i5 = i8 - i7;
            i3 = i6;
        }
        if (!z2) {
            return -i5;
        }
        if (i3 > this.f3171k + 1) {
            return i5;
        }
        throw new NumberFormatException(d());
    }

    public byte[] l() {
        return a(this.q, this.f3171k + 1, this.f3168h);
    }

    public final String m() {
        if (this.f3172l) {
            return a(this.f3167g, this.f3168h);
        }
        return b(this.f3171k + 1, this.f3168h);
    }

    public final boolean n() {
        int i2 = 0;
        while (true) {
            char a2 = a(i2);
            boolean z2 = true;
            if (a2 == 26) {
                return true;
            }
            if (a2 > ' ' || (a2 != ' ' && a2 != '\n' && a2 != '\r' && a2 != '\t' && a2 != '\f' && a2 != '\b')) {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        while (true) {
            char c2 = this.f3164d;
            if (c2 > '/') {
                return;
            }
            if (c2 == ' ' || c2 == '\r' || c2 == '\n' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                c();
            } else if (c2 != '/') {
                return;
            } else {
                i();
            }
        }
    }

    public final void p() {
        int i2 = this.f3165e;
        this.f3171k = i2;
        this.f3169i = false;
        if (this.f3164d == '-') {
            this.f3168h++;
            int i3 = i2 + 1;
            this.f3165e = i3;
            this.f3164d = i3 >= this.r ? (char) 26 : this.q.charAt(i3);
        }
        while (true) {
            char c2 = this.f3164d;
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.f3168h++;
            int i4 = this.f3165e + 1;
            this.f3165e = i4;
            this.f3164d = i4 >= this.r ? (char) 26 : this.q.charAt(i4);
        }
        this.f3170j = false;
        if (this.f3164d == '.') {
            this.f3168h++;
            int i5 = this.f3165e + 1;
            this.f3165e = i5;
            this.f3164d = i5 >= this.r ? (char) 26 : this.q.charAt(i5);
            this.f3170j = true;
            while (true) {
                char c3 = this.f3164d;
                if (c3 < '0' || c3 > '9') {
                    break;
                }
                this.f3168h++;
                int i6 = this.f3165e + 1;
                this.f3165e = i6;
                this.f3164d = i6 >= this.r ? (char) 26 : this.q.charAt(i6);
            }
        }
        char c4 = this.f3164d;
        if (c4 == 'L') {
            this.f3168h++;
            c();
        } else if (c4 == 'S') {
            this.f3168h++;
            c();
        } else if (c4 == 'B') {
            this.f3168h++;
            c();
        } else if (c4 == 'F') {
            this.f3168h++;
            c();
            this.f3170j = true;
        } else if (c4 == 'D') {
            this.f3168h++;
            c();
            this.f3170j = true;
        } else if (c4 == 'e' || c4 == 'E') {
            this.f3168h++;
            int i7 = this.f3165e + 1;
            this.f3165e = i7;
            this.f3164d = i7 >= this.r ? (char) 26 : this.q.charAt(i7);
            char c5 = this.f3164d;
            if (c5 == '+' || c5 == '-') {
                this.f3168h++;
                int i8 = this.f3165e + 1;
                this.f3165e = i8;
                this.f3164d = i8 >= this.r ? (char) 26 : this.q.charAt(i8);
            }
            while (true) {
                char c6 = this.f3164d;
                if (c6 < '0' || c6 > '9') {
                    break;
                }
                this.f3168h++;
                int i9 = this.f3165e + 1;
                this.f3165e = i9;
                this.f3164d = i9 >= this.r ? (char) 26 : this.q.charAt(i9);
            }
            char c7 = this.f3164d;
            if (c7 == 'D' || c7 == 'F') {
                this.f3168h++;
                c();
            }
            this.f3169i = true;
            this.f3170j = true;
        }
        if (this.f3170j) {
            this.f3161a = 3;
        } else {
            this.f3161a = 2;
        }
    }

    public boolean q() {
        boolean z2 = false;
        int i2 = 1;
        if (this.q.startsWith("false", this.f3165e)) {
            i2 = 5;
        } else if (this.q.startsWith("true", this.f3165e)) {
            z2 = true;
            i2 = 4;
        } else {
            char c2 = this.f3164d;
            if (c2 == '1') {
                z2 = true;
            } else if (c2 != '0') {
                this.p = -1;
                return false;
            }
        }
        this.f3165e += i2;
        this.f3164d = a(this.f3165e);
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x022e A[Catch: NumberFormatException -> 0x0264, TryCatch #0 {NumberFormatException -> 0x0264, blocks: (B:83:0x0204, B:88:0x0212, B:90:0x0216, B:94:0x0227, B:95:0x021e, B:97:0x0225, B:103:0x022e, B:106:0x0234, B:111:0x0245, B:113:0x020d, B:114:0x024a, B:116:0x0254, B:119:0x025a), top: B:80:0x0200 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0216 A[Catch: NumberFormatException -> 0x0264, TryCatch #0 {NumberFormatException -> 0x0264, blocks: (B:83:0x0204, B:88:0x0212, B:90:0x0216, B:94:0x0227, B:95:0x021e, B:97:0x0225, B:103:0x022e, B:106:0x0234, B:111:0x0245, B:113:0x020d, B:114:0x024a, B:116:0x0254, B:119:0x025a), top: B:80:0x0200 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number r() {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.r():java.lang.Number");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
    
        if (r3 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long s() {
        /*
            r13 = this;
            r0 = 0
            r13.f3171k = r0
            char r1 = r13.f3164d
            r2 = 1
            r3 = 45
            if (r1 != r3) goto L3f
            r0 = -9223372036854775808
            int r3 = r13.f3171k
            int r3 = r3 + r2
            r13.f3171k = r3
            int r3 = r13.f3165e
            int r3 = r3 + r2
            r13.f3165e = r3
            int r4 = r13.r
            if (r3 >= r4) goto L24
            java.lang.String r4 = r13.q
            char r3 = r4.charAt(r3)
            r13.f3164d = r3
            r3 = 1
            goto L46
        L24:
            com.alibaba.fastjson.f r0 = new com.alibaba.fastjson.f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "syntax error, "
            r1.append(r2)
            java.lang.String r2 = r13.h()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L3f:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0 = r3
            r3 = 0
        L46:
            r4 = 0
        L48:
            char r6 = r13.f3164d
            r7 = 48
            if (r6 < r7) goto Lc5
            r7 = 57
            if (r6 > r7) goto Lc5
            int r6 = r6 + (-48)
            r7 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            java.lang.String r9 = ", "
            java.lang.String r10 = "error long value, "
            int r11 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r11 < 0) goto La6
            r7 = 10
            long r4 = r4 * r7
            long r6 = (long) r6
            long r11 = r0 + r6
            int r8 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r8 < 0) goto L87
            long r4 = r4 - r6
            int r6 = r13.f3171k
            int r6 = r6 + r2
            r13.f3171k = r6
            int r6 = r13.f3165e
            int r6 = r6 + r2
            r13.f3165e = r6
            int r7 = r13.r
            if (r6 < r7) goto L7e
            r6 = 26
            goto L84
        L7e:
            java.lang.String r7 = r13.q
            char r6 = r7.charAt(r6)
        L84:
            r13.f3164d = r6
            goto L48
        L87:
            com.alibaba.fastjson.f r0 = new com.alibaba.fastjson.f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r10)
            r1.append(r4)
            r1.append(r9)
            java.lang.String r2 = r13.h()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        La6:
            com.alibaba.fastjson.f r0 = new com.alibaba.fastjson.f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r10)
            r1.append(r4)
            r1.append(r9)
            java.lang.String r2 = r13.h()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Lc5:
            if (r3 != 0) goto Lc8
            long r4 = -r4
        Lc8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.s():long");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005e -> B:6:0x0026). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long t() {
        /*
            r13 = this;
            int r0 = r13.f3171k
            int r1 = r13.f3168h
            int r1 = r1 + r0
            char r2 = r13.a(r0)
            r3 = 1
            r4 = 45
            if (r2 != r4) goto L14
            r4 = -9223372036854775808
            int r0 = r0 + 1
            r2 = 1
            goto L1a
        L14:
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r2 = 0
        L1a:
            if (r0 >= r1) goto L28
            int r6 = r0 + 1
            char r0 = r13.a(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r7 = (long) r0
        L26:
            r0 = r6
            goto L2a
        L28:
            r7 = 0
        L2a:
            if (r0 >= r1) goto L75
            int r6 = r0 + 1
            int r9 = r13.r
            if (r0 < r9) goto L35
            r0 = 26
            goto L3b
        L35:
            java.lang.String r9 = r13.q
            char r0 = r9.charAt(r0)
        L3b:
            r9 = 76
            if (r0 == r9) goto L74
            r9 = 83
            if (r0 == r9) goto L74
            r9 = 66
            if (r0 != r9) goto L48
            goto L74
        L48:
            int r0 = r0 + (-48)
            r9 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 < 0) goto L6a
            r9 = 10
            long r7 = r7 * r9
            long r9 = (long) r0
            long r11 = r4 + r9
            int r0 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r0 < 0) goto L60
            long r7 = r7 - r9
            goto L26
        L60:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.d()
            r0.<init>(r1)
            throw r0
        L6a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.d()
            r0.<init>(r1)
            throw r0
        L74:
            r0 = r6
        L75:
            if (r2 == 0) goto L87
            int r1 = r13.f3171k
            int r1 = r1 + r3
            if (r0 <= r1) goto L7d
            return r7
        L7d:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.d()
            r0.<init>(r1)
            throw r0
        L87:
            long r0 = -r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.t():long");
    }

    public final BigDecimal u() {
        char charAt = this.q.charAt((this.f3171k + this.f3168h) - 1);
        int i2 = this.f3168h;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i2--;
        }
        int i3 = this.f3171k;
        char[] cArr = this.f3167g;
        if (i2 < cArr.length) {
            this.q.getChars(i3, i3 + i2, cArr, 0);
            return new BigDecimal(this.f3167g, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.q.getChars(i3, i2 + i3, cArr2, 0);
        return new BigDecimal(cArr2);
    }

    public f(char[] cArr, int i2, int i3) {
        this(new String(cArr, 0, i2), i3);
    }

    public final boolean a(e eVar) {
        return (eVar.mask & this.f3163c) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x00d1, code lost:
    
        r18.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00d3, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x021f, code lost:
    
        r4 = r3;
        r18.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0222, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0118 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0125  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0113 -> B:64:0x0116). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[] l(long r19) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.l(long):double[]");
    }

    public long n(long j2) {
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return 0L;
        }
        int i2 = o + 1;
        int i3 = this.f3165e + o;
        if ((i3 >= this.r ? (char) 26 : this.q.charAt(i3)) != '\"') {
            this.p = -1;
            return 0L;
        }
        long j3 = -3750763034362895579L;
        while (true) {
            int i4 = i2 + 1;
            int i5 = this.f3165e + i2;
            char charAt = i5 >= this.r ? (char) 26 : this.q.charAt(i5);
            if (charAt == '\"') {
                int i6 = i4 + 1;
                int i7 = this.f3165e + i4;
                char charAt2 = i7 >= this.r ? (char) 26 : this.q.charAt(i7);
                if (charAt2 == ',') {
                    this.f3165e += i6 - 1;
                    int i8 = this.f3165e + 1;
                    this.f3165e = i8;
                    this.f3164d = i8 < this.r ? this.q.charAt(i8) : (char) 26;
                    this.p = 3;
                    return j3;
                }
                if (charAt2 == '}') {
                    int i9 = i6 + 1;
                    int i10 = this.f3165e + i6;
                    char charAt3 = i10 >= this.r ? (char) 26 : this.q.charAt(i10);
                    if (charAt3 == ',') {
                        this.f3161a = 16;
                        this.f3165e += i9 - 1;
                        c();
                    } else if (charAt3 == ']') {
                        this.f3161a = 15;
                        this.f3165e += i9 - 1;
                        c();
                    } else if (charAt3 == '}') {
                        this.f3161a = 13;
                        this.f3165e += i9 - 1;
                        c();
                    } else if (charAt3 == 26) {
                        this.f3161a = 20;
                        this.f3165e += i9 - 1;
                        this.f3164d = (char) 26;
                    } else {
                        this.p = -1;
                        return 0L;
                    }
                    this.p = 4;
                    return j3;
                }
                this.p = -1;
                return 0L;
            }
            j3 = (j3 ^ charAt) * 1099511628211L;
            if (charAt == '\\') {
                this.p = -1;
                return 0L;
            }
            i2 = i4;
        }
    }

    public f(String str, int i2) {
        this.f3163c = JSON.DEFAULT_PARSER_FEATURE;
        this.f3169i = false;
        this.f3170j = false;
        this.m = JSON.defaultTimeZone;
        this.n = JSON.defaultLocale;
        this.o = null;
        this.p = 0;
        this.f3167g = w.get();
        if (this.f3167g == null) {
            this.f3167g = new char[512];
        }
        this.f3163c = i2;
        this.q = str;
        this.r = this.q.length();
        this.f3165e = -1;
        int i3 = this.f3165e + 1;
        this.f3165e = i3;
        this.f3164d = i3 >= this.r ? (char) 26 : this.q.charAt(i3);
        if (this.f3164d == 65279) {
            c();
        }
        this.s = (e.InitStringFieldAsEmpty.mask & i2) != 0 ? "" : null;
        this.t = (e.DisableCircularReferenceDetect.mask & i2) != 0;
    }

    public final void a(char c2) {
        this.f3168h = 0;
        while (true) {
            char c3 = this.f3164d;
            if (c3 == c2) {
                int i2 = this.f3165e + 1;
                this.f3165e = i2;
                this.f3164d = i2 >= this.r ? (char) 26 : this.q.charAt(i2);
                e();
                return;
            }
            if (c3 != ' ' && c3 != '\n' && c3 != '\r' && c3 != '\t' && c3 != '\f' && c3 != '\b') {
                throw new com.alibaba.fastjson.f("not match " + c2 + " - " + this.f3164d);
            }
            c();
        }
    }

    public final float h(long j2) {
        int i2;
        char a2;
        int i3;
        float parseFloat;
        int i4;
        char a3;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return 0.0f;
        }
        int i5 = o + 1;
        char a4 = a(this.f3165e + o);
        int i6 = (this.f3165e + i5) - 1;
        boolean z2 = a4 == '-';
        if (z2) {
            a4 = a(this.f3165e + i5);
            i5++;
        }
        if (a4 >= '0' && a4 <= '9') {
            int i7 = a4 - '0';
            while (true) {
                i2 = i5 + 1;
                a2 = a(this.f3165e + i5);
                if (a2 < '0' || a2 > '9') {
                    break;
                }
                i7 = (i7 * 10) + (a2 - '0');
                i5 = i2;
            }
            if (a2 == '.') {
                int i8 = i2 + 1;
                char a5 = a(this.f3165e + i2);
                if (a5 < '0' || a5 > '9') {
                    this.p = -1;
                    return 0.0f;
                }
                i7 = (i7 * 10) + (a5 - '0');
                int i9 = 10;
                while (true) {
                    i4 = i8 + 1;
                    a3 = a(this.f3165e + i8);
                    if (a3 < '0' || a3 > '9') {
                        break;
                    }
                    i7 = (i7 * 10) + (a3 - '0');
                    i9 *= 10;
                    i8 = i4;
                }
                i2 = i4;
                i3 = i9;
                a2 = a3;
            } else {
                i3 = 1;
            }
            boolean z3 = a2 == 'e' || a2 == 'E';
            if (z3) {
                int i10 = i2 + 1;
                a2 = a(this.f3165e + i2);
                if (a2 == '+' || a2 == '-') {
                    int i11 = i10 + 1;
                    a2 = a(this.f3165e + i10);
                    i2 = i11;
                } else {
                    i2 = i10;
                }
                while (a2 >= '0' && a2 <= '9') {
                    int i12 = i2 + 1;
                    a2 = a(this.f3165e + i2);
                    i2 = i12;
                }
            }
            int i13 = ((this.f3165e + i2) - i6) - 1;
            if (z3 || i13 >= 10) {
                parseFloat = Float.parseFloat(b(i6, i13));
            } else {
                parseFloat = i7 / i3;
                if (z2) {
                    parseFloat = -parseFloat;
                }
            }
            if (a2 == ',') {
                this.f3165e += i2 - 1;
                c();
                this.p = 3;
                this.f3161a = 16;
                return parseFloat;
            }
            if (a2 == '}') {
                int i14 = i2 + 1;
                char a6 = a(this.f3165e + i2);
                if (a6 == ',') {
                    this.f3161a = 16;
                    this.f3165e += i14 - 1;
                    c();
                } else if (a6 == ']') {
                    this.f3161a = 15;
                    this.f3165e += i14 - 1;
                    c();
                } else if (a6 == '}') {
                    this.f3161a = 13;
                    this.f3165e += i14 - 1;
                    c();
                } else if (a6 == 26) {
                    this.f3165e += i14 - 1;
                    this.f3161a = 20;
                    this.f3164d = (char) 26;
                } else {
                    this.p = -1;
                    return 0.0f;
                }
                this.p = 4;
                return parseFloat;
            }
            this.p = -1;
            return 0.0f;
        }
        this.p = -1;
        return 0.0f;
    }

    private int o(long j2) {
        char c2 = this.f3164d;
        int i2 = 1;
        while (c2 != '\"' && c2 != '\'') {
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                this.u = 0L;
                this.p = -2;
                return 0;
            }
            int i3 = i2 + 1;
            int i4 = this.f3165e + i2;
            c2 = i4 >= this.r ? (char) 26 : this.q.charAt(i4);
            i2 = i3;
        }
        long j3 = -3750763034362895579L;
        int i5 = this.f3165e + i2;
        while (true) {
            if (i5 >= this.r) {
                break;
            }
            char charAt = this.q.charAt(i5);
            if (charAt == c2) {
                i2 += (i5 - this.f3165e) - i2;
                break;
            }
            j3 = 1099511628211L * (charAt ^ j3);
            i5++;
        }
        if (j3 != j2) {
            this.u = j3;
            this.p = -2;
            return 0;
        }
        int i6 = i2 + 1;
        int i7 = this.f3165e + i6;
        char charAt2 = i7 >= this.r ? (char) 26 : this.q.charAt(i7);
        while (charAt2 != ':') {
            if (charAt2 <= ' ' && (charAt2 == ' ' || charAt2 == '\n' || charAt2 == '\r' || charAt2 == '\t' || charAt2 == '\f' || charAt2 == '\b')) {
                int i8 = i6 + 1;
                int i9 = this.f3165e + i6;
                charAt2 = i9 >= this.r ? (char) 26 : this.q.charAt(i9);
                i6 = i8;
            } else {
                throw new com.alibaba.fastjson.f("match feild error expect ':'");
            }
        }
        return i6 + 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0029. Please report as an issue. */
    public final void b(int i2) {
        this.f3168h = 0;
        while (true) {
            if (i2 != 2) {
                if (i2 == 4) {
                    char c2 = this.f3164d;
                    if (c2 == '\"') {
                        this.f3162b = this.f3165e;
                        j();
                        return;
                    } else if (c2 >= '0' && c2 <= '9') {
                        this.f3162b = this.f3165e;
                        p();
                        return;
                    } else if (this.f3164d == '{') {
                        this.f3161a = 12;
                        int i3 = this.f3165e + 1;
                        this.f3165e = i3;
                        this.f3164d = i3 < this.r ? this.q.charAt(i3) : (char) 26;
                        return;
                    }
                } else if (i2 == 12) {
                    char c3 = this.f3164d;
                    if (c3 == '{') {
                        this.f3161a = 12;
                        int i4 = this.f3165e + 1;
                        this.f3165e = i4;
                        this.f3164d = i4 < this.r ? this.q.charAt(i4) : (char) 26;
                        return;
                    }
                    if (c3 == '[') {
                        this.f3161a = 14;
                        int i5 = this.f3165e + 1;
                        this.f3165e = i5;
                        this.f3164d = i5 < this.r ? this.q.charAt(i5) : (char) 26;
                        return;
                    }
                } else if (i2 != 18) {
                    if (i2 != 20) {
                        switch (i2) {
                            case 14:
                                char c4 = this.f3164d;
                                if (c4 == '[') {
                                    this.f3161a = 14;
                                    c();
                                    return;
                                } else if (c4 == '{') {
                                    this.f3161a = 12;
                                    c();
                                    return;
                                }
                                break;
                            case 15:
                                if (this.f3164d == ']') {
                                    this.f3161a = 15;
                                    c();
                                    return;
                                }
                                break;
                            case 16:
                                char c5 = this.f3164d;
                                if (c5 == ',') {
                                    this.f3161a = 16;
                                    int i6 = this.f3165e + 1;
                                    this.f3165e = i6;
                                    this.f3164d = i6 < this.r ? this.q.charAt(i6) : (char) 26;
                                    return;
                                }
                                if (c5 == '}') {
                                    this.f3161a = 13;
                                    int i7 = this.f3165e + 1;
                                    this.f3165e = i7;
                                    this.f3164d = i7 < this.r ? this.q.charAt(i7) : (char) 26;
                                    return;
                                }
                                if (c5 == ']') {
                                    this.f3161a = 15;
                                    int i8 = this.f3165e + 1;
                                    this.f3165e = i8;
                                    this.f3164d = i8 < this.r ? this.q.charAt(i8) : (char) 26;
                                    return;
                                }
                                if (c5 == 26) {
                                    this.f3161a = 20;
                                    return;
                                }
                                break;
                        }
                    }
                    if (this.f3164d == 26) {
                        this.f3161a = 20;
                        return;
                    }
                } else {
                    f();
                    return;
                }
            } else {
                char c6 = this.f3164d;
                if (c6 >= '0' && c6 <= '9') {
                    this.f3162b = this.f3165e;
                    p();
                    return;
                }
                char c7 = this.f3164d;
                if (c7 == '\"') {
                    this.f3162b = this.f3165e;
                    j();
                    return;
                } else if (c7 == '[') {
                    this.f3161a = 14;
                    c();
                    return;
                } else if (c7 == '{') {
                    this.f3161a = 12;
                    c();
                    return;
                }
            }
            char c8 = this.f3164d;
            if (c8 != ' ' && c8 != '\n' && c8 != '\r' && c8 != '\t' && c8 != '\f' && c8 != '\b') {
                e();
                return;
            }
            c();
        }
    }

    public final int[] c(long j2) {
        int[] iArr;
        int i2;
        boolean z2;
        int[] iArr2;
        int i3;
        int i4;
        char charAt;
        int i5;
        int i6;
        char charAt2;
        this.p = 0;
        int o = o(j2);
        int[] iArr3 = null;
        if (o == 0) {
            return null;
        }
        int i7 = o + 1;
        int i8 = this.f3165e + o;
        if ((i8 >= this.r ? (char) 26 : this.q.charAt(i8)) != '[') {
            this.p = -1;
            return null;
        }
        int i9 = i7 + 1;
        int i10 = this.f3165e + i7;
        char charAt3 = i10 >= this.r ? (char) 26 : this.q.charAt(i10);
        int[] iArr4 = new int[16];
        if (charAt3 == ']') {
            int i11 = i9 + 1;
            int i12 = this.f3165e + i9;
            charAt2 = i12 >= this.r ? (char) 26 : this.q.charAt(i12);
            i6 = i11;
            i5 = 0;
            iArr = iArr4;
        } else {
            iArr = iArr4;
            int i13 = 0;
            while (true) {
                if (charAt3 == '-') {
                    i2 = i9 + 1;
                    int i14 = this.f3165e + i9;
                    charAt3 = i14 >= this.r ? (char) 26 : this.q.charAt(i14);
                    z2 = true;
                } else {
                    i2 = i9;
                    z2 = false;
                }
                if (charAt3 < '0') {
                    iArr2 = iArr3;
                    i3 = -1;
                    break;
                }
                if (charAt3 > '9') {
                    i3 = -1;
                    iArr2 = null;
                    break;
                }
                int i15 = charAt3 - '0';
                while (true) {
                    i4 = i2 + 1;
                    int i16 = this.f3165e + i2;
                    charAt = i16 >= this.r ? (char) 26 : this.q.charAt(i16);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    i15 = (i15 * 10) + (charAt - '0');
                    i2 = i4;
                }
                if (i13 >= iArr.length) {
                    int[] iArr5 = new int[(iArr.length * 3) / 2];
                    System.arraycopy(iArr, 0, iArr5, 0, i13);
                    iArr = iArr5;
                }
                i5 = i13 + 1;
                if (z2) {
                    i15 = -i15;
                }
                iArr[i13] = i15;
                if (charAt == ',') {
                    int i17 = i4 + 1;
                    int i18 = this.f3165e + i4;
                    charAt = i18 >= this.r ? (char) 26 : this.q.charAt(i18);
                    i4 = i17;
                } else if (charAt == ']') {
                    i6 = i4 + 1;
                    int i19 = this.f3165e + i4;
                    charAt2 = i19 >= this.r ? (char) 26 : this.q.charAt(i19);
                }
                i13 = i5;
                iArr3 = null;
                charAt3 = charAt;
                i9 = i4;
            }
            this.p = i3;
            return iArr2;
        }
        if (i5 != iArr.length) {
            int[] iArr6 = new int[i5];
            System.arraycopy(iArr, 0, iArr6, 0, i5);
            iArr = iArr6;
        }
        if (charAt2 == ',') {
            this.f3165e += i6 - 1;
            c();
            this.p = 3;
            this.f3161a = 16;
            return iArr;
        }
        if (charAt2 == '}') {
            int i20 = i6 + 1;
            char a2 = a(this.f3165e + i6);
            if (a2 == ',') {
                this.f3161a = 16;
                this.f3165e += i20 - 1;
                c();
            } else if (a2 == ']') {
                this.f3161a = 15;
                this.f3165e += i20 - 1;
                c();
            } else if (a2 == '}') {
                this.f3161a = 13;
                this.f3165e += i20 - 1;
                c();
            } else if (a2 == 26) {
                this.f3165e += i20 - 1;
                this.f3161a = 20;
                this.f3164d = (char) 26;
            } else {
                this.p = -1;
                return null;
            }
            this.p = 4;
            return iArr;
        }
        this.p = -1;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:166:0x00e7, code lost:
    
        r20.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x00e9, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x029a, code lost:
    
        r12 = r3;
        r20.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x029d, code lost:
    
        return r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x012e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0129 -> B:66:0x012c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[][] m(long r21) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.m(long):double[][]");
    }

    public long d(long j2) {
        int i2;
        char charAt;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return 0L;
        }
        int i3 = o + 1;
        int i4 = this.f3165e + o;
        char charAt2 = i4 >= this.r ? (char) 26 : this.q.charAt(i4);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            int i5 = i3 + 1;
            int i6 = this.f3165e + i3;
            charAt2 = i6 >= this.r ? (char) 26 : this.q.charAt(i6);
            i3 = i5;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            int i7 = i3 + 1;
            int i8 = this.f3165e + i3;
            charAt2 = i8 >= this.r ? (char) 26 : this.q.charAt(i8);
            i3 = i7;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.p = -1;
            return 0L;
        }
        long j3 = charAt2 - '0';
        while (true) {
            i2 = i3 + 1;
            int i9 = this.f3165e + i3;
            charAt = i9 >= this.r ? (char) 26 : this.q.charAt(i9);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j3 = (j3 * 10) + (charAt - '0');
            i3 = i2;
        }
        if (charAt == '.') {
            this.p = -1;
            return 0L;
        }
        if (charAt == '\"') {
            if (!z2) {
                this.p = -1;
                return 0L;
            }
            int i10 = i2 + 1;
            int i11 = this.f3165e + i2;
            charAt = i11 >= this.r ? (char) 26 : this.q.charAt(i11);
            i2 = i10;
        }
        if (j3 < 0) {
            this.p = -1;
            return 0L;
        }
        if (charAt == ',') {
            this.f3165e += i2 - 1;
            int i12 = this.f3165e + 1;
            this.f3165e = i12;
            this.f3164d = i12 >= this.r ? (char) 26 : this.q.charAt(i12);
            this.p = 3;
            this.f3161a = 16;
            return z3 ? -j3 : j3;
        }
        if (charAt == '}') {
            int i13 = i2 + 1;
            char a2 = a(this.f3165e + i2);
            if (a2 == ',') {
                this.f3161a = 16;
                this.f3165e += i13 - 1;
                int i14 = this.f3165e + 1;
                this.f3165e = i14;
                this.f3164d = i14 >= this.r ? (char) 26 : this.q.charAt(i14);
            } else if (a2 == ']') {
                this.f3161a = 15;
                this.f3165e += i13 - 1;
                int i15 = this.f3165e + 1;
                this.f3165e = i15;
                this.f3164d = i15 >= this.r ? (char) 26 : this.q.charAt(i15);
            } else if (a2 == '}') {
                this.f3161a = 13;
                this.f3165e += i13 - 1;
                int i16 = this.f3165e + 1;
                this.f3165e = i16;
                this.f3164d = i16 >= this.r ? (char) 26 : this.q.charAt(i16);
            } else if (a2 == 26) {
                this.f3161a = 20;
                this.f3165e += i13 - 1;
                this.f3164d = (char) 26;
            } else {
                this.p = -1;
                return 0L;
            }
            this.p = 4;
            return z3 ? -j3 : j3;
        }
        this.p = -1;
        return 0L;
    }

    public Date f(long j2) {
        int i2;
        char charAt;
        char c2;
        int i3;
        Date date;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return null;
        }
        int i4 = this.f3165e;
        int i5 = o + 1;
        int i6 = o + i4;
        char charAt2 = i6 >= this.r ? (char) 26 : this.q.charAt(i6);
        if (charAt2 == '\"') {
            int i7 = this.f3165e;
            int i8 = i7 + i5;
            int i9 = i5 + 1;
            int i10 = i7 + i5;
            if (i10 < this.r) {
                this.q.charAt(i10);
            }
            int indexOf = this.q.indexOf(34, this.f3165e + i9);
            if (indexOf != -1) {
                int i11 = indexOf - i8;
                this.f3165e = i8;
                if (a(false, i11)) {
                    date = this.o.getTime();
                    int i12 = i9 + i11;
                    i3 = i12 + 1;
                    c2 = a(i12 + i4);
                    this.f3165e = i4;
                } else {
                    this.f3165e = i4;
                    this.p = -1;
                    return null;
                }
            } else {
                throw new com.alibaba.fastjson.f("unclosed str");
            }
        } else {
            if (charAt2 < '0' || charAt2 > '9') {
                this.p = -1;
                return null;
            }
            long j3 = charAt2 - '0';
            while (true) {
                i2 = i5 + 1;
                int i13 = this.f3165e + i5;
                charAt = i13 >= this.r ? (char) 26 : this.q.charAt(i13);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                j3 = (j3 * 10) + (charAt - '0');
                i5 = i2;
            }
            if (charAt == '.') {
                this.p = -1;
                return null;
            }
            if (charAt == '\"') {
                int i14 = i2 + 1;
                int i15 = this.f3165e + i2;
                c2 = i15 >= this.r ? (char) 26 : this.q.charAt(i15);
                i3 = i14;
            } else {
                c2 = charAt;
                i3 = i2;
            }
            if (j3 < 0) {
                this.p = -1;
                return null;
            }
            date = new Date(j3);
        }
        if (c2 == ',') {
            this.f3165e += i3 - 1;
            int i16 = this.f3165e + 1;
            this.f3165e = i16;
            this.f3164d = i16 < this.r ? this.q.charAt(i16) : (char) 26;
            this.p = 3;
            this.f3161a = 16;
            return date;
        }
        if (c2 == '}') {
            int i17 = i3 + 1;
            char a2 = a(this.f3165e + i3);
            if (a2 == ',') {
                this.f3161a = 16;
                this.f3165e += i17 - 1;
                int i18 = this.f3165e + 1;
                this.f3165e = i18;
                this.f3164d = i18 < this.r ? this.q.charAt(i18) : (char) 26;
            } else if (a2 == ']') {
                this.f3161a = 15;
                this.f3165e += i17 - 1;
                int i19 = this.f3165e + 1;
                this.f3165e = i19;
                this.f3164d = i19 < this.r ? this.q.charAt(i19) : (char) 26;
            } else if (a2 == '}') {
                this.f3161a = 13;
                this.f3165e += i17 - 1;
                int i20 = this.f3165e + 1;
                this.f3165e = i20;
                this.f3164d = i20 < this.r ? this.q.charAt(i20) : (char) 26;
            } else if (a2 == 26) {
                this.f3161a = 20;
                this.f3165e += i17 - 1;
                this.f3164d = (char) 26;
            } else {
                this.p = -1;
                return null;
            }
            this.p = 4;
            return date;
        }
        this.p = -1;
        return null;
    }

    protected char a(int i2) {
        if (i2 >= this.r) {
            return (char) 26;
        }
        return this.q.charAt(i2);
    }

    public final double k(long j2) {
        int i2;
        char a2;
        char c2;
        int i3;
        double parseDouble;
        int i4;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return 0.0d;
        }
        int i5 = o + 1;
        char a3 = a(this.f3165e + o);
        int i6 = (this.f3165e + i5) - 1;
        boolean z2 = a3 == '-';
        if (z2) {
            a3 = a(this.f3165e + i5);
            i5++;
        }
        if (a3 >= '0' && a3 <= '9') {
            int i7 = a3 - '0';
            while (true) {
                i2 = i5 + 1;
                a2 = a(this.f3165e + i5);
                if (a2 < '0' || a2 > '9') {
                    break;
                }
                i7 = (i7 * 10) + (a2 - '0');
                i5 = i2;
            }
            if (a2 == '.') {
                int i8 = i2 + 1;
                char a4 = a(this.f3165e + i2);
                if (a4 < '0' || a4 > '9') {
                    this.p = -1;
                    return 0.0d;
                }
                i7 = (i7 * 10) + (a4 - '0');
                i3 = 10;
                while (true) {
                    i4 = i8 + 1;
                    c2 = a(this.f3165e + i8);
                    if (c2 < '0' || c2 > '9') {
                        break;
                    }
                    i7 = (i7 * 10) + (c2 - '0');
                    i3 *= 10;
                    i8 = i4;
                }
                i2 = i4;
            } else {
                c2 = a2;
                i3 = 1;
            }
            boolean z3 = c2 == 'e' || c2 == 'E';
            if (z3) {
                int i9 = i2 + 1;
                char a5 = a(this.f3165e + i2);
                if (a5 == '+' || a5 == '-') {
                    int i10 = i9 + 1;
                    c2 = a(this.f3165e + i9);
                    i2 = i10;
                } else {
                    i2 = i9;
                    c2 = a5;
                }
                while (c2 >= '0' && c2 <= '9') {
                    int i11 = i2 + 1;
                    c2 = a(this.f3165e + i2);
                    i2 = i11;
                }
            }
            int i12 = ((this.f3165e + i2) - i6) - 1;
            if (!z3 && i12 < 10) {
                double d2 = i7;
                double d3 = i3;
                Double.isNaN(d2);
                Double.isNaN(d3);
                parseDouble = d2 / d3;
                if (z2) {
                    parseDouble = -parseDouble;
                }
            } else {
                parseDouble = Double.parseDouble(b(i6, i12));
            }
            if (c2 == ',') {
                this.f3165e += i2 - 1;
                c();
                this.p = 3;
                this.f3161a = 16;
                return parseDouble;
            }
            if (c2 == '}') {
                int i13 = i2 + 1;
                char a6 = a(this.f3165e + i2);
                if (a6 == ',') {
                    this.f3161a = 16;
                    this.f3165e += i13 - 1;
                    c();
                } else if (a6 == ']') {
                    this.f3161a = 15;
                    this.f3165e += i13 - 1;
                    c();
                } else if (a6 == '}') {
                    this.f3161a = 13;
                    this.f3165e += i13 - 1;
                    c();
                } else if (a6 == 26) {
                    this.f3165e += i13 - 1;
                    this.f3161a = 20;
                    this.f3164d = (char) 26;
                } else {
                    this.p = -1;
                    return 0.0d;
                }
                this.p = 4;
                return parseDouble;
            }
            this.p = -1;
            return 0.0d;
        }
        this.p = -1;
        return 0.0d;
    }

    public final String a(p pVar) {
        char c2;
        while (true) {
            c2 = this.f3164d;
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                break;
            }
            c();
        }
        if (c2 == '\"') {
            return a(pVar, '\"');
        }
        if (c2 == '\'') {
            return a(pVar, '\'');
        }
        if (c2 == '}') {
            c();
            this.f3161a = 13;
            return null;
        }
        if (c2 == ',') {
            c();
            this.f3161a = 16;
            return null;
        }
        if (c2 == 26) {
            this.f3161a = 20;
            return null;
        }
        return b(pVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x00d1, code lost:
    
        r18.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00d3, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0219, code lost:
    
        r4 = r3;
        r18.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x021c, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0118 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0125  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0113 -> B:64:0x0116). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] i(long r19) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.i(long):float[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g(long r13) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.g(long):boolean");
    }

    public String a(p pVar, char c2) {
        String a2;
        int i2 = this.f3165e + 1;
        int indexOf = this.q.indexOf(c2, i2);
        if (indexOf != -1) {
            int i3 = indexOf - i2;
            char[] a3 = a(this.f3165e + 1, i3);
            int i4 = indexOf;
            boolean z2 = false;
            while (i3 > 0 && a3[i3 - 1] == '\\') {
                int i5 = 1;
                for (int i6 = i3 - 2; i6 >= 0 && a3[i6] == '\\'; i6--) {
                    i5++;
                }
                if (i5 % 2 == 0) {
                    break;
                }
                int indexOf2 = this.q.indexOf(c2, i4 + 1);
                int i7 = (indexOf2 - i4) + i3;
                if (i7 >= a3.length) {
                    int length = (a3.length * 3) / 2;
                    if (length < i7) {
                        length = i7;
                    }
                    char[] cArr = new char[length];
                    System.arraycopy(a3, 0, cArr, 0, a3.length);
                    a3 = cArr;
                }
                this.q.getChars(i4, indexOf2, a3, i3);
                i4 = indexOf2;
                i3 = i7;
                z2 = true;
            }
            if (z2) {
                a2 = a(a3, i3);
            } else {
                int i8 = 0;
                for (int i9 = 0; i9 < i3; i9++) {
                    char c3 = a3[i9];
                    i8 = (i8 * 31) + c3;
                    if (c3 == '\\') {
                        z2 = true;
                    }
                }
                if (z2) {
                    a2 = a(a3, i3);
                } else {
                    a2 = i3 < 20 ? pVar.a(a3, 0, i3, i8) : new String(a3, 0, i3);
                }
            }
            this.f3165e = i4 + 1;
            int i10 = this.f3165e;
            this.f3164d = i10 >= this.r ? (char) 26 : this.q.charAt(i10);
            return a2;
        }
        throw new com.alibaba.fastjson.f("unclosed str, " + h());
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x00e8, code lost:
    
        r20.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x00ea, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0295, code lost:
    
        r12 = r3;
        r20.p = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0298, code lost:
    
        return r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x012a -> B:66:0x012d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] j(long r21) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.j(long):float[][]");
    }

    private static String a(char[] cArr, int i2) {
        int i3;
        char[] cArr2 = new char[i2];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            char c2 = cArr[i4];
            if (c2 != '\\') {
                cArr2[i5] = c2;
                i5++;
            } else {
                i4++;
                char c3 = cArr[i4];
                if (c3 == '\"') {
                    i3 = i5 + 1;
                    cArr2[i5] = '\"';
                } else if (c3 != '\'') {
                    if (c3 != 'F') {
                        if (c3 == '\\') {
                            i3 = i5 + 1;
                            cArr2[i5] = '\\';
                        } else if (c3 == 'b') {
                            i3 = i5 + 1;
                            cArr2[i5] = '\b';
                        } else if (c3 != 'f') {
                            if (c3 == 'n') {
                                i3 = i5 + 1;
                                cArr2[i5] = '\n';
                            } else if (c3 == 'r') {
                                i3 = i5 + 1;
                                cArr2[i5] = '\r';
                            } else if (c3 != 'x') {
                                switch (c3) {
                                    case '/':
                                        i3 = i5 + 1;
                                        cArr2[i5] = '/';
                                        break;
                                    case '0':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 0;
                                        break;
                                    case '1':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 1;
                                        break;
                                    case '2':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 2;
                                        break;
                                    case '3':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 3;
                                        break;
                                    case '4':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 4;
                                        break;
                                    case '5':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 5;
                                        break;
                                    case '6':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 6;
                                        break;
                                    case '7':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 7;
                                        break;
                                    default:
                                        switch (c3) {
                                            case 't':
                                                i3 = i5 + 1;
                                                cArr2[i5] = '\t';
                                                break;
                                            case 'u':
                                                i3 = i5 + 1;
                                                int i6 = i4 + 1;
                                                int i7 = i6 + 1;
                                                int i8 = i7 + 1;
                                                i4 = i8 + 1;
                                                cArr2[i5] = (char) Integer.parseInt(new String(new char[]{cArr[i6], cArr[i7], cArr[i8], cArr[i4]}), 16);
                                                break;
                                            case 'v':
                                                i3 = i5 + 1;
                                                cArr2[i5] = 11;
                                                break;
                                            default:
                                                throw new com.alibaba.fastjson.f("unclosed.str.lit");
                                        }
                                }
                            } else {
                                i3 = i5 + 1;
                                int[] iArr = x;
                                int i9 = i4 + 1;
                                int i10 = iArr[cArr[i9]] * 16;
                                i4 = i9 + 1;
                                cArr2[i5] = (char) (i10 + iArr[cArr[i4]]);
                            }
                        }
                    }
                    i3 = i5 + 1;
                    cArr2[i5] = '\f';
                } else {
                    i3 = i5 + 1;
                    cArr2[i5] = '\'';
                }
                i5 = i3;
            }
            i4++;
        }
        return new String(cArr2, 0, i5);
    }

    public final String b(p pVar) {
        int i2 = this.f3164d;
        boolean[] zArr = A;
        if (i2 >= zArr.length || zArr[i2]) {
            this.f3171k = this.f3165e;
            this.f3168h = 1;
            while (true) {
                char c2 = c();
                boolean[] zArr2 = B;
                if (c2 < zArr2.length && !zArr2[c2]) {
                    break;
                }
                i2 = (i2 * 31) + c2;
                this.f3168h++;
            }
            this.f3164d = a(this.f3165e);
            this.f3161a = 18;
            if (this.f3168h == 4 && this.q.startsWith("null", this.f3171k)) {
                return null;
            }
            return pVar.a(this.q, this.f3171k, this.f3168h, i2);
        }
        throw new com.alibaba.fastjson.f("illegal identifier : " + this.f3164d + ", " + h());
    }

    public String e(long j2) {
        String str;
        boolean z2;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return null;
        }
        int i2 = o + 1;
        int i3 = this.f3165e + o;
        if (i3 < this.r) {
            if (this.q.charAt(i3) != '\"') {
                this.p = -1;
                return this.s;
            }
            int i4 = this.f3165e + i2;
            int indexOf = this.q.indexOf(34, i4);
            if (indexOf != -1) {
                if (v) {
                    str = this.q.substring(i4, indexOf);
                } else {
                    int i5 = indexOf - i4;
                    str = new String(a(this.f3165e + i2, i5), 0, i5);
                }
                if (str.indexOf(92) != -1) {
                    boolean z3 = false;
                    while (true) {
                        int i6 = indexOf - 1;
                        z2 = z3;
                        int i7 = 0;
                        while (i6 >= 0 && this.q.charAt(i6) == '\\') {
                            i7++;
                            i6--;
                            z2 = true;
                        }
                        if (i7 % 2 == 0) {
                            break;
                        }
                        indexOf = this.q.indexOf(34, indexOf + 1);
                        z3 = z2;
                    }
                    int i8 = indexOf - i4;
                    char[] a2 = a(this.f3165e + i2, i8);
                    if (z2) {
                        str = a(a2, i8);
                    } else {
                        str = new String(a2, 0, i8);
                        if (str.indexOf(92) != -1) {
                            str = a(a2, i8);
                        }
                    }
                }
                int i9 = indexOf + 1;
                char charAt = i9 >= this.r ? (char) 26 : this.q.charAt(i9);
                if (charAt == ',') {
                    this.f3165e = i9;
                    int i10 = this.f3165e + 1;
                    this.f3165e = i10;
                    this.f3164d = i10 < this.r ? this.q.charAt(i10) : (char) 26;
                    this.p = 3;
                    this.f3161a = 16;
                    return str;
                }
                if (charAt == '}') {
                    int i11 = i9 + 1;
                    char charAt2 = i11 >= this.r ? (char) 26 : this.q.charAt(i11);
                    if (charAt2 == ',') {
                        this.f3161a = 16;
                        this.f3165e = i11;
                        c();
                    } else if (charAt2 == ']') {
                        this.f3161a = 15;
                        this.f3165e = i11;
                        c();
                    } else if (charAt2 == '}') {
                        this.f3161a = 13;
                        this.f3165e = i11;
                        c();
                    } else if (charAt2 == 26) {
                        this.f3161a = 20;
                        this.f3165e = i11;
                        this.f3164d = (char) 26;
                    } else {
                        this.p = -1;
                        return this.s;
                    }
                    this.p = 4;
                    return str;
                }
                this.p = -1;
                return this.s;
            }
            throw new com.alibaba.fastjson.f("unclosed str, " + h());
        }
        throw new com.alibaba.fastjson.f("unclosed str, " + h());
    }

    final char[] a(int i2, int i3) {
        char[] cArr = this.f3167g;
        if (i3 < cArr.length) {
            this.q.getChars(i2, i3 + i2, cArr, 0);
            return this.f3167g;
        }
        char[] cArr2 = new char[i3];
        this.f3167g = cArr2;
        this.q.getChars(i2, i3 + i2, cArr2, 0);
        return cArr2;
    }

    public final Number a(boolean z2) {
        char[] cArr;
        boolean z3;
        int i2 = (this.f3171k + this.f3168h) - 1;
        char charAt = i2 >= this.r ? (char) 26 : this.q.charAt(i2);
        try {
            if (charAt == 'F') {
                return Float.valueOf(Float.parseFloat(d()));
            }
            if (charAt == 'D') {
                return Double.valueOf(Double.parseDouble(d()));
            }
            if (z2) {
                return u();
            }
            char charAt2 = this.q.charAt((this.f3171k + this.f3168h) - 1);
            int i3 = this.f3168h;
            if (charAt2 == 'L' || charAt2 == 'S' || charAt2 == 'B' || charAt2 == 'F' || charAt2 == 'D') {
                i3--;
            }
            int i4 = this.f3171k;
            int i5 = 0;
            if (i3 < this.f3167g.length) {
                this.q.getChars(i4, i4 + i3, this.f3167g, 0);
                cArr = this.f3167g;
            } else {
                char[] cArr2 = new char[i3];
                this.q.getChars(i4, i4 + i3, cArr2, 0);
                cArr = cArr2;
            }
            if (i3 <= 9 && !this.f3169i) {
                char c2 = cArr[0];
                int i6 = 2;
                if (c2 == '-') {
                    c2 = cArr[1];
                    z3 = true;
                } else if (c2 == '+') {
                    c2 = cArr[1];
                    z3 = false;
                } else {
                    z3 = false;
                    i6 = 1;
                }
                int i7 = c2 - '0';
                while (i6 < i3) {
                    char c3 = cArr[i6];
                    if (c3 == '.') {
                        i5 = 1;
                    } else {
                        i7 = (i7 * 10) + (c3 - '0');
                        if (i5 != 0) {
                            i5 *= 10;
                        }
                    }
                    i6++;
                }
                double d2 = i7;
                double d3 = i5;
                Double.isNaN(d2);
                Double.isNaN(d3);
                double d4 = d2 / d3;
                if (z3) {
                    d4 = -d4;
                }
                return Double.valueOf(d4);
            }
            return Double.valueOf(Double.parseDouble(new String(cArr, 0, i3)));
        } catch (NumberFormatException e2) {
            throw new com.alibaba.fastjson.f(e2.getMessage() + ", " + h());
        }
    }

    public String b(char c2) {
        String str;
        int i2 = this.f3165e + 1;
        int indexOf = this.q.indexOf(c2, i2);
        if (indexOf != -1) {
            if (v) {
                str = this.q.substring(i2, indexOf);
            } else {
                int i3 = indexOf - i2;
                str = new String(a(this.f3165e + 1, i3), 0, i3);
            }
            if (str.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = indexOf - 1; i5 >= 0 && this.q.charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = this.q.indexOf(c2, indexOf + 1);
                }
                int i6 = indexOf - i2;
                str = a(a(this.f3165e + 1, i6), i6);
            }
            this.f3165e = indexOf + 1;
            int i7 = this.f3165e;
            this.f3164d = i7 >= this.r ? (char) 26 : this.q.charAt(i7);
            return str;
        }
        throw new com.alibaba.fastjson.f("unclosed str, " + h());
    }

    private final String b(int i2, int i3) {
        char[] cArr = this.f3167g;
        if (i3 < cArr.length) {
            this.q.getChars(i2, i2 + i3, cArr, 0);
            return new String(this.f3167g, 0, i3);
        }
        char[] cArr2 = new char[i3];
        this.q.getChars(i2, i3 + i2, cArr2, 0);
        return new String(cArr2);
    }

    public boolean a(long j2) {
        char c2 = this.f3164d;
        int i2 = this.f3165e + 1;
        int i3 = 1;
        while (c2 != '\"' && c2 != '\'') {
            if (c2 <= ' ' && (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b')) {
                int i4 = i3 + 1;
                int i5 = this.f3165e + i3;
                c2 = i5 >= this.r ? (char) 26 : this.q.charAt(i5);
                i3 = i4;
            } else {
                this.u = 0L;
                this.p = -2;
                return false;
            }
        }
        int i6 = i2;
        long j3 = -3750763034362895579L;
        while (true) {
            if (i6 >= this.r) {
                break;
            }
            char charAt = this.q.charAt(i6);
            if (charAt == c2) {
                i3 += (i6 - i2) + 1;
                break;
            }
            j3 = 1099511628211L * (charAt ^ j3);
            i6++;
        }
        if (j3 != j2) {
            this.p = -2;
            this.u = j3;
            return false;
        }
        int i7 = i3 + 1;
        int i8 = this.f3165e + i3;
        char charAt2 = i8 >= this.r ? (char) 26 : this.q.charAt(i8);
        while (charAt2 != ':') {
            if (charAt2 <= ' ' && (charAt2 == ' ' || charAt2 == '\n' || charAt2 == '\r' || charAt2 == '\t' || charAt2 == '\f' || charAt2 == '\b')) {
                int i9 = i7 + 1;
                int i10 = this.f3165e + i7;
                charAt2 = i10 >= this.r ? (char) 26 : this.q.charAt(i10);
                i7 = i9;
            } else {
                throw new com.alibaba.fastjson.f("match feild error expect ':'");
            }
        }
        int i11 = this.f3165e + i7;
        char charAt3 = i11 >= this.r ? (char) 26 : this.q.charAt(i11);
        if (charAt3 == '{') {
            this.f3165e = i11 + 1;
            int i12 = this.f3165e;
            this.f3164d = i12 >= this.r ? (char) 26 : this.q.charAt(i12);
            this.f3161a = 12;
        } else if (charAt3 == '[') {
            this.f3165e = i11 + 1;
            int i13 = this.f3165e;
            this.f3164d = i13 >= this.r ? (char) 26 : this.q.charAt(i13);
            this.f3161a = 14;
        } else {
            this.f3165e = i11;
            int i14 = this.f3165e;
            this.f3164d = i14 >= this.r ? (char) 26 : this.q.charAt(i14);
            e();
        }
        return true;
    }

    public int b(long j2) {
        int i2;
        char charAt;
        char c2;
        int i3;
        this.p = 0;
        int o = o(j2);
        if (o == 0) {
            return 0;
        }
        int i4 = o + 1;
        int i5 = this.f3165e + o;
        char charAt2 = i5 >= this.r ? (char) 26 : this.q.charAt(i5);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            int i6 = i4 + 1;
            int i7 = this.f3165e + i4;
            charAt2 = i7 >= this.r ? (char) 26 : this.q.charAt(i7);
            i4 = i6;
            z2 = true;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            int i8 = i4 + 1;
            int i9 = this.f3165e + i4;
            charAt2 = i9 >= this.r ? (char) 26 : this.q.charAt(i9);
            i4 = i8;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.p = -1;
            return 0;
        }
        int i10 = charAt2 - '0';
        while (true) {
            i2 = i4 + 1;
            int i11 = this.f3165e + i4;
            charAt = i11 >= this.r ? (char) 26 : this.q.charAt(i11);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i10 = (i10 * 10) + (charAt - '0');
            i4 = i2;
        }
        if (charAt == '.') {
            this.p = -1;
            return 0;
        }
        if (charAt != '\"') {
            c2 = charAt;
            i3 = i2;
        } else {
            if (!z2) {
                this.p = -1;
                return 0;
            }
            i3 = i2 + 1;
            int i12 = this.f3165e + i2;
            c2 = i12 >= this.r ? (char) 26 : this.q.charAt(i12);
        }
        if (i10 < 0) {
            this.p = -1;
            return 0;
        }
        while (c2 != ',') {
            if (c2 > ' ' || !(c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b')) {
                if (c2 == '}') {
                    int i13 = i3 + 1;
                    char a2 = a(this.f3165e + i3);
                    if (a2 == ',') {
                        this.f3161a = 16;
                        this.f3165e += i13 - 1;
                        int i14 = this.f3165e + 1;
                        this.f3165e = i14;
                        this.f3164d = i14 < this.r ? this.q.charAt(i14) : (char) 26;
                    } else if (a2 == ']') {
                        this.f3161a = 15;
                        this.f3165e += i13 - 1;
                        int i15 = this.f3165e + 1;
                        this.f3165e = i15;
                        this.f3164d = i15 < this.r ? this.q.charAt(i15) : (char) 26;
                    } else if (a2 == '}') {
                        this.f3161a = 13;
                        this.f3165e += i13 - 1;
                        int i16 = this.f3165e + 1;
                        this.f3165e = i16;
                        this.f3164d = i16 < this.r ? this.q.charAt(i16) : (char) 26;
                    } else if (a2 == 26) {
                        this.f3161a = 20;
                        this.f3165e += i13 - 1;
                        this.f3164d = (char) 26;
                    } else {
                        this.p = -1;
                        return 0;
                    }
                    this.p = 4;
                    return z3 ? -i10 : i10;
                }
                this.p = -1;
                return 0;
            }
            int i17 = i3 + 1;
            int i18 = this.f3165e + i3;
            c2 = i18 >= this.r ? (char) 26 : this.q.charAt(i18);
            i3 = i17;
        }
        this.f3165e += i3 - 1;
        int i19 = this.f3165e + 1;
        this.f3165e = i19;
        this.f3164d = i19 < this.r ? this.q.charAt(i19) : (char) 26;
        this.p = 3;
        this.f3161a = 16;
        return z3 ? -i10 : i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0225 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0226  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(boolean r36, int r37) {
        /*
            Method dump skipped, instructions count: 1655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.f.a(boolean, int):boolean");
    }

    public boolean b(boolean z2) {
        return a(z2, this.r - this.f3165e);
    }

    protected void a(char c2, char c3, char c4, char c5, char c6, char c7) {
        this.o.set(11, ((c2 - '0') * 10) + (c3 - '0'));
        this.o.set(12, ((c4 - '0') * 10) + (c5 - '0'));
        this.o.set(13, ((c6 - '0') * 10) + (c7 - '0'));
    }

    protected void a(char c2, char c3, char c4) {
        int i2 = (((c3 - '0') * 10) + (c4 - '0')) * 3600 * 1000;
        if (c2 == '-') {
            i2 = -i2;
        }
        if (this.o.getTimeZone().getRawOffset() != i2) {
            String[] availableIDs = TimeZone.getAvailableIDs(i2);
            if (availableIDs.length > 0) {
                this.o.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
            }
        }
    }

    private void a(char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9) {
        this.o = Calendar.getInstance(this.m, this.n);
        this.o.set(1, ((c2 - '0') * 1000) + ((c3 - '0') * 100) + ((c4 - '0') * 10) + (c5 - '0'));
        this.o.set(2, (((c6 - '0') * 10) + (c7 - '0')) - 1);
        this.o.set(5, ((c8 - '0') * 10) + (c9 - '0'));
    }

    public static final byte[] a(String str, int i2, int i3) {
        int i4;
        int i5 = 0;
        if (i3 == 0) {
            return new byte[0];
        }
        int i6 = (i2 + i3) - 1;
        while (i2 < i6 && z[str.charAt(i2)] < 0) {
            i2++;
        }
        while (i6 > 0 && z[str.charAt(i6)] < 0) {
            i6--;
        }
        int i7 = str.charAt(i6) == '=' ? str.charAt(i6 + (-1)) == '=' ? 2 : 1 : 0;
        int i8 = (i6 - i2) + 1;
        if (i3 > 76) {
            i4 = (str.charAt(76) == '\r' ? i8 / 78 : 0) << 1;
        } else {
            i4 = 0;
        }
        int i9 = (((i8 - i4) * 6) >> 3) - i7;
        byte[] bArr = new byte[i9];
        int i10 = (i9 / 3) * 3;
        int i11 = i2;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = i11 + 1;
            int i15 = i14 + 1;
            int i16 = (z[str.charAt(i11)] << 18) | (z[str.charAt(i14)] << 12);
            int i17 = i15 + 1;
            int i18 = i16 | (z[str.charAt(i15)] << 6);
            int i19 = i17 + 1;
            int i20 = i18 | z[str.charAt(i17)];
            int i21 = i12 + 1;
            bArr[i12] = (byte) (i20 >> 16);
            int i22 = i21 + 1;
            bArr[i21] = (byte) (i20 >> 8);
            int i23 = i22 + 1;
            bArr[i22] = (byte) i20;
            if (i4 <= 0 || (i13 = i13 + 1) != 19) {
                i11 = i19;
            } else {
                i11 = i19 + 2;
                i13 = 0;
            }
            i12 = i23;
        }
        if (i12 < i9) {
            int i24 = 0;
            while (i11 <= i6 - i7) {
                i5 |= z[str.charAt(i11)] << (18 - (i24 * 6));
                i24++;
                i11++;
            }
            int i25 = 16;
            while (i12 < i9) {
                bArr[i12] = (byte) (i5 >> i25);
                i25 -= 8;
                i12++;
            }
        }
        return bArr;
    }
}
