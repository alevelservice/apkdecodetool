package k.b.a;

import java.io.DataOutput;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

/* compiled from: ZoneId.java */
/* loaded from: classes2.dex */
public abstract class q implements Serializable {
    public static final k.b.a.x.k<q> FROM = new a();
    public static final Map<String, String> SHORT_IDS;
    private static final long serialVersionUID = 8352817235686L;

    /* compiled from: ZoneId.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<q> {
        a() {
        }

        @Override // k.b.a.x.k
        public q a(k.b.a.x.e eVar) {
            return q.from(eVar);
        }
    }

    /* compiled from: ZoneId.java */
    /* loaded from: classes2.dex */
    class b extends k.b.a.w.c {
        b() {
        }

        @Override // k.b.a.x.e
        public long getLong(k.b.a.x.i iVar) {
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }

        @Override // k.b.a.x.e
        public boolean isSupported(k.b.a.x.i iVar) {
            return false;
        }

        @Override // k.b.a.w.c, k.b.a.x.e
        public <R> R query(k.b.a.x.k<R> kVar) {
            if (kVar == k.b.a.x.j.g()) {
                return (R) q.this;
            }
            return (R) super.query(kVar);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("ACT", "Australia/Darwin");
        hashMap.put("AET", "Australia/Sydney");
        hashMap.put("AGT", "America/Argentina/Buenos_Aires");
        hashMap.put("ART", "Africa/Cairo");
        hashMap.put("AST", "America/Anchorage");
        hashMap.put("BET", "America/Sao_Paulo");
        hashMap.put("BST", "Asia/Dhaka");
        hashMap.put("CAT", "Africa/Harare");
        hashMap.put("CNT", "America/St_Johns");
        hashMap.put("CST", "America/Chicago");
        hashMap.put("CTT", "Asia/Shanghai");
        hashMap.put("EAT", "Africa/Addis_Ababa");
        hashMap.put("ECT", "Europe/Paris");
        hashMap.put("IET", "America/Indiana/Indianapolis");
        hashMap.put("IST", "Asia/Kolkata");
        hashMap.put("JST", "Asia/Tokyo");
        hashMap.put("MIT", "Pacific/Apia");
        hashMap.put("NET", "Asia/Yerevan");
        hashMap.put("NST", "Pacific/Auckland");
        hashMap.put("PLT", "Asia/Karachi");
        hashMap.put("PNT", "America/Phoenix");
        hashMap.put("PRT", "America/Puerto_Rico");
        hashMap.put("PST", "America/Los_Angeles");
        hashMap.put("SST", "Pacific/Guadalcanal");
        hashMap.put("VST", "Asia/Ho_Chi_Minh");
        hashMap.put("EST", "-05:00");
        hashMap.put("MST", "-07:00");
        hashMap.put("HST", "-10:00");
        SHORT_IDS = Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q() {
        if (getClass() != r.class && getClass() != s.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static q from(k.b.a.x.e eVar) {
        q qVar = (q) eVar.query(k.b.a.x.j.f());
        if (qVar != null) {
            return qVar;
        }
        throw new k.b.a.b("Unable to obtain ZoneId from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    public static Set<String> getAvailableZoneIds() {
        return new HashSet(k.b.a.y.i.b());
    }

    public static q of(String str, Map<String, String> map) {
        k.b.a.w.d.a(str, "zoneId");
        k.b.a.w.d.a(map, "aliasMap");
        String str2 = map.get(str);
        if (str2 != null) {
            str = str2;
        }
        return of(str);
    }

    public static q ofOffset(String str, r rVar) {
        k.b.a.w.d.a(str, "prefix");
        k.b.a.w.d.a(rVar, "offset");
        if (str.length() == 0) {
            return rVar;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("Invalid prefix, must be GMT, UTC or UT: " + str);
        }
        if (rVar.getTotalSeconds() == 0) {
            return new s(str, rVar.getRules());
        }
        return new s(str + rVar.getId(), rVar.getRules());
    }

    public static q systemDefault() {
        return of(TimeZone.getDefault().getID(), SHORT_IDS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            return getId().equals(((q) obj).getId());
        }
        return false;
    }

    public String getDisplayName(k.b.a.v.l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.b(lVar);
        return cVar.a(locale).a(new b());
    }

    public abstract String getId();

    public abstract k.b.a.y.f getRules();

    public int hashCode() {
        return getId().hashCode();
    }

    public q normalized() {
        try {
            k.b.a.y.f rules = getRules();
            if (rules.isFixedOffset()) {
                return rules.getOffset(e.EPOCH);
            }
        } catch (k.b.a.y.g unused) {
        }
        return this;
    }

    public String toString() {
        return getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void write(DataOutput dataOutput);

    public static q of(String str) {
        k.b.a.w.d.a(str, "zoneId");
        if (str.equals("Z")) {
            return r.UTC;
        }
        if (str.length() != 1) {
            if (!str.startsWith("+") && !str.startsWith("-")) {
                if (!str.equals("UTC") && !str.equals("GMT") && !str.equals("UT")) {
                    if (!str.startsWith("UTC+") && !str.startsWith("GMT+") && !str.startsWith("UTC-") && !str.startsWith("GMT-")) {
                        if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                            return s.ofId(str, true);
                        }
                        r of = r.of(str.substring(2));
                        if (of.getTotalSeconds() == 0) {
                            return new s("UT", of.getRules());
                        }
                        return new s("UT" + of.getId(), of.getRules());
                    }
                    r of2 = r.of(str.substring(3));
                    if (of2.getTotalSeconds() == 0) {
                        return new s(str.substring(0, 3), of2.getRules());
                    }
                    return new s(str.substring(0, 3) + of2.getId(), of2.getRules());
                }
                return new s(str, r.UTC.getRules());
            }
            return r.of(str);
        }
        throw new k.b.a.b("Invalid zone: " + str);
    }
}
