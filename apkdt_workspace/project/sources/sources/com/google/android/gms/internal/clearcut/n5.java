package com.google.android.gms.internal.clearcut;

import android.content.Context;
import com.google.android.gms.clearcut.a;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.clearcut.e5;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class n5 implements a.b {

    /* renamed from: b, reason: collision with root package name */
    private static final Charset f11506b = Charset.forName("UTF-8");

    /* renamed from: c, reason: collision with root package name */
    private static final o f11507c = new o(com.google.android.gms.phenotype.a.a("com.google.android.gms.clearcut.public")).a("gms:playlog:service:samplingrules_").b("LogSamplingRules__");

    /* renamed from: d, reason: collision with root package name */
    private static final o f11508d = new o(com.google.android.gms.phenotype.a.a("com.google.android.gms.clearcut.public")).a("gms:playlog:service:sampling_").b("LogSampling__");

    /* renamed from: e, reason: collision with root package name */
    private static final ConcurrentHashMap<String, e<e5>> f11509e = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private static final HashMap<String, e<String>> f11510f = new HashMap<>();

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private static Boolean f11511g = null;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    private static Long f11512h = null;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    private static final e<Boolean> f11513i = f11507c.a("enable_log_sampling_rules", false);

    /* renamed from: a, reason: collision with root package name */
    private final Context f11514a;

    public n5(Context context) {
        this.f11514a = context;
        Context context2 = this.f11514a;
        if (context2 != null) {
            e.a(context2);
        }
    }

    @VisibleForTesting
    private static long a(String str, long j2) {
        if (str == null || str.isEmpty()) {
            return m5.a(ByteBuffer.allocate(8).putLong(j2).array());
        }
        byte[] bytes = str.getBytes(f11506b);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
        allocate.put(bytes);
        allocate.putLong(j2);
        return m5.a(allocate.array());
    }

    @VisibleForTesting
    private static e5.b a(String str) {
        String str2;
        int i2;
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i2 = indexOf + 1;
        } else {
            str2 = "";
            i2 = 0;
        }
        int indexOf2 = str.indexOf(47, i2);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Failed to parse the rule: ".concat(valueOf);
            } else {
                new String("Failed to parse the rule: ");
            }
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i2, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                e5.b.a n = e5.b.n();
                n.a(str2);
                n.a(parseLong);
                n.b(parseLong2);
                return n.h();
            }
            StringBuilder sb = new StringBuilder(72);
            sb.append("negative values not supported: ");
            sb.append(parseLong);
            sb.append("/");
            sb.append(parseLong2);
            sb.toString();
            return null;
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            if (valueOf2.length() != 0) {
                "parseLong() failed while parsing: ".concat(valueOf2);
            } else {
                new String("parseLong() failed while parsing: ");
            }
            return null;
        }
    }

    @VisibleForTesting
    private static boolean a(long j2, long j3, long j4) {
        if (j3 < 0 || j4 <= 0) {
            return true;
        }
        return ((j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) >= 0 ? j2 % j4 : (((Long.MAX_VALUE % j4) + 1) + ((j2 & Long.MAX_VALUE) % j4)) % j4) < j3;
    }

    private static boolean a(Context context) {
        if (f11511g == null) {
            f11511g = Boolean.valueOf(com.google.android.gms.common.o.c.a(context).a("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f11511g.booleanValue();
    }

    @VisibleForTesting
    private static long b(Context context) {
        if (f11512h == null) {
            if (context == null) {
                return 0L;
            }
            f11512h = Long.valueOf(a(context) ? q5.a(context.getContentResolver(), "android_id", 0L) : 0L);
        }
        return f11512h.longValue();
    }

    @Override // com.google.android.gms.clearcut.a.b
    public final boolean a(zze zzeVar) {
        List<e5.b> h2;
        e<e5> putIfAbsent;
        zzr zzrVar = zzeVar.f4905e;
        String str = zzrVar.f11674k;
        int i2 = zzrVar.f11670g;
        j5 j5Var = zzeVar.m;
        int i3 = j5Var != null ? j5Var.f11451j : 0;
        String str2 = null;
        if (!f11513i.a().booleanValue()) {
            if (str == null || str.isEmpty()) {
                str = i2 >= 0 ? String.valueOf(i2) : null;
            }
            if (str == null) {
                return true;
            }
            Context context = this.f11514a;
            if (context != null && a(context)) {
                e<String> eVar = f11510f.get(str);
                if (eVar == null) {
                    eVar = f11508d.a(str, (String) null);
                    f11510f.put(str, eVar);
                }
                str2 = eVar.a();
            }
            e5.b a2 = a(str2);
            if (a2 != null) {
                return a(a(a2.j(), b(this.f11514a)), a2.k(), a2.l());
            }
            return true;
        }
        if (str == null || str.isEmpty()) {
            str = i2 >= 0 ? String.valueOf(i2) : null;
        }
        if (str == null) {
            return true;
        }
        if (this.f11514a == null) {
            h2 = Collections.emptyList();
        } else {
            e<e5> eVar2 = f11509e.get(str);
            if (eVar2 == null && (putIfAbsent = f11509e.putIfAbsent(str, (eVar2 = f11507c.a(str, e5.i(), o5.f11524a)))) != null) {
                eVar2 = putIfAbsent;
            }
            h2 = eVar2.a().h();
        }
        for (e5.b bVar : h2) {
            if (!bVar.i() || bVar.h() == 0 || bVar.h() == i3) {
                if (!a(a(bVar.j(), b(this.f11514a)), bVar.k(), bVar.l())) {
                    return false;
                }
            }
        }
        return true;
    }
}
