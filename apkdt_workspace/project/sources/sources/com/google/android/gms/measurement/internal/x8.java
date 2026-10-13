package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.d0;
import com.google.android.gms.internal.measurement.m0;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x8 extends h8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public x8(g8 g8Var) {
        super(g8Var);
    }

    private static void b(Map<Integer, List<Long>> map, int i2, long j2) {
        List<Long> list = map.get(Integer.valueOf(i2));
        if (list == null) {
            list = new ArrayList<>();
            map.put(Integer.valueOf(i2), list);
        }
        list.add(Long.valueOf(j2 / 1000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x04af  */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v40, types: [java.util.List] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.l0> a(java.lang.String r72, java.util.List<com.google.android.gms.internal.measurement.n0> r73, java.util.List<com.google.android.gms.internal.measurement.v0> r74) {
        /*
            Method dump skipped, instructions count: 4072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.x8.a(java.lang.String, java.util.List, java.util.List):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.h8
    protected final boolean r() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Boolean a(com.google.android.gms.internal.measurement.z zVar, String str, List<com.google.android.gms.internal.measurement.p0> list, long j2) {
        Boolean a2;
        if (zVar.u()) {
            Boolean a3 = a(j2, zVar.v());
            if (a3 == null) {
                return null;
            }
            if (!a3.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (com.google.android.gms.internal.measurement.a0 a0Var : zVar.s()) {
            if (a0Var.v().isEmpty()) {
                zzab().t().a("null or empty param name in filter. event", i().a(str));
                return null;
            }
            hashSet.add(a0Var.v());
        }
        a.e.a aVar = new a.e.a();
        for (com.google.android.gms.internal.measurement.p0 p0Var : list) {
            if (hashSet.contains(p0Var.n())) {
                if (p0Var.q()) {
                    aVar.put(p0Var.n(), p0Var.q() ? Long.valueOf(p0Var.s()) : null);
                } else if (p0Var.u()) {
                    aVar.put(p0Var.n(), p0Var.u() ? Double.valueOf(p0Var.v()) : null);
                } else if (p0Var.o()) {
                    aVar.put(p0Var.n(), p0Var.p());
                } else {
                    zzab().t().a("Unknown value for param. event, param", i().a(str), i().b(p0Var.n()));
                    return null;
                }
            }
        }
        Iterator<com.google.android.gms.internal.measurement.a0> it = zVar.s().iterator();
        while (true) {
            if (it.hasNext()) {
                com.google.android.gms.internal.measurement.a0 next = it.next();
                boolean z = next.s() && next.u();
                String v = next.v();
                if (v.isEmpty()) {
                    zzab().t().a("Event has empty param name. event", i().a(str));
                    return null;
                }
                V v2 = aVar.get(v);
                if (v2 instanceof Long) {
                    if (!next.p()) {
                        zzab().t().a("No number filter for long param. event, param", i().a(str), i().b(v));
                        return null;
                    }
                    Boolean a4 = a(((Long) v2).longValue(), next.q());
                    if (a4 == null) {
                        return null;
                    }
                    if (a4.booleanValue() == z) {
                        return false;
                    }
                } else if (v2 instanceof Double) {
                    if (!next.p()) {
                        zzab().t().a("No number filter for double param. event, param", i().a(str), i().b(v));
                        return null;
                    }
                    Boolean a5 = a(((Double) v2).doubleValue(), next.q());
                    if (a5 == null) {
                        return null;
                    }
                    if (a5.booleanValue() == z) {
                        return false;
                    }
                } else {
                    if (!(v2 instanceof String)) {
                        if (v2 == 0) {
                            zzab().y().a("Missing param for filter. event, param", i().a(str), i().b(v));
                            return false;
                        }
                        zzab().t().a("Unknown param type. event, param", i().a(str), i().b(v));
                        return null;
                    }
                    if (next.n()) {
                        a2 = a((String) v2, next.o());
                    } else if (next.p()) {
                        String str2 = (String) v2;
                        if (n8.a(str2)) {
                            a2 = a(str2, next.q());
                        } else {
                            zzab().t().a("Invalid param value for number filter. event, param", i().a(str), i().b(v));
                            return null;
                        }
                    } else {
                        zzab().t().a("No filter for String param. event, param", i().a(str), i().b(v));
                        return null;
                    }
                    if (a2 == null) {
                        return null;
                    }
                    if (a2.booleanValue() == z) {
                        return false;
                    }
                }
            } else {
                return true;
            }
        }
    }

    private final Boolean a(com.google.android.gms.internal.measurement.c0 c0Var, com.google.android.gms.internal.measurement.v0 v0Var) {
        com.google.android.gms.internal.measurement.a0 w = c0Var.w();
        boolean u = w.u();
        if (v0Var.q()) {
            if (!w.p()) {
                zzab().t().a("No number filter for long property. property", i().c(v0Var.n()));
                return null;
            }
            return a(a(v0Var.s(), w.q()), u);
        }
        if (v0Var.u()) {
            if (!w.p()) {
                zzab().t().a("No number filter for double property. property", i().c(v0Var.n()));
                return null;
            }
            return a(a(v0Var.v(), w.q()), u);
        }
        if (v0Var.o()) {
            if (!w.n()) {
                if (!w.p()) {
                    zzab().t().a("No string or number filter defined. property", i().c(v0Var.n()));
                } else {
                    if (n8.a(v0Var.p())) {
                        return a(a(v0Var.p(), w.q()), u);
                    }
                    zzab().t().a("Invalid user property value for Numeric number filter. property, value", i().c(v0Var.n()), v0Var.p());
                }
                return null;
            }
            return a(a(v0Var.p(), w.o()), u);
        }
        zzab().t().a("User property has no value, property", i().c(v0Var.n()));
        return null;
    }

    @VisibleForTesting
    private static Boolean a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    @VisibleForTesting
    private final Boolean a(String str, com.google.android.gms.internal.measurement.d0 d0Var) {
        String q;
        List<String> list;
        com.google.android.gms.common.internal.m.a(d0Var);
        if (str == null || !d0Var.n() || d0Var.o() == d0.a.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (d0Var.o() == d0.a.IN_LIST) {
            if (d0Var.w() == 0) {
                return null;
            }
        } else if (!d0Var.p()) {
            return null;
        }
        d0.a o = d0Var.o();
        boolean u = d0Var.u();
        if (!u && o != d0.a.REGEXP && o != d0.a.IN_LIST) {
            q = d0Var.q().toUpperCase(Locale.ENGLISH);
        } else {
            q = d0Var.q();
        }
        String str2 = q;
        if (d0Var.w() == 0) {
            list = null;
        } else {
            List<String> v = d0Var.v();
            if (!u) {
                ArrayList arrayList = new ArrayList(v.size());
                Iterator<String> it = v.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                v = Collections.unmodifiableList(arrayList);
            }
            list = v;
        }
        return a(str, o, u, str2, list, o == d0.a.REGEXP ? str2 : null);
    }

    private final Boolean a(String str, d0.a aVar, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (aVar == d0.a.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && aVar != d0.a.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (w8.f13311a[aVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    zzab().t().a("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    private final Boolean a(long j2, com.google.android.gms.internal.measurement.b0 b0Var) {
        try {
            return a(new BigDecimal(j2), b0Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean a(double d2, com.google.android.gms.internal.measurement.b0 b0Var) {
        try {
            return a(new BigDecimal(d2), b0Var, Math.ulp(d2));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean a(String str, com.google.android.gms.internal.measurement.b0 b0Var) {
        if (!n8.a(str)) {
            return null;
        }
        try {
            return a(new BigDecimal(str), b0Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0085, code lost:
    
        if (r2 != null) goto L38;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean a(java.math.BigDecimal r9, com.google.android.gms.internal.measurement.b0 r10, double r11) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.x8.a(java.math.BigDecimal, com.google.android.gms.internal.measurement.b0, double):java.lang.Boolean");
    }

    private static List<com.google.android.gms.internal.measurement.m0> a(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Integer> it = map.keySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            m0.a s = com.google.android.gms.internal.measurement.m0.s();
            s.a(intValue);
            s.a(map.get(Integer.valueOf(intValue)).longValue());
            arrayList.add((com.google.android.gms.internal.measurement.m0) s.t());
        }
        return arrayList;
    }

    private static void a(Map<Integer, Long> map, int i2, long j2) {
        Long l2 = map.get(Integer.valueOf(i2));
        long j3 = j2 / 1000;
        if (l2 == null || j3 > l2.longValue()) {
            map.put(Integer.valueOf(i2), Long.valueOf(j3));
        }
    }
}
