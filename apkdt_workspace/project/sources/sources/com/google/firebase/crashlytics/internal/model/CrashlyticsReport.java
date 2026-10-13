package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.b;
import com.google.firebase.crashlytics.internal.model.c;
import com.google.firebase.crashlytics.internal.model.d;
import com.google.firebase.crashlytics.internal.model.e;
import com.google.firebase.crashlytics.internal.model.f;
import com.google.firebase.crashlytics.internal.model.g;
import com.google.firebase.crashlytics.internal.model.i;
import com.google.firebase.crashlytics.internal.model.j;
import com.google.firebase.crashlytics.internal.model.k;
import com.google.firebase.crashlytics.internal.model.l;
import com.google.firebase.crashlytics.internal.model.m;
import com.google.firebase.crashlytics.internal.model.n;
import com.google.firebase.crashlytics.internal.model.o;
import com.google.firebase.crashlytics.internal.model.p;
import com.google.firebase.crashlytics.internal.model.q;
import com.google.firebase.crashlytics.internal.model.r;
import com.google.firebase.crashlytics.internal.model.s;
import com.google.firebase.crashlytics.internal.model.t;
import com.google.firebase.crashlytics.internal.model.u;
import com.google.firebase.encoders.annotations.Encodable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;

@Encodable
/* loaded from: classes.dex */
public abstract class CrashlyticsReport {

    /* renamed from: a, reason: collision with root package name */
    private static final Charset f14746a = Charset.forName("UTF-8");

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Architecture {
        public static final int ARM64 = 9;
        public static final int ARMV6 = 5;
        public static final int ARMV7 = 6;
        public static final int UNKNOWN = 7;
        public static final int X86_32 = 0;
        public static final int X86_64 = 1;
    }

    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(int i2);

        @NonNull
        public abstract a a(c cVar);

        @NonNull
        public abstract a a(@NonNull d dVar);

        @NonNull
        public abstract a a(@NonNull String str);

