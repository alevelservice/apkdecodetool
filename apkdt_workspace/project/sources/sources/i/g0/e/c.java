package i.g0.e;

import i.b0;
import i.g0.g.e;
import i.r;
import i.z;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: CacheStrategy.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final z f18467a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final b0 f18468b;

    c(z zVar, b0 b0Var) {
        this.f18467a = zVar;
        this.f18468b = b0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.j().a() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(i.b0 r3, i.z r4) {
        /*
            int r0 = r3.k()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.b(r0)
            if (r0 != 0) goto L5a
            i.d r0 = r3.j()
            int r0 = r0.c()
            r1 = -1
            if (r0 != r1) goto L5a
            i.d r0 = r3.j()
            boolean r0 = r0.b()
            if (r0 != 0) goto L5a
            i.d r0 = r3.j()
            boolean r0 = r0.a()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            i.d r3 = r3.j()
            boolean r3 = r3.h()
            if (r3 != 0) goto L6f
            i.d r3 = r4.b()
            boolean r3 = r3.h()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: i.g0.e.c.a(i.b0, i.z):boolean");
    }

    /* compiled from: CacheStrategy.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final long f18469a;

        /* renamed from: b, reason: collision with root package name */
        final z f18470b;

        /* renamed from: c, reason: collision with root package name */
        final b0 f18471c;

        /* renamed from: d, reason: collision with root package name */
        private Date f18472d;

        /* renamed from: e, reason: collision with root package name */
        private String f18473e;

        /* renamed from: f, reason: collision with root package name */
        private Date f18474f;

        /* renamed from: g, reason: collision with root package name */
        private String f18475g;

        /* renamed from: h, reason: collision with root package name */
        private Date f18476h;

        /* renamed from: i, reason: collision with root package name */
        private long f18477i;

        /* renamed from: j, reason: collision with root package name */
        private long f18478j;

        /* renamed from: k, reason: collision with root package name */
        private String f18479k;

        /* renamed from: l, reason: collision with root package name */
        private int f18480l;

        public a(long j2, z zVar, b0 b0Var) {
            this.f18480l = -1;
            this.f18469a = j2;
            this.f18470b = zVar;
            this.f18471c = b0Var;
            if (b0Var != null) {
                this.f18477i = b0Var.u();
                this.f18478j = b0Var.s();
                r m = b0Var.m();
                int b2 = m.b();
                for (int i2 = 0; i2 < b2; i2++) {
                    String a2 = m.a(i2);
                    String b3 = m.b(i2);
                    if ("Date".equalsIgnoreCase(a2)) {
                        this.f18472d = i.g0.g.d.a(b3);
                        this.f18473e = b3;
                    } else if ("Expires".equalsIgnoreCase(a2)) {
                        this.f18476h = i.g0.g.d.a(b3);
                    } else if ("Last-Modified".equalsIgnoreCase(a2)) {
                        this.f18474f = i.g0.g.d.a(b3);
                        this.f18475g = b3;
                    } else if ("ETag".equalsIgnoreCase(a2)) {
                        this.f18479k = b3;
                    } else if ("Age".equalsIgnoreCase(a2)) {
                        this.f18480l = e.a(b3, -1);
                    }
                }
            }
        }

        private long b() {
            Date date = this.f18472d;
            long max = date != null ? Math.max(0L, this.f18478j - date.getTime()) : 0L;
            int i2 = this.f18480l;
            if (i2 != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i2));
            }
            long j2 = this.f18478j;
            return max + (j2 - this.f18477i) + (this.f18469a - j2);
        }

        private long c() {
            long j2;
            long j3;
            if (this.f18471c.j().c() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.c());
            }
            if (this.f18476h != null) {
                Date date = this.f18472d;
                if (date != null) {
                    j3 = date.getTime();
                } else {
                    j3 = this.f18478j;
                }
                long time = this.f18476h.getTime() - j3;
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f18474f == null || this.f18471c.t().g().k() != null) {
                return 0L;
            }
            Date date2 = this.f18472d;
            if (date2 != null) {
                j2 = date2.getTime();
            } else {
                j2 = this.f18477i;
            }
            long time2 = j2 - this.f18474f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private c d() {
            if (this.f18471c == null) {
                return new c(this.f18470b, null);
            }
            if (this.f18470b.d() && this.f18471c.l() == null) {
                return new c(this.f18470b, null);
            }
            if (!c.a(this.f18471c, this.f18470b)) {
                return new c(this.f18470b, null);
            }
            i.d b2 = this.f18470b.b();
            if (!b2.g() && !a(this.f18470b)) {
                i.d j2 = this.f18471c.j();
                long b3 = b();
                long c2 = c();
                if (b2.c() != -1) {
                    c2 = Math.min(c2, TimeUnit.SECONDS.toMillis(b2.c()));
                }
                long j3 = 0;
                long millis = b2.e() != -1 ? TimeUnit.SECONDS.toMillis(b2.e()) : 0L;
                if (!j2.f() && b2.d() != -1) {
                    j3 = TimeUnit.SECONDS.toMillis(b2.d());
                }
                if (!j2.g()) {
                    long j4 = millis + b3;
                    if (j4 < j3 + c2) {
                        b0.a q = this.f18471c.q();
                        if (j4 >= c2) {
                            q.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (b3 > 86400000 && e()) {
                            q.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new c(null, q.a());
                    }
                }
                String str = this.f18479k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f18474f != null) {
                    str = this.f18475g;
                } else if (this.f18472d != null) {
                    str = this.f18473e;
                } else {
                    return new c(this.f18470b, null);
                }
                r.a a2 = this.f18470b.c().a();
                i.g0.a.f18446a.a(a2, str2, str);
                z.a f2 = this.f18470b.f();
                f2.a(a2.a());
                return new c(f2.a(), this.f18471c);
            }
            return new c(this.f18470b, null);
        }

        private boolean e() {
            return this.f18471c.j().c() == -1 && this.f18476h == null;
        }

        public c a() {
            c d2 = d();
            return (d2.f18467a == null || !this.f18470b.b().i()) ? d2 : new c(null, null);
        }

        private static boolean a(z zVar) {
            return (zVar.a("If-Modified-Since") == null && zVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
