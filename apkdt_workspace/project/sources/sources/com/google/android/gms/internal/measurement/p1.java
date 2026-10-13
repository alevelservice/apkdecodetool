package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class p1<T> {

    /* renamed from: g */
    @SuppressLint({"StaticFieldLeak"})
    private static Context f12035g;

    /* renamed from: a */
    private final w1 f12037a;

    /* renamed from: b */
    private final String f12038b;

    /* renamed from: c */
    private final T f12039c;

    /* renamed from: d */
    private volatile int f12040d;

    /* renamed from: e */
    private volatile T f12041e;

    /* renamed from: f */
    private static final Object f12034f = new Object();

    /* renamed from: h */
    private static final AtomicInteger f12036h = new AtomicInteger();

    private p1(w1 w1Var, String str, T t) {
        Uri uri;
        this.f12040d = -1;
        uri = w1Var.f12163a;
        if (uri != null) {
            this.f12037a = w1Var;
            this.f12038b = str;
            this.f12039c = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void a(Context context) {
        synchronized (f12034f) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f12035g != context) {
                synchronized (d1.class) {
                    d1.f11810f.clear();
                }
                synchronized (v1.class) {
                    v1.f12141f.clear();
                }
                synchronized (m1.class) {
                    m1.f11965b = null;
                }
                f12036h.incrementAndGet();
                f12035g = context;
            }
        }
    }

    public static void c() {
        f12036h.incrementAndGet();
    }

    @Nullable
    private final T d() {
        Uri uri;
        h1 a2;
        Object a3;
        Uri uri2;
        Uri uri3;
        String str = (String) m1.a(f12035g).a("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (!(str != null && c1.f11789c.matcher(str).matches())) {
            uri = this.f12037a.f12163a;
            if (uri != null) {
                Context context = f12035g;
                uri2 = this.f12037a.f12163a;
                if (n1.a(context, uri2)) {
                    ContentResolver contentResolver = f12035g.getContentResolver();
                    uri3 = this.f12037a.f12163a;
                    a2 = d1.a(contentResolver, uri3);
                } else {
                    a2 = null;
                }
            } else {
                a2 = v1.a(f12035g, (String) null);
            }
            if (a2 != null && (a3 = a2.a(b())) != null) {
                return a(a3);
            }
        } else if (Log.isLoggable("PhenotypeFlag", 3)) {
            String valueOf = String.valueOf(b());
            if (valueOf.length() != 0) {
                "Bypass reading Phenotype values for flag: ".concat(valueOf);
            } else {
                new String("Bypass reading Phenotype values for flag: ");
            }
        }
        return null;
    }

    @Nullable
    private final T e() {
        String str;
        m1 a2 = m1.a(f12035g);
        str = this.f12037a.f12164b;
        Object a3 = a2.a(a(str));
        if (a3 != null) {
            return a(a3);
        }
        return null;
    }

    abstract T a(Object obj);

    public final String b() {
        String str;
        str = this.f12037a.f12165c;
        return a(str);
    }

    public /* synthetic */ p1(w1 w1Var, String str, Object obj, s1 s1Var) {
        this(w1Var, str, obj);
    }

    private final String a(String str) {
        if (str != null && str.isEmpty()) {
            return this.f12038b;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f12038b);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final T a() {
        int i2 = f12036h.get();
        if (this.f12040d < i2) {
            synchronized (this) {
                if (this.f12040d < i2) {
                    if (f12035g != null) {
                        T d2 = d();
                        if (d2 == null && (d2 = e()) == null) {
                            d2 = this.f12039c;
                        }
                        this.f12041e = d2;
                        this.f12040d = i2;
                    } else {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                }
            }
        }
        return this.f12041e;
    }

    public static p1<Long> a(w1 w1Var, String str, long j2) {
        return new s1(w1Var, str, Long.valueOf(j2));
    }

    public static p1<Boolean> a(w1 w1Var, String str, boolean z) {
        return new r1(w1Var, str, Boolean.valueOf(z));
    }

    public static p1<Double> a(w1 w1Var, String str, double d2) {
        return new u1(w1Var, str, Double.valueOf(d2));
    }

    public static p1<String> a(w1 w1Var, String str, String str2) {
        return new t1(w1Var, str, str2);
    }
}
