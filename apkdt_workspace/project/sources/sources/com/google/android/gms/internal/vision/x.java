package com.google.android.gms.internal.vision;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class x<T> {

    /* renamed from: g, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static Context f12572g;

    /* renamed from: h, reason: collision with root package name */
    private static k0<g0<t>> f12573h;

    /* renamed from: a, reason: collision with root package name */
    private final b0 f12575a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12576b;

    /* renamed from: c, reason: collision with root package name */
    private final T f12577c;

    /* renamed from: d, reason: collision with root package name */
    private volatile int f12578d;

    /* renamed from: e, reason: collision with root package name */
    private volatile T f12579e;

    /* renamed from: f, reason: collision with root package name */
    private static final Object f12571f = new Object();

    /* renamed from: i, reason: collision with root package name */
    private static final AtomicInteger f12574i = new AtomicInteger();

    private x(b0 b0Var, String str, T t) {
        this.f12578d = -1;
        if (b0Var.f12297a == null && b0Var.f12298b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (b0Var.f12297a != null && b0Var.f12298b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.f12575a = b0Var;
        this.f12576b = str;
        this.f12577c = t;
    }

    public static void a(Context context) {
        synchronized (f12571f) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f12572g != context) {
                j.e();
                a0.a();
                o.a();
                f12574i.incrementAndGet();
                f12572g = context;
                f12573h = n0.a(w.f12562e);
            }
        }
    }

    public static void b(Context context) {
        synchronized (f12571f) {
            if (f12572g == null) {
                a(context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        f12574i.incrementAndGet();
    }

    @Nullable
    private final T d() {
        n a2;
        Object zzb;
        boolean z = false;
        if (!this.f12575a.f12303g) {
            String str = (String) o.a(f12572g).zzb("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
            if (str != null && e.f12333c.matcher(str).matches()) {
                z = true;
            }
        }
        if (!z) {
            b0 b0Var = this.f12575a;
            Uri uri = b0Var.f12298b;
            if (uri != null) {
                if (!v.a(f12572g, uri)) {
                    a2 = null;
                } else if (this.f12575a.f12304h) {
                    ContentResolver contentResolver = f12572g.getContentResolver();
                    String lastPathSegment = this.f12575a.f12298b.getLastPathSegment();
                    String packageName = f12572g.getPackageName();
                    StringBuilder sb = new StringBuilder(String.valueOf(lastPathSegment).length() + 1 + String.valueOf(packageName).length());
                    sb.append(lastPathSegment);
                    sb.append(MetaRecord.LOG_SEPARATOR);
                    sb.append(packageName);
                    a2 = j.a(contentResolver, u.a(sb.toString()));
                } else {
                    a2 = j.a(f12572g.getContentResolver(), this.f12575a.f12298b);
                }
            } else {
                a2 = a0.a(f12572g, b0Var.f12297a);
            }
            if (a2 != null && (zzb = a2.zzb(b())) != null) {
                return a(zzb);
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
        e0<Context, Boolean> e0Var;
        b0 b0Var = this.f12575a;
        if (!b0Var.f12301e && ((e0Var = b0Var.f12305i) == null || e0Var.apply(f12572g).booleanValue())) {
            o a2 = o.a(f12572g);
            b0 b0Var2 = this.f12575a;
            Object zzb = a2.zzb(b0Var2.f12301e ? null : a(b0Var2.f12299c));
            if (zzb != null) {
                return a(zzb);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g0 f() {
        new s();
        return s.a(f12572g);
    }

    abstract T a(Object obj);

    public final String b() {
        return a(this.f12575a.f12300d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(b0 b0Var, String str, Object obj, z zVar) {
        this(b0Var, str, obj);
    }

    private final String a(String str) {
        if (str != null && str.isEmpty()) {
            return this.f12576b;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f12576b);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final T a() {
        T d2;
        int i2 = f12574i.get();
        if (this.f12578d < i2) {
            synchronized (this) {
                if (this.f12578d < i2) {
                    if (f12572g != null) {
                        g0<t> g0Var = f12573h.get();
                        if (g0Var.isPresent()) {
                            String a2 = g0Var.get().a(this.f12575a.f12298b, this.f12575a.f12297a, this.f12575a.f12300d, this.f12576b);
                            if (a2 != null) {
                                d2 = a((Object) a2);
                                this.f12579e = d2;
                                this.f12578d = i2;
                            }
                            d2 = this.f12577c;
                            this.f12579e = d2;
                            this.f12578d = i2;
                        } else if (this.f12575a.f12302f) {
                            d2 = this.f12577c;
                            this.f12579e = d2;
                            this.f12578d = i2;
                        } else {
                            d2 = this.f12577c;
                            this.f12579e = d2;
                            this.f12578d = i2;
                        }
                    } else {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                }
            }
        }
        return this.f12579e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x<Boolean> a(b0 b0Var, String str, boolean z) {
        return new y(b0Var, str, Boolean.valueOf(z));
    }
}
