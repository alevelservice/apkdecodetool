package i.g0.i;

import j.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Hpack.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    static final c[] f18582a = {new c(c.f18578i, ""), new c(c.f18575f, "GET"), new c(c.f18575f, "POST"), new c(c.f18576g, "/"), new c(c.f18576g, "/index.html"), new c(c.f18577h, "http"), new c(c.f18577h, "https"), new c(c.f18574e, "200"), new c(c.f18574e, "204"), new c(c.f18574e, "206"), new c(c.f18574e, "304"), new c(c.f18574e, "400"), new c(c.f18574e, "404"), new c(c.f18574e, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};

    /* renamed from: b, reason: collision with root package name */
    static final Map<j.f, Integer> f18583b = a();

    /* compiled from: Hpack.java */
    /* loaded from: classes2.dex */
    static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<c> f18584a;

        /* renamed from: b, reason: collision with root package name */
        private final j.e f18585b;

        /* renamed from: c, reason: collision with root package name */
        private final int f18586c;

        /* renamed from: d, reason: collision with root package name */
        private int f18587d;

        /* renamed from: e, reason: collision with root package name */
        c[] f18588e;

        /* renamed from: f, reason: collision with root package name */
        int f18589f;

        /* renamed from: g, reason: collision with root package name */
        int f18590g;

        /* renamed from: h, reason: collision with root package name */
        int f18591h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i2, u uVar) {
            this(i2, i2, uVar);
        }

        private int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f18588e.length;
                while (true) {
                    length--;
                    if (length < this.f18589f || i2 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f18588e;
                    i2 -= cVarArr[length].f18581c;
                    this.f18591h -= cVarArr[length].f18581c;
                    this.f18590g--;
                    i3++;
                }
                c[] cVarArr2 = this.f18588e;
                int i4 = this.f18589f;
                System.arraycopy(cVarArr2, i4 + 1, cVarArr2, i4 + 1 + i3, this.f18590g);
                this.f18589f += i3;
            }
            return i3;
        }

        private void d() {
            int i2 = this.f18587d;
            int i3 = this.f18591h;
            if (i2 < i3) {
                if (i2 == 0) {
                    e();
                } else {
                    b(i3 - i2);
                }
            }
        }

        private void e() {
            Arrays.fill(this.f18588e, (Object) null);
            this.f18589f = this.f18588e.length - 1;
            this.f18590g = 0;
            this.f18591h = 0;
        }

        private void f(int i2) {
            a(-1, new c(c(i2), b()));
        }

        private void g(int i2) {
            this.f18584a.add(new c(c(i2), b()));
        }

        private void h() {
            j.f b2 = b();
            d.a(b2);
            this.f18584a.add(new c(b2, b()));
        }

        public List<c> a() {
            ArrayList arrayList = new ArrayList(this.f18584a);
            this.f18584a.clear();
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c() {
            while (!this.f18585b.d()) {
                int readByte = this.f18585b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    e(a(readByte, 127) - 1);
                } else if (readByte == 64) {
                    g();
                } else if ((readByte & 64) == 64) {
                    f(a(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    this.f18587d = a(readByte, 31);
                    int i2 = this.f18587d;
                    if (i2 >= 0 && i2 <= this.f18586c) {
                        d();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f18587d);
                    }
                } else if (readByte != 16 && readByte != 0) {
                    g(a(readByte, 15) - 1);
                } else {
                    h();
                }
            }
        }

        a(int i2, int i3, u uVar) {
            this.f18584a = new ArrayList();
            this.f18588e = new c[8];
            this.f18589f = this.f18588e.length - 1;
            this.f18590g = 0;
            this.f18591h = 0;
            this.f18586c = i2;
            this.f18587d = i3;
            this.f18585b = j.n.a(uVar);
        }

        private int a(int i2) {
            return this.f18589f + 1 + i2;
        }

        private void a(int i2, c cVar) {
            this.f18584a.add(cVar);
            int i3 = cVar.f18581c;
            if (i2 != -1) {
                i3 -= this.f18588e[a(i2)].f18581c;
            }
            int i4 = this.f18587d;
            if (i3 > i4) {
                e();
                return;
            }
            int b2 = b((this.f18591h + i3) - i4);
            if (i2 == -1) {
                int i5 = this.f18590g + 1;
                c[] cVarArr = this.f18588e;
                if (i5 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f18589f = this.f18588e.length - 1;
                    this.f18588e = cVarArr2;
                }
                int i6 = this.f18589f;
                this.f18589f = i6 - 1;
                this.f18588e[i6] = cVar;
                this.f18590g++;
            } else {
                this.f18588e[i2 + a(i2) + b2] = cVar;
            }
            this.f18591h += i3;
        }

        private boolean d(int i2) {
            return i2 >= 0 && i2 <= d.f18582a.length - 1;
        }

        private int f() {
            return this.f18585b.readByte() & 255;
        }

        private void g() {
            j.f b2 = b();
            d.a(b2);
            a(-1, new c(b2, b()));
        }

        private void e(int i2) {
            if (d(i2)) {
                this.f18584a.add(d.f18582a[i2]);
                return;
            }
            int a2 = a(i2 - d.f18582a.length);
            if (a2 >= 0) {
                c[] cVarArr = this.f18588e;
                if (a2 < cVarArr.length) {
                    this.f18584a.add(cVarArr[a2]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        j.f b() {
            int f2 = f();
            boolean z = (f2 & 128) == 128;
            int a2 = a(f2, 127);
            if (z) {
                return j.f.of(k.b().a(this.f18585b.e(a2)));
            }
            return this.f18585b.c(a2);
        }

        private j.f c(int i2) {
            if (d(i2)) {
                return d.f18582a[i2].f18579a;
            }
            int a2 = a(i2 - d.f18582a.length);
            if (a2 >= 0) {
                c[] cVarArr = this.f18588e;
                if (a2 < cVarArr.length) {
                    return cVarArr[a2].f18579a;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        int a(int i2, int i3) {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int f2 = f();
                if ((f2 & 128) == 0) {
                    return i3 + (f2 << i5);
                }
                i3 += (f2 & 127) << i5;
                i5 += 7;
            }
        }
    }

    /* compiled from: Hpack.java */
    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final j.c f18592a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f18593b;

        /* renamed from: c, reason: collision with root package name */
        private int f18594c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f18595d;

        /* renamed from: e, reason: collision with root package name */
        int f18596e;

        /* renamed from: f, reason: collision with root package name */
        c[] f18597f;

        /* renamed from: g, reason: collision with root package name */
        int f18598g;

        /* renamed from: h, reason: collision with root package name */
        int f18599h;

        /* renamed from: i, reason: collision with root package name */
        int f18600i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(j.c cVar) {
            this(4096, true, cVar);
        }

        private void a(c cVar) {
            int i2 = cVar.f18581c;
            int i3 = this.f18596e;
            if (i2 > i3) {
                b();
                return;
            }
            b((this.f18600i + i2) - i3);
            int i4 = this.f18599h + 1;
            c[] cVarArr = this.f18597f;
            if (i4 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f18598g = this.f18597f.length - 1;
                this.f18597f = cVarArr2;
            }
            int i5 = this.f18598g;
            this.f18598g = i5 - 1;
            this.f18597f[i5] = cVar;
            this.f18599h++;
            this.f18600i += i2;
        }

        private void b() {
            Arrays.fill(this.f18597f, (Object) null);
            this.f18598g = this.f18597f.length - 1;
            this.f18599h = 0;
            this.f18600i = 0;
        }

        b(int i2, boolean z, j.c cVar) {
            this.f18594c = Integer.MAX_VALUE;
            this.f18597f = new c[8];
            this.f18598g = this.f18597f.length - 1;
            this.f18599h = 0;
            this.f18600i = 0;
            this.f18596e = i2;
            this.f18593b = z;
            this.f18592a = cVar;
        }

        private int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f18597f.length;
                while (true) {
                    length--;
                    if (length < this.f18598g || i2 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f18597f;
                    i2 -= cVarArr[length].f18581c;
                    this.f18600i -= cVarArr[length].f18581c;
                    this.f18599h--;
                    i3++;
                }
                c[] cVarArr2 = this.f18597f;
                int i4 = this.f18598g;
                System.arraycopy(cVarArr2, i4 + 1, cVarArr2, i4 + 1 + i3, this.f18599h);
                c[] cVarArr3 = this.f18597f;
                int i5 = this.f18598g;
                Arrays.fill(cVarArr3, i5 + 1, i5 + 1 + i3, (Object) null);
                this.f18598g += i3;
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(List<c> list) {
            int i2;
            int i3;
            if (this.f18595d) {
                int i4 = this.f18594c;
                if (i4 < this.f18596e) {
                    a(i4, 31, 32);
                }
                this.f18595d = false;
                this.f18594c = Integer.MAX_VALUE;
                a(this.f18596e, 31, 32);
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                c cVar = list.get(i5);
                j.f asciiLowercase = cVar.f18579a.toAsciiLowercase();
                j.f fVar = cVar.f18580b;
                Integer num = d.f18583b.get(asciiLowercase);
                if (num != null) {
                    i2 = num.intValue() + 1;
                    if (i2 > 1 && i2 < 8) {
                        if (i.g0.c.a(d.f18582a[i2 - 1].f18580b, fVar)) {
                            i3 = i2;
                        } else if (i.g0.c.a(d.f18582a[i2].f18580b, fVar)) {
                            i3 = i2;
                            i2++;
                        }
                    }
                    i3 = i2;
                    i2 = -1;
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                if (i2 == -1) {
                    int i6 = this.f18598g + 1;
                    int length = this.f18597f.length;
                    while (true) {
                        if (i6 >= length) {
                            break;
                        }
                        if (i.g0.c.a(this.f18597f[i6].f18579a, asciiLowercase)) {
                            if (i.g0.c.a(this.f18597f[i6].f18580b, fVar)) {
                                i2 = d.f18582a.length + (i6 - this.f18598g);
                                break;
                            } else if (i3 == -1) {
                                i3 = (i6 - this.f18598g) + d.f18582a.length;
                            }
                        }
                        i6++;
                    }
                }
                if (i2 != -1) {
                    a(i2, 127, 128);
                } else if (i3 == -1) {
                    this.f18592a.writeByte(64);
                    a(asciiLowercase);
                    a(fVar);
                    a(cVar);
                } else if (asciiLowercase.startsWith(c.f18573d) && !c.f18578i.equals(asciiLowercase)) {
                    a(i3, 15, 0);
                    a(fVar);
                } else {
                    a(i3, 63, 64);
                    a(fVar);
                    a(cVar);
                }
            }
        }

        void a(int i2, int i3, int i4) {
            if (i2 < i3) {
                this.f18592a.writeByte(i2 | i4);
                return;
            }
            this.f18592a.writeByte(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                this.f18592a.writeByte(128 | (i5 & 127));
                i5 >>>= 7;
            }
            this.f18592a.writeByte(i5);
        }

        void a(j.f fVar) {
            if (this.f18593b && k.b().a(fVar) < fVar.size()) {
                j.c cVar = new j.c();
                k.b().a(fVar, cVar);
                j.f x = cVar.x();
                a(x.size(), 127, 128);
                this.f18592a.a(x);
                return;
            }
            a(fVar.size(), 127, 0);
            this.f18592a.a(fVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(int i2) {
            int min = Math.min(i2, 16384);
            int i3 = this.f18596e;
            if (i3 == min) {
                return;
            }
            if (min < i3) {
                this.f18594c = Math.min(this.f18594c, min);
            }
            this.f18595d = true;
            this.f18596e = min;
            a();
        }

        private void a() {
            int i2 = this.f18596e;
            int i3 = this.f18600i;
            if (i2 < i3) {
                if (i2 == 0) {
                    b();
                } else {
                    b(i3 - i2);
                }
            }
        }
    }

    private static Map<j.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f18582a.length);
        int i2 = 0;
        while (true) {
            c[] cVarArr = f18582a;
            if (i2 < cVarArr.length) {
                if (!linkedHashMap.containsKey(cVarArr[i2].f18579a)) {
                    linkedHashMap.put(f18582a[i2].f18579a, Integer.valueOf(i2));
                }
                i2++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }

    static j.f a(j.f fVar) {
        int size = fVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            byte b2 = fVar.getByte(i2);
            if (b2 >= 65 && b2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.utf8());
            }
        }
        return fVar;
    }
}
