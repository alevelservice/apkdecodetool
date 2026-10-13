package com.google.gson.r;

import com.google.gson.internal.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* compiled from: JsonReader.java */
/* loaded from: classes2.dex */
public class a implements Closeable {
    private static final char[] t = ")]}'\n".toCharArray();

    /* renamed from: e, reason: collision with root package name */
    private final Reader f15472e;
    private long m;
    private int n;
    private String o;
    private int q;
    private String[] r;
    private int[] s;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15473f = false;

    /* renamed from: g, reason: collision with root package name */
    private final char[] f15474g = new char[1024];

    /* renamed from: h, reason: collision with root package name */
    private int f15475h = 0;

    /* renamed from: i, reason: collision with root package name */
    private int f15476i = 0;

    /* renamed from: j, reason: collision with root package name */
    private int f15477j = 0;

    /* renamed from: k, reason: collision with root package name */
    private int f15478k = 0;

    /* renamed from: l, reason: collision with root package name */
    int f15479l = 0;
    private int[] p = new int[32];

    /* compiled from: JsonReader.java */
    /* renamed from: com.google.gson.r.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0147a extends e {
        C0147a() {
        }

        @Override // com.google.gson.internal.e
        public void a(a aVar) {
            if (aVar instanceof com.google.gson.internal.bind.a) {
                ((com.google.gson.internal.bind.a) aVar).E();
                return;
            }
            int i2 = aVar.f15479l;
            if (i2 == 0) {
                i2 = aVar.k();
            }
            if (i2 == 13) {
                aVar.f15479l = 9;
                return;
            }
            if (i2 == 12) {
                aVar.f15479l = 8;
                return;
            }
            if (i2 == 14) {
                aVar.f15479l = 10;
                return;
            }
            throw new IllegalStateException("Expected a name but was " + aVar.C() + aVar.r());
        }
    }

    static {
        e.f15442a = new C0147a();
    }

    public a(Reader reader) {
        this.q = 0;
        int[] iArr = this.p;
        int i2 = this.q;
        this.q = i2 + 1;
        iArr[i2] = 6;
        this.r = new String[32];
        this.s = new int[32];
        if (reader != null) {
            this.f15472e = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    private void E() {
        if (this.f15473f) {
            return;
        }
        c("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    private void F() {
        b(true);
        this.f15475h--;
        int i2 = this.f15475h;
        char[] cArr = t;
        if (i2 + cArr.length > this.f15476i && !c(cArr.length)) {
            return;
        }
        int i3 = 0;
        while (true) {
            char[] cArr2 = t;
            if (i3 < cArr2.length) {
                if (this.f15474g[this.f15475h + i3] != cArr2[i3]) {
                    return;
                } else {
                    i3++;
                }
            } else {
                this.f15475h += cArr2.length;
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004b, code lost:
    
        E();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0045. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String G() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = r1
        L3:
            r1 = 0
        L4:
            int r3 = r6.f15475h
            int r4 = r3 + r1
            int r5 = r6.f15476i
            if (r4 >= r5) goto L4f
            char[] r4 = r6.f15474g
            int r3 = r3 + r1
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5d
            r4 = 10
            if (r3 == r4) goto L5d
            r4 = 12
            if (r3 == r4) goto L5d
            r4 = 13
            if (r3 == r4) goto L5d
            r4 = 32
            if (r3 == r4) goto L5d
            r4 = 35
            if (r3 == r4) goto L4b
            r4 = 44
            if (r3 == r4) goto L5d
            r4 = 47
            if (r3 == r4) goto L4b
            r4 = 61
            if (r3 == r4) goto L4b
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5d
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5d
            r4 = 58
            if (r3 == r4) goto L5d
            r4 = 59
            if (r3 == r4) goto L4b
            switch(r3) {
                case 91: goto L5d;
                case 92: goto L4b;
                case 93: goto L5d;
                default: goto L48;
            }
        L48:
            int r1 = r1 + 1
            goto L4
        L4b:
            r6.E()
            goto L5d
        L4f:
            char[] r3 = r6.f15474g
            int r3 = r3.length
            if (r1 >= r3) goto L5f
            int r3 = r1 + 1
            boolean r3 = r6.c(r3)
            if (r3 == 0) goto L5d
            goto L4
        L5d:
            r0 = r1
            goto L7f
        L5f:
            if (r2 != 0) goto L6c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r1, r3)
            r2.<init>(r3)
        L6c:
            char[] r3 = r6.f15474g
            int r4 = r6.f15475h
            r2.append(r3, r4, r1)
            int r3 = r6.f15475h
            int r3 = r3 + r1
            r6.f15475h = r3
            r1 = 1
            boolean r1 = r6.c(r1)
            if (r1 != 0) goto L3
        L7f:
            if (r2 != 0) goto L8b
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f15474g
            int r3 = r6.f15475h
            r1.<init>(r2, r3, r0)
            goto L96
        L8b:
            char[] r1 = r6.f15474g
            int r3 = r6.f15475h
            r2.append(r1, r3, r0)
            java.lang.String r1 = r2.toString()
        L96:
            int r2 = r6.f15475h
            int r2 = r2 + r0
            r6.f15475h = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.a.G():java.lang.String");
    }

    private int H() {
        int i2;
        String str;
        String str2;
        char c2 = this.f15474g[this.f15475h];
        if (c2 == 't' || c2 == 'T') {
            i2 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c2 == 'f' || c2 == 'F') {
            i2 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c2 != 'n' && c2 != 'N') {
                return 0;
            }
            i2 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i3 = 1; i3 < length; i3++) {
            if (this.f15475h + i3 >= this.f15476i && !c(i3 + 1)) {
                return 0;
            }
            char c3 = this.f15474g[this.f15475h + i3];
            if (c3 != str.charAt(i3) && c3 != str2.charAt(i3)) {
                return 0;
            }
        }
        if ((this.f15475h + length < this.f15476i || c(length + 1)) && a(this.f15474g[this.f15475h + length])) {
            return 0;
        }
        this.f15475h += length;
        this.f15479l = i2;
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x009c, code lost:
    
        if (r9 != 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x009e, code lost:
    
        if (r10 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00a4, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a6, code lost:
    
        if (r13 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ac, code lost:
    
        if (r11 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ae, code lost:
    
        if (r13 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b0, code lost:
    
        if (r13 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b3, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b4, code lost:
    
        r18.m = r11;
        r18.f15475h += r3;
        r18.f15479l = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bf, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c0, code lost:
    
        if (r9 == 2) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c3, code lost:
    
        if (r9 == 4) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c6, code lost:
    
        if (r9 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c9, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cb, code lost:
    
        r18.n = r3;
        r18.f15479l = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d1, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x009a, code lost:
    
        if (a(r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00d2, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int I() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.a.I():int");
    }

    private char J() {
        int i2;
        int i3;
        if (this.f15475h == this.f15476i && !c(1)) {
            c("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.f15474g;
        int i4 = this.f15475h;
        this.f15475h = i4 + 1;
        char c2 = cArr[i4];
        if (c2 == '\n') {
            this.f15477j++;
            this.f15478k = this.f15475h;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 == 'b') {
                return '\b';
            }
            if (c2 == 'f') {
                return '\f';
            }
            if (c2 == 'n') {
                return '\n';
            }
            if (c2 == 'r') {
                return '\r';
            }
            if (c2 == 't') {
                return '\t';
            }
            if (c2 == 'u') {
                if (this.f15475h + 4 > this.f15476i && !c(4)) {
                    c("Unterminated escape sequence");
                    throw null;
                }
                char c3 = 0;
                int i5 = this.f15475h;
                int i6 = i5 + 4;
                while (i5 < i6) {
                    char c4 = this.f15474g[i5];
                    char c5 = (char) (c3 << 4);
                    if (c4 < '0' || c4 > '9') {
                        if (c4 >= 'a' && c4 <= 'f') {
                            i2 = c4 - 'a';
                        } else {
                            if (c4 < 'A' || c4 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f15474g, this.f15475h, 4));
                            }
                            i2 = c4 - 'A';
                        }
                        i3 = i2 + 10;
                    } else {
                        i3 = c4 - '0';
                    }
                    c3 = (char) (c5 + i3);
                    i5++;
                }
                this.f15475h += 4;
                return c3;
            }
            c("Invalid escape sequence");
            throw null;
        }
        return c2;
    }

    private void K() {
        char c2;
        do {
            if (this.f15475h >= this.f15476i && !c(1)) {
                return;
            }
            char[] cArr = this.f15474g;
            int i2 = this.f15475h;
            this.f15475h = i2 + 1;
            c2 = cArr[i2];
            if (c2 == '\n') {
                this.f15477j++;
                this.f15478k = this.f15475h;
                return;
            }
        } while (c2 != '\r');
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private void L() {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f15475h
            int r2 = r1 + r0
            int r3 = r4.f15476i
            if (r2 >= r3) goto L51
            char[] r2 = r4.f15474g
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.E()
        L4b:
            int r1 = r4.f15475h
            int r1 = r1 + r0
            r4.f15475h = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f15475h = r1
            r0 = 1
            boolean r0 = r4.c(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.a.L():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005e, code lost:
    
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r5) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006c, code lost:
    
        r2.append(r0, r5, r3 - r5);
        r10.f15475h = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(char r11) {
        /*
            r10 = this;
            char[] r0 = r10.f15474g
            r1 = 0
            r2 = r1
        L4:
            int r3 = r10.f15475h
            int r4 = r10.f15476i
        L8:
            r5 = r3
        L9:
            r6 = 16
            r7 = 1
            if (r3 >= r4) goto L5c
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L28
            r10.f15475h = r8
            int r8 = r8 - r5
            int r8 = r8 - r7
            if (r2 != 0) goto L20
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r5, r8)
            return r11
        L20:
            r2.append(r0, r5, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L28:
            r9 = 92
            if (r3 != r9) goto L4f
            r10.f15475h = r8
            int r8 = r8 - r5
            int r8 = r8 - r7
            if (r2 != 0) goto L40
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L40:
            r2.append(r0, r5, r8)
            char r3 = r10.J()
            r2.append(r3)
            int r3 = r10.f15475h
            int r4 = r10.f15476i
            goto L8
        L4f:
            r6 = 10
            if (r3 != r6) goto L5a
            int r3 = r10.f15477j
            int r3 = r3 + r7
            r10.f15477j = r3
            r10.f15478k = r8
        L5a:
            r3 = r8
            goto L9
        L5c:
            if (r2 != 0) goto L6c
            int r2 = r3 - r5
            int r2 = r2 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r4.<init>(r2)
            r2 = r4
        L6c:
            int r4 = r3 - r5
            r2.append(r0, r5, r4)
            r10.f15475h = r3
            boolean r3 = r10.c(r7)
            if (r3 == 0) goto L7a
            goto L4
        L7a:
            java.lang.String r11 = "Unterminated string"
            r10.c(r11)
            goto L81
        L80:
            throw r1
        L81:
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.a.b(char):java.lang.String");
    }

    private void c(char c2) {
        char[] cArr = this.f15474g;
        do {
            int i2 = this.f15475h;
            int i3 = this.f15476i;
            while (i2 < i3) {
                int i4 = i2 + 1;
                char c3 = cArr[i2];
                if (c3 == c2) {
                    this.f15475h = i4;
                    return;
                }
                if (c3 == '\\') {
                    this.f15475h = i4;
                    J();
                    i2 = this.f15475h;
                    i3 = this.f15476i;
                } else {
                    if (c3 == '\n') {
                        this.f15477j++;
                        this.f15478k = i4;
                    }
                    i2 = i4;
                }
            }
            this.f15475h = i2;
        } while (c(1));
        c("Unterminated string");
        throw null;
    }

    private void d(int i2) {
        int i3 = this.q;
        int[] iArr = this.p;
        if (i3 == iArr.length) {
            int i4 = i3 * 2;
            this.p = Arrays.copyOf(iArr, i4);
            this.s = Arrays.copyOf(this.s, i4);
            this.r = (String[]) Arrays.copyOf(this.r, i4);
        }
        int[] iArr2 = this.p;
        int i5 = this.q;
        this.q = i5 + 1;
        iArr2[i5] = i2;
    }

    public void A() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 7) {
            this.f15479l = 0;
            int[] iArr = this.s;
            int i3 = this.q - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + C() + r());
    }

    public String B() {
        String str;
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 10) {
            str = G();
        } else if (i2 == 8) {
            str = b('\'');
        } else if (i2 == 9) {
            str = b('\"');
        } else if (i2 == 11) {
            str = this.o;
            this.o = null;
        } else if (i2 == 15) {
            str = Long.toString(this.m);
        } else if (i2 == 16) {
            str = new String(this.f15474g, this.f15475h, this.n);
            this.f15475h += this.n;
        } else {
            throw new IllegalStateException("Expected a string but was " + C() + r());
        }
        this.f15479l = 0;
        int[] iArr = this.s;
        int i3 = this.q - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public b C() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        switch (i2) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public void D() {
        int i2 = 0;
        do {
            int i3 = this.f15479l;
            if (i3 == 0) {
                i3 = k();
            }
            if (i3 == 3) {
                d(1);
            } else if (i3 == 1) {
                d(3);
            } else {
                if (i3 == 4) {
                    this.q--;
                } else if (i3 == 2) {
                    this.q--;
                } else {
                    if (i3 == 14 || i3 == 10) {
                        L();
                    } else if (i3 == 8 || i3 == 12) {
                        c('\'');
                    } else if (i3 == 9 || i3 == 13) {
                        c('\"');
                    } else if (i3 == 16) {
                        this.f15475h += this.n;
                    }
                    this.f15479l = 0;
                }
                i2--;
                this.f15479l = 0;
            }
            i2++;
            this.f15479l = 0;
        } while (i2 != 0);
        int[] iArr = this.s;
        int i4 = this.q;
        int i5 = i4 - 1;
        iArr[i5] = iArr[i5] + 1;
        this.r[i4 - 1] = "null";
    }

    public final void a(boolean z) {
        this.f15473f = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15479l = 0;
        this.p[0] = 8;
        this.q = 1;
        this.f15472e.close();
    }

    public void i() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 3) {
            d(1);
            this.s[this.q - 1] = 0;
            this.f15479l = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + C() + r());
        }
    }

    public void j() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 1) {
            d(3);
            this.f15479l = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + C() + r());
        }
    }

    int k() {
        int b2;
        int[] iArr = this.p;
        int i2 = this.q;
        int i3 = iArr[i2 - 1];
        if (i3 == 1) {
            iArr[i2 - 1] = 2;
        } else if (i3 == 2) {
            int b3 = b(true);
            if (b3 != 44) {
                if (b3 != 59) {
                    if (b3 == 93) {
                        this.f15479l = 4;
                        return 4;
                    }
                    c("Unterminated array");
                    throw null;
                }
                E();
            }
        } else {
            if (i3 == 3 || i3 == 5) {
                this.p[this.q - 1] = 4;
                if (i3 == 5 && (b2 = b(true)) != 44) {
                    if (b2 != 59) {
                        if (b2 == 125) {
                            this.f15479l = 2;
                            return 2;
                        }
                        c("Unterminated object");
                        throw null;
                    }
                    E();
                }
                int b4 = b(true);
                if (b4 == 34) {
                    this.f15479l = 13;
                    return 13;
                }
                if (b4 == 39) {
                    E();
                    this.f15479l = 12;
                    return 12;
                }
                if (b4 == 125) {
                    if (i3 != 5) {
                        this.f15479l = 2;
                        return 2;
                    }
                    c("Expected name");
                    throw null;
                }
                E();
                this.f15475h--;
                if (a((char) b4)) {
                    this.f15479l = 14;
                    return 14;
                }
                c("Expected name");
                throw null;
            }
            if (i3 == 4) {
                iArr[i2 - 1] = 5;
                int b5 = b(true);
                if (b5 != 58) {
                    if (b5 == 61) {
                        E();
                        if (this.f15475h < this.f15476i || c(1)) {
                            char[] cArr = this.f15474g;
                            int i4 = this.f15475h;
                            if (cArr[i4] == '>') {
                                this.f15475h = i4 + 1;
                            }
                        }
                    } else {
                        c("Expected ':'");
                        throw null;
                    }
                }
            } else if (i3 == 6) {
                if (this.f15473f) {
                    F();
                }
                this.p[this.q - 1] = 7;
            } else if (i3 == 7) {
                if (b(false) == -1) {
                    this.f15479l = 17;
                    return 17;
                }
                E();
                this.f15475h--;
            } else if (i3 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int b6 = b(true);
        if (b6 == 34) {
            this.f15479l = 9;
            return 9;
        }
        if (b6 == 39) {
            E();
            this.f15479l = 8;
            return 8;
        }
        if (b6 != 44 && b6 != 59) {
            if (b6 == 91) {
                this.f15479l = 3;
                return 3;
            }
            if (b6 != 93) {
                if (b6 != 123) {
                    this.f15475h--;
                    int H = H();
                    if (H != 0) {
                        return H;
                    }
                    int I = I();
                    if (I != 0) {
                        return I;
                    }
                    if (a(this.f15474g[this.f15475h])) {
                        E();
                        this.f15479l = 10;
                        return 10;
                    }
                    c("Expected value");
                    throw null;
                }
                this.f15479l = 1;
                return 1;
            }
            if (i3 == 1) {
                this.f15479l = 4;
                return 4;
            }
        }
        if (i3 != 1 && i3 != 2) {
            c("Unexpected value");
            throw null;
        }
        E();
        this.f15475h--;
        this.f15479l = 7;
        return 7;
    }

    public void l() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 4) {
            this.q--;
            int[] iArr = this.s;
            int i3 = this.q - 1;
            iArr[i3] = iArr[i3] + 1;
            this.f15479l = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + C() + r());
    }

    public void m() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 2) {
            this.q--;
            String[] strArr = this.r;
            int i3 = this.q;
            strArr[i3] = null;
            int[] iArr = this.s;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f15479l = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + C() + r());
    }

    public String o() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = this.q;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.p[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.s[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.r;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public boolean p() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final boolean q() {
        return this.f15473f;
    }

    String r() {
        return " at line " + (this.f15477j + 1) + " column " + ((this.f15475h - this.f15478k) + 1) + " path " + o();
    }

    public boolean s() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 5) {
            this.f15479l = 0;
            int[] iArr = this.s;
            int i3 = this.q - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        }
        if (i2 == 6) {
            this.f15479l = 0;
            int[] iArr2 = this.s;
            int i4 = this.q - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + C() + r());
    }

    public double t() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 15) {
            this.f15479l = 0;
            int[] iArr = this.s;
            int i3 = this.q - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.m;
        }
        if (i2 == 16) {
            this.o = new String(this.f15474g, this.f15475h, this.n);
            this.f15475h += this.n;
        } else if (i2 == 8 || i2 == 9) {
            this.o = b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.o = G();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + C() + r());
        }
        this.f15479l = 11;
        double parseDouble = Double.parseDouble(this.o);
        if (!this.f15473f && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new d("JSON forbids NaN and infinities: " + parseDouble + r());
        }
        this.o = null;
        this.f15479l = 0;
        int[] iArr2 = this.s;
        int i4 = this.q - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return parseDouble;
    }

    public String toString() {
        return getClass().getSimpleName() + r();
    }

    public int u() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 15) {
            long j2 = this.m;
            int i3 = (int) j2;
            if (j2 == i3) {
                this.f15479l = 0;
                int[] iArr = this.s;
                int i4 = this.q - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.m + r());
        }
        if (i2 == 16) {
            this.o = new String(this.f15474g, this.f15475h, this.n);
            this.f15475h += this.n;
        } else {
            if (i2 != 8 && i2 != 9 && i2 != 10) {
                throw new IllegalStateException("Expected an int but was " + C() + r());
            }
            if (i2 == 10) {
                this.o = G();
            } else {
                this.o = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.o);
                this.f15479l = 0;
                int[] iArr2 = this.s;
                int i5 = this.q - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f15479l = 11;
        double parseDouble = Double.parseDouble(this.o);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.o = null;
            this.f15479l = 0;
            int[] iArr3 = this.s;
            int i7 = this.q - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.o + r());
    }

    public long v() {
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 15) {
            this.f15479l = 0;
            int[] iArr = this.s;
            int i3 = this.q - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.m;
        }
        if (i2 == 16) {
            this.o = new String(this.f15474g, this.f15475h, this.n);
            this.f15475h += this.n;
        } else {
            if (i2 != 8 && i2 != 9 && i2 != 10) {
                throw new IllegalStateException("Expected a long but was " + C() + r());
            }
            if (i2 == 10) {
                this.o = G();
            } else {
                this.o = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.o);
                this.f15479l = 0;
                int[] iArr2 = this.s;
                int i4 = this.q - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f15479l = 11;
        double parseDouble = Double.parseDouble(this.o);
        long j2 = (long) parseDouble;
        if (j2 == parseDouble) {
            this.o = null;
            this.f15479l = 0;
            int[] iArr3 = this.s;
            int i5 = this.q - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j2;
        }
        throw new NumberFormatException("Expected a long but was " + this.o + r());
    }

    public String z() {
        String b2;
        int i2 = this.f15479l;
        if (i2 == 0) {
            i2 = k();
        }
        if (i2 == 14) {
            b2 = G();
        } else if (i2 == 12) {
            b2 = b('\'');
        } else if (i2 == 13) {
            b2 = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + C() + r());
        }
        this.f15479l = 0;
        this.r[this.q - 1] = b2;
        return b2;
    }

    private boolean a(char c2) {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        E();
        return false;
    }

    private boolean c(int i2) {
        int i3;
        char[] cArr = this.f15474g;
        int i4 = this.f15478k;
        int i5 = this.f15475h;
        this.f15478k = i4 - i5;
        int i6 = this.f15476i;
        if (i6 != i5) {
            this.f15476i = i6 - i5;
            System.arraycopy(cArr, i5, cArr, 0, this.f15476i);
        } else {
            this.f15476i = 0;
        }
        this.f15475h = 0;
        do {
            Reader reader = this.f15472e;
            int i7 = this.f15476i;
            int read = reader.read(cArr, i7, cArr.length - i7);
            if (read == -1) {
                return false;
            }
            this.f15476i += read;
            if (this.f15477j == 0 && (i3 = this.f15478k) == 0 && this.f15476i > 0 && cArr[0] == 65279) {
                this.f15475h++;
                this.f15478k = i3 + 1;
                i2++;
            }
        } while (this.f15476i < i2);
        return true;
    }

    private int b(boolean z) {
        char[] cArr = this.f15474g;
        int i2 = this.f15475h;
        int i3 = this.f15476i;
        while (true) {
            if (i2 == i3) {
                this.f15475h = i2;
                if (!c(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + r());
                }
                i2 = this.f15475h;
                i3 = this.f15476i;
            }
            int i4 = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == '\n') {
                this.f15477j++;
                this.f15478k = i4;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.f15475h = i4;
                    if (i4 == i3) {
                        this.f15475h--;
                        boolean c3 = c(2);
                        this.f15475h++;
                        if (!c3) {
                            return c2;
                        }
                    }
                    E();
                    int i5 = this.f15475h;
                    char c4 = cArr[i5];
                    if (c4 == '*') {
                        this.f15475h = i5 + 1;
                        if (b("*/")) {
                            i2 = this.f15475h + 2;
                            i3 = this.f15476i;
                        } else {
                            c("Unterminated comment");
                            throw null;
                        }
                    } else {
                        if (c4 != '/') {
                            return c2;
                        }
                        this.f15475h = i5 + 1;
                        K();
                        i2 = this.f15475h;
                        i3 = this.f15476i;
                    }
                } else if (c2 == '#') {
                    this.f15475h = i4;
                    E();
                    K();
                    i2 = this.f15475h;
                    i3 = this.f15476i;
                } else {
                    this.f15475h = i4;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    private IOException c(String str) {
        throw new d(str + r());
    }

    private boolean b(String str) {
        int length = str.length();
        while (true) {
            if (this.f15475h + length > this.f15476i && !c(length)) {
                return false;
            }
            char[] cArr = this.f15474g;
            int i2 = this.f15475h;
            if (cArr[i2] != '\n') {
                for (int i3 = 0; i3 < length; i3++) {
                    if (this.f15474g[this.f15475h + i3] != str.charAt(i3)) {
                        break;
                    }
                }
                return true;
            }
            this.f15477j++;
            this.f15478k = i2 + 1;
            this.f15475h++;
        }
    }
}