        @NonNull
        public abstract CrashlyticsReport a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@NonNull String str);
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* loaded from: classes.dex */
        public static abstract class a {
            @NonNull
            public abstract a a(@NonNull String str);

            @NonNull
            public abstract b a();

            @NonNull
            public abstract a b(@NonNull String str);
        }

        @NonNull
        public static a c() {
            return new c.b();
        }

        @NonNull
        public abstract String a();

        @NonNull
        public abstract String b();
    }

    /* loaded from: classes.dex */
    public static abstract class c {

        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract a a(v<b> vVar);

            public abstract a a(String str);

            public abstract c a();
        }

        /* loaded from: classes.dex */
        public static abstract class b {

            /* loaded from: classes.dex */
            public static abstract class a {
                public abstract a a(String str);

                public abstract a a(byte[] bArr);

                public abstract b a();
            }

            @NonNull
            public static a c() {
                return new e.b();
            }

            @NonNull
            public abstract byte[] a();

            @NonNull
            public abstract String b();
        }

        @NonNull
        public static a c() {
            return new d.b();
        }

        @NonNull
        public abstract v<b> a();

        @Nullable
        public abstract String b();
    }

    /* loaded from: classes.dex */
    public static abstract class d {

        /* loaded from: classes.dex */
        public static abstract class a {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static abstract class AbstractC0120a {
                @NonNull
                public abstract AbstractC0120a a(@Nullable String str);

                @NonNull
                public abstract a a();

                @NonNull
                public abstract AbstractC0120a b(@Nullable String str);

                @NonNull
                public abstract AbstractC0120a c(@NonNull String str);

                @NonNull
                public abstract AbstractC0120a d(@NonNull String str);

                @NonNull
                public abstract AbstractC0120a e(@NonNull String str);

                @NonNull
                public abstract AbstractC0120a f(@NonNull String str);
            }

            /* loaded from: classes.dex */
            public static abstract class b {
                @NonNull
                public abstract String a();
            }

            @NonNull
            public static AbstractC0120a h() {
                return new g.b();
            }

            @Nullable
            public abstract String a();

            @Nullable
            public abstract String b();

            @Nullable
            public abstract String c();

            @NonNull
            public abstract String d();

            @Nullable
            public abstract String e();

            @Nullable
            public abstract b f();

            @NonNull
            public abstract String g();
        }

        /* loaded from: classes.dex */
        public static abstract class b {
            @NonNull
            public abstract b a(int i2);

            @NonNull
            public abstract b a(long j2);

            @NonNull
            public abstract b a(@NonNull a aVar);

            @NonNull
            public abstract b a(@NonNull c cVar);

            @NonNull
            public abstract b a(@NonNull e eVar);

            @NonNull
            public abstract b a(@NonNull f fVar);

            @NonNull
            public abstract b a(@NonNull v<AbstractC0121d> vVar);

            @NonNull
            public abstract b a(@NonNull Long l2);

            @NonNull
            public abstract b a(@NonNull String str);

            @NonNull
            public abstract b a(boolean z);

            @NonNull
            public b a(@NonNull byte[] bArr) {
                b(new String(bArr, CrashlyticsReport.f14746a));
                return this;
            }

            @NonNull
            public abstract d a();

            @NonNull
            public abstract b b(@NonNull String str);
        }

        /* loaded from: classes.dex */
        public static abstract class c {

            /* loaded from: classes.dex */
            public static abstract class a {
                @NonNull
                public abstract a a(int i2);

                @NonNull
                public abstract a a(long j2);

                @NonNull
                public abstract a a(@NonNull String str);

                @NonNull
                public abstract a a(boolean z);

                @NonNull
                public abstract c a();

                @NonNull
                public abstract a b(int i2);

                @NonNull
                public abstract a b(long j2);

                @NonNull
                public abstract a b(@NonNull String str);

                @NonNull
                public abstract a c(int i2);

                @NonNull
                public abstract a c(@NonNull String str);
            }

            @NonNull
            public static a j() {
                return new i.b();
            }

            @NonNull
            public abstract int a();

            public abstract int b();

            public abstract long c();

            @NonNull
            public abstract String d();

            @NonNull
            public abstract String e();

            @NonNull
            public abstract String f();

            public abstract long g();

            public abstract int h();

            public abstract boolean i();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static abstract class AbstractC0121d {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a */
            /* loaded from: classes.dex */
            public static abstract class a {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$a, reason: collision with other inner class name */
                /* loaded from: classes.dex */
                public static abstract class AbstractC0122a {
                    @NonNull
                    public abstract AbstractC0122a a(int i2);

                    @NonNull
                    public abstract AbstractC0122a a(@NonNull b bVar);

                    @NonNull
                    public abstract AbstractC0122a a(@NonNull v<b> vVar);

                    @NonNull
                    public abstract AbstractC0122a a(@Nullable Boolean bool);

                    @NonNull
                    public abstract a a();
                }

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b */
                /* loaded from: classes.dex */
                public static abstract class b {

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$a, reason: collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static abstract class AbstractC0123a {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$a$a, reason: collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static abstract class AbstractC0124a {
                            @NonNull
                            public abstract AbstractC0124a a(long j2);

                            @NonNull
                            public abstract AbstractC0124a a(@NonNull String str);

                            @NonNull
                            public AbstractC0124a a(@NonNull byte[] bArr) {
                                b(new String(bArr, CrashlyticsReport.f14746a));
                                return this;
                            }

                            @NonNull
                            public abstract AbstractC0123a a();

                            @NonNull
                            public abstract AbstractC0124a b(long j2);

                            @NonNull
                            public abstract AbstractC0124a b(@Nullable String str);
                        }

                        @NonNull
                        public static AbstractC0124a f() {
                            return new m.b();
                        }

                        @NonNull
                        public abstract long a();

                        @NonNull
                        public abstract String b();

                        public abstract long c();

                        @Nullable
                        @Encodable.Ignore
                        public abstract String d();

                        @Nullable
                        @Encodable.Field(name = "uuid")
                        public byte[] e() {
                            String d2 = d();
                            if (d2 != null) {
                                return d2.getBytes(CrashlyticsReport.f14746a);
                            }
                            return null;
                        }
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$b, reason: collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static abstract class AbstractC0125b {
                        @NonNull
                        public abstract AbstractC0125b a(@NonNull c cVar);

                        @NonNull
                        public abstract AbstractC0125b a(@NonNull AbstractC0127d abstractC0127d);

                        @NonNull
                        public abstract AbstractC0125b a(@NonNull v<AbstractC0123a> vVar);

                        @NonNull
                        public abstract b a();

                        @NonNull
                        public abstract AbstractC0125b b(@NonNull v<e> vVar);
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$c */
                    /* loaded from: classes.dex */
                    public static abstract class c {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$c$a, reason: collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static abstract class AbstractC0126a {
                            @NonNull
                            public abstract AbstractC0126a a(int i2);

                            @NonNull
                            public abstract AbstractC0126a a(@NonNull c cVar);

                            @NonNull
                            public abstract AbstractC0126a a(@NonNull v<e.AbstractC0130b> vVar);

                            @NonNull
                            public abstract AbstractC0126a a(@NonNull String str);

                            @NonNull
                            public abstract c a();

                            @NonNull
                            public abstract AbstractC0126a b(@NonNull String str);
                        }

                        @NonNull
                        public static AbstractC0126a f() {
                            return new n.b();
                        }

                        @Nullable
                        public abstract c a();

                        @NonNull
                        public abstract v<e.AbstractC0130b> b();

                        public abstract int c();

                        @Nullable
                        public abstract String d();

                        @NonNull
                        public abstract String e();
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$d, reason: collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static abstract class AbstractC0127d {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$d$a, reason: collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static abstract class AbstractC0128a {
                            @NonNull
                            public abstract AbstractC0128a a(long j2);

                            @NonNull
                            public abstract AbstractC0128a a(@NonNull String str);

                            @NonNull
                            public abstract AbstractC0127d a();

                            @NonNull
                            public abstract AbstractC0128a b(@NonNull String str);
                        }

                        @NonNull
                        public static AbstractC0128a d() {
                            return new o.b();
                        }

                        @NonNull
                        public abstract long a();

                        @NonNull
                        public abstract String b();

                        @NonNull
                        public abstract String c();
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e */
                    /* loaded from: classes.dex */
                    public static abstract class e {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$a, reason: collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static abstract class AbstractC0129a {
                            @NonNull
                            public abstract AbstractC0129a a(int i2);

                            @NonNull
                            public abstract AbstractC0129a a(@NonNull v<AbstractC0130b> vVar);

                            @NonNull
                            public abstract AbstractC0129a a(@NonNull String str);

                            @NonNull
                            public abstract e a();
                        }

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b, reason: collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static abstract class AbstractC0130b {

                            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a, reason: collision with other inner class name */
                            /* loaded from: classes.dex */
                            public static abstract class AbstractC0131a {
                                @NonNull
                                public abstract AbstractC0131a a(int i2);

                                @NonNull
                                public abstract AbstractC0131a a(long j2);

                                @NonNull
                                public abstract AbstractC0131a a(@NonNull String str);

                                @NonNull
                                public abstract AbstractC0130b a();

                                @NonNull
                                public abstract AbstractC0131a b(long j2);

                                @NonNull
                                public abstract AbstractC0131a b(@NonNull String str);
                            }

                            @NonNull
                            public static AbstractC0131a f() {
                                return new q.b();
                            }

                            @Nullable
                            public abstract String a();

                            public abstract int b();

                            public abstract long c();

                            public abstract long d();

                            @NonNull
                            public abstract String e();
                        }

                        @NonNull
                        public static AbstractC0129a d() {
                            return new p.b();
                        }

                        @NonNull
                        public abstract v<AbstractC0130b> a();

                        public abstract int b();

                        @NonNull
                        public abstract String c();
                    }

                    @NonNull
                    public static AbstractC0125b e() {
                        return new l.b();
                    }

                    @NonNull
                    public abstract v<AbstractC0123a> a();

                    @NonNull
                    public abstract c b();

                    @NonNull
                    public abstract AbstractC0127d c();

                    @NonNull
                    public abstract v<e> d();
                }

                @NonNull
                public static AbstractC0122a f() {
                    return new k.b();
                }

                @Nullable
                public abstract Boolean a();

                @Nullable
                public abstract v<b> b();

                @NonNull
                public abstract b c();

                public abstract int d();

                @NonNull
                public abstract AbstractC0122a e();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$b */
            /* loaded from: classes.dex */
            public static abstract class b {
                @NonNull
                public abstract b a(long j2);

                @NonNull
                public abstract b a(@NonNull a aVar);

                @NonNull
                public abstract b a(@NonNull c cVar);

                @NonNull
                public abstract b a(@NonNull AbstractC0132d abstractC0132d);

                @NonNull
                public abstract b a(@NonNull String str);

                @NonNull
                public abstract AbstractC0121d a();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$c */
            /* loaded from: classes.dex */
            public static abstract class c {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$c$a */
                /* loaded from: classes.dex */
                public static abstract class a {
                    @NonNull
                    public abstract a a(int i2);

                    @NonNull
                    public abstract a a(long j2);

                    @NonNull
                    public abstract a a(Double d2);

                    @NonNull
                    public abstract a a(boolean z);

                    @NonNull
                    public abstract c a();

                    @NonNull
                    public abstract a b(int i2);

                    @NonNull
                    public abstract a b(long j2);
                }

                @NonNull
                public static a g() {
                    return new r.b();
                }

                @Nullable
                public abstract Double a();

                public abstract int b();

                public abstract long c();

                public abstract int d();

                public abstract long e();

                public abstract boolean f();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$d, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static abstract class AbstractC0132d {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$d$a */
                /* loaded from: classes.dex */
                public static abstract class a {
                    @NonNull
                    public abstract a a(@NonNull String str);

                    @NonNull
                    public abstract AbstractC0132d a();
                }

                @NonNull
                public static a b() {
                    return new s.b();
                }

                @NonNull
                public abstract String a();
            }

            @NonNull
            public static b g() {
                return new j.b();
            }

            @NonNull
            public abstract a a();

            @NonNull
            public abstract c b();

            @Nullable
            public abstract AbstractC0132d c();

            public abstract long d();

            @NonNull
            public abstract String e();

            @NonNull
            public abstract b f();
        }

        /* loaded from: classes.dex */
        public static abstract class e {

            /* loaded from: classes.dex */
            public static abstract class a {
                @NonNull
                public abstract a a(int i2);

                @NonNull
                public abstract a a(@NonNull String str);

                @NonNull
                public abstract a a(boolean z);

                @NonNull
                public abstract e a();

                @NonNull
                public abstract a b(@NonNull String str);
            }

            @NonNull
            public static a e() {
                return new t.b();
            }

            @NonNull
            public abstract String a();

            public abstract int b();

            @NonNull
            public abstract String c();

            public abstract boolean d();
        }

        /* loaded from: classes.dex */
        public static abstract class f {

            /* loaded from: classes.dex */
            public static abstract class a {
                @NonNull
                public abstract a a(@NonNull String str);

                @NonNull
                public abstract f a();
            }

            @NonNull
            public static a b() {
                return new u.b();
            }

            @NonNull
            public abstract String a();
        }

        @NonNull
        public static b n() {
            f.b bVar = new f.b();
            bVar.a(false);
            return bVar;
        }

        @NonNull
        public abstract a a();

        @NonNull
        d a(@NonNull v<AbstractC0121d> vVar) {
            b m = m();
            m.a(vVar);
            return m.a();
        }

        @Nullable
        public abstract c b();

        @Nullable
        public abstract Long c();

        @Nullable
        public abstract v<AbstractC0121d> d();

        @NonNull
        public abstract String e();

        public abstract int f();

        @NonNull
        @Encodable.Ignore
        public abstract String g();

        @NonNull
        @Encodable.Field(name = "identifier")
        public byte[] h() {
            return g().getBytes(CrashlyticsReport.f14746a);
        }

        @Nullable
        public abstract e i();

        public abstract long j();

        @Nullable
        public abstract f k();

        public abstract boolean l();

        @NonNull
        public abstract b m();

        @NonNull
        d a(long j2, boolean z, @Nullable String str) {
            b m = m();
            m.a(Long.valueOf(j2));
            m.a(z);
            if (str != null) {
                f.a b2 = f.b();
                b2.a(str);
                m.a(b2.a());
                m.a();
            }
            return m.a();
        }
    }

    /* loaded from: classes.dex */
    public enum e {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    @NonNull
    public static a l() {
        return new b.C0134b();
    }

    @NonNull
    public CrashlyticsReport a(@NonNull v<d.AbstractC0121d> vVar) {
        if (h() != null) {
            a j2 = j();
            j2.a(h().a(vVar));
            return j2.a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    @NonNull
    public abstract String a();

    @NonNull
    public abstract String b();

    @NonNull
    public abstract String c();

    @NonNull
    public abstract String d();

    @Nullable
    public abstract c e();

    public abstract int f();

    @NonNull
    public abstract String g();

    @Nullable
    public abstract d h();

    @Encodable.Ignore
    public e i() {
        if (h() != null) {
            return e.JAVA;
        }
        if (e() != null) {
            return e.NATIVE;
        }
        return e.INCOMPLETE;
    }

    @NonNull
    protected abstract a j();

    @NonNull
    public CrashlyticsReport a(@NonNull c cVar) {
        a j2 = j();
        j2.a((d) null);
        j2.a(cVar);
        return j2.a();
    }

    @NonNull
    public CrashlyticsReport a(long j2, boolean z, @Nullable String str) {
        a j3 = j();
        if (h() != null) {
            j3.a(h().a(j2, z, str));
        }
        return j3.a();
    }
}
