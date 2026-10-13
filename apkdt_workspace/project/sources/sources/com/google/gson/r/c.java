package com.google.gson.r;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* compiled from: JsonWriter.java */
/* loaded from: classes2.dex */
public class c implements Closeable, Flushable {
    private static final String[] n = new String[128];
    private static final String[] o;

    /* renamed from: e, reason: collision with root package name */
    private final Writer f15481e;

    /* renamed from: f, reason: collision with root package name */
    private int[] f15482f = new int[32];

    /* renamed from: g, reason: collision with root package name */
    private int f15483g = 0;

    /* renamed from: h, reason: collision with root package name */
    private String f15484h;

    /* renamed from: i, reason: collision with root package name */
    private String f15485i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15486j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15487k;

    /* renamed from: l, reason: collision with root package name */
    private String f15488l;
    private boolean m;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            n[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        o = (String[]) strArr.clone();
        String[] strArr2 = o;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        c(6);
        this.f15485i = ":";
        this.m = true;
        if (writer != null) {
            this.f15481e = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    private void d(int i2) {
        this.f15482f[this.f15483g - 1] = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(java.lang.String r9) {
        /*
            r8 = this;
            boolean r0 = r8.f15487k
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.google.gson.r.c.o
            goto L9
        L7:
            java.lang.String[] r0 = com.google.gson.r.c.n
        L9:
            java.io.Writer r1 = r8.f15481e
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f15481e
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f15481e
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f15481e
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f15481e
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.c.e(java.lang.String):void");
    }

    private void r() {
        int u = u();
        if (u == 5) {
            this.f15481e.write(44);
        } else if (u != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        t();
        d(4);
    }

    private void s() {
        int u = u();
        if (u == 1) {
            d(2);
            t();
            return;
        }
        if (u == 2) {
            this.f15481e.append(',');
            t();
        } else {
            if (u != 4) {
                if (u != 6) {
                    if (u == 7) {
                        if (!this.f15486j) {
                            throw new IllegalStateException("JSON must have only one top-level value.");
                        }
                    } else {
                        throw new IllegalStateException("Nesting problem.");
                    }
                }
                d(7);
                return;
            }
            this.f15481e.append((CharSequence) this.f15485i);
            d(5);
        }
    }

    private void t() {
        if (this.f15484h == null) {
            return;
        }
        this.f15481e.write(10);
        int i2 = this.f15483g;
        for (int i3 = 1; i3 < i2; i3++) {
            this.f15481e.write(this.f15484h);
        }
    }

    private int u() {
        int i2 = this.f15483g;
        if (i2 != 0) {
            return this.f15482f[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void v() {
        if (this.f15488l != null) {
            r();
            e(this.f15488l);
            this.f15488l = null;
        }
    }

    public final void a(boolean z) {
        this.f15487k = z;
    }

    public final void b(boolean z) {
        this.f15486j = z;
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.f15484h = null;
            this.f15485i = ":";
        } else {
            this.f15484h = str;
            this.f15485i = ": ";
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15481e.close();
        int i2 = this.f15483g;
        if (i2 <= 1 && (i2 != 1 || this.f15482f[i2 - 1] == 7)) {
            this.f15483g = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public void flush() {
        if (this.f15483g != 0) {
            this.f15481e.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c h(long j2) {
        v();
        s();
        this.f15481e.write(Long.toString(j2));
        return this;
    }

    public c i() {
        v();
        a(1, '[');
        return this;
    }

    public c j() {
        v();
        a(3, '{');
        return this;
    }

    public c k() {
        a(1, 2, ']');
        return this;
    }

    public c l() {
        a(3, 5, '}');
        return this;
    }

    public final boolean m() {
        return this.m;
    }

    public final boolean o() {
        return this.f15487k;
    }

    public boolean p() {
        return this.f15486j;
    }

    public c q() {
        if (this.f15488l != null) {
            if (this.m) {
                v();
            } else {
                this.f15488l = null;
                return this;
            }
        }
        s();
        this.f15481e.write("null");
        return this;
    }

    private c a(int i2, char c2) {
        s();
        c(i2);
        this.f15481e.write(c2);
        return this;
    }

    public c b(String str) {
        if (str != null) {
            if (this.f15488l == null) {
                if (this.f15483g != 0) {
                    this.f15488l = str;
                    return this;
                }
                throw new IllegalStateException("JsonWriter is closed.");
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    public c d(String str) {
        if (str == null) {
            return q();
        }
        v();
        s();
        e(str);
        return this;
    }

    private c a(int i2, int i3, char c2) {
        int u = u();
        if (u != i3 && u != i2) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f15488l == null) {
            this.f15483g--;
            if (u == i3) {
                t();
            }
            this.f15481e.write(c2);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f15488l);
    }

    public final void c(boolean z) {
        this.m = z;
    }

    public c d(boolean z) {
        v();
        s();
        this.f15481e.write(z ? "true" : "false");
        return this;
    }

    private void c(int i2) {
        int i3 = this.f15483g;
        int[] iArr = this.f15482f;
        if (i3 == iArr.length) {
            this.f15482f = Arrays.copyOf(iArr, i3 * 2);
        }
        int[] iArr2 = this.f15482f;
        int i4 = this.f15483g;
        this.f15483g = i4 + 1;
        iArr2[i4] = i2;
    }

    public c a(Boolean bool) {
        if (bool == null) {
            return q();
        }
        v();
        s();
        this.f15481e.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(double d2) {
        v();
        if (!this.f15486j && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d2);
        }
        s();
        this.f15481e.append((CharSequence) Double.toString(d2));
        return this;
    }

    public c a(Number number) {
        if (number == null) {
            return q();
        }
        v();
        String obj = number.toString();
        if (!this.f15486j && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        s();
        this.f15481e.append((CharSequence) obj);
        return this;
    }
}
