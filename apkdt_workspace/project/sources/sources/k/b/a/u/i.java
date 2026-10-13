package k.b.a.u;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Chronology.java */
/* loaded from: classes2.dex */
public abstract class i implements Comparable<i> {
    public static final k.b.a.x.k<i> FROM = new a();

    /* renamed from: e, reason: collision with root package name */
    private static final ConcurrentHashMap<String, i> f19730e = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private static final ConcurrentHashMap<String, i> f19731f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private static final Method f19732g;

    /* compiled from: Chronology.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<i> {
        a() {
        }

        @Override // k.b.a.x.k
        public i a(k.b.a.x.e eVar) {
            return i.from(eVar);
        }
    }

    /* compiled from: Chronology.java */
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
            if (kVar == k.b.a.x.j.a()) {
                return (R) i.this;
            }
            return (R) super.query(kVar);
        }
    }

    static {
        Method method;
        try {
            method = Locale.class.getMethod("getUnicodeLocaleType", String.class);
        } catch (Throwable unused) {
            method = null;
        }
        f19732g = method;
    }

    private static void a() {
        if (f19730e.isEmpty()) {
            a(n.INSTANCE);
            a(w.INSTANCE);
            a(s.INSTANCE);
            a(p.INSTANCE);
            a(k.INSTANCE);
            f19730e.putIfAbsent("Hijrah", k.INSTANCE);
            f19731f.putIfAbsent("islamic", k.INSTANCE);
            Iterator it = ServiceLoader.load(i.class, i.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                f19730e.putIfAbsent(iVar.getId(), iVar);
                String calendarType = iVar.getCalendarType();
                if (calendarType != null) {
                    f19731f.putIfAbsent(calendarType, iVar);
                }
            }
        }
    }

    public static i from(k.b.a.x.e eVar) {
        k.b.a.w.d.a(eVar, "temporal");
        i iVar = (i) eVar.query(k.b.a.x.j.a());
        return iVar != null ? iVar : n.INSTANCE;
    }

    public static Set<i> getAvailableChronologies() {
        a();
        return new HashSet(f19730e.values());
    }

    public static i of(String str) {
        a();
        i iVar = f19730e.get(str);
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = f19731f.get(str);
        if (iVar2 != null) {
            return iVar2;
        }
        throw new k.b.a.b("Unknown chronology: " + str);
    }

    public static i ofLocale(Locale locale) {
        String str;
        a();
        k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
        Method method = f19732g;
        if (method != null) {
            try {
                str = (String) method.invoke(locale, "ca");
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        } else {
            if (locale.equals(p.LOCALE)) {
                str = "japanese";
            }
            str = "iso";
        }
        if (str != null && !"iso".equals(str) && !"iso8601".equals(str)) {
            i iVar = f19731f.get(str);
            if (iVar != null) {
                return iVar;
            }
            throw new k.b.a.b("Unknown calendar system: " + str);
        }
        return n.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i readExternal(DataInput dataInput) {
        return of(dataInput.readUTF());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new v((byte) 11, this);
    }

    public abstract k.b.a.u.b date(int i2, int i3, int i4);

    public k.b.a.u.b date(j jVar, int i2, int i3, int i4) {
        return date(prolepticYear(jVar, i2), i3, i4);
    }

    public abstract k.b.a.u.b date(k.b.a.x.e eVar);

    public abstract k.b.a.u.b dateEpochDay(long j2);

    public k.b.a.u.b dateNow() {
        return dateNow(k.b.a.a.systemDefaultZone());
    }

    public abstract k.b.a.u.b dateYearDay(int i2, int i3);

    public k.b.a.u.b dateYearDay(j jVar, int i2, int i3) {
        return dateYearDay(prolepticYear(jVar, i2), i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends k.b.a.u.b> D ensureChronoLocalDate(k.b.a.x.d dVar) {
        D d2 = (D) dVar;
        if (equals(d2.getChronology())) {
            return d2;
        }
        throw new ClassCastException("Chrono mismatch, expected: " + getId() + ", actual: " + d2.getChronology().getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends k.b.a.u.b> d<D> ensureChronoLocalDateTime(k.b.a.x.d dVar) {
        d<D> dVar2 = (d) dVar;
        if (equals(dVar2.toLocalDate().getChronology())) {
            return dVar2;
        }
        throw new ClassCastException("Chrono mismatch, required: " + getId() + ", supplied: " + dVar2.toLocalDate().getChronology().getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends k.b.a.u.b> h<D> ensureChronoZonedDateTime(k.b.a.x.d dVar) {
        h<D> hVar = (h) dVar;
        if (equals(hVar.toLocalDate().getChronology())) {
            return hVar;
        }
        throw new ClassCastException("Chrono mismatch, required: " + getId() + ", supplied: " + hVar.toLocalDate().getChronology().getId());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && compareTo((i) obj) == 0;
    }

    public abstract j eraOf(int i2);

    public abstract List<j> eras();

    public abstract String getCalendarType();

    public String getDisplayName(k.b.a.v.l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(lVar);
        return cVar.a(locale).a(new b());
    }

    public abstract String getId();

    public int hashCode() {
        return getClass().hashCode() ^ getId().hashCode();
    }

    public abstract boolean isLeapYear(long j2);

    public c<?> localDateTime(k.b.a.x.e eVar) {
        try {
            return date(eVar).atTime(k.b.a.h.from(eVar));
        } catch (k.b.a.b e2) {
            throw new k.b.a.b("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + eVar.getClass(), e2);
        }
    }

    public e period(int i2, int i3, int i4) {
        return new f(this, i2, i3, i4);
    }

    public abstract int prolepticYear(j jVar, int i2);

    public abstract k.b.a.x.n range(k.b.a.x.a aVar);

    public abstract k.b.a.u.b resolveDate(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar);

    public String toString() {
        return getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateResolveMap(Map<k.b.a.x.i, Long> map, k.b.a.x.a aVar, long j2) {
        Long l2 = map.get(aVar);
        if (l2 != null && l2.longValue() != j2) {
            throw new k.b.a.b("Invalid state, field: " + aVar + HanziToPinyin.Token.SEPARATOR + l2 + " conflicts with " + aVar + HanziToPinyin.Token.SEPARATOR + j2);
        }
        map.put(aVar, Long.valueOf(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeUTF(getId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [k.b.a.u.g<?>, k.b.a.u.g] */
    public g<?> zonedDateTime(k.b.a.x.e eVar) {
        try {
            k.b.a.q from = k.b.a.q.from(eVar);
            try {
                eVar = zonedDateTime(k.b.a.e.from(eVar), from);
                return eVar;
            } catch (k.b.a.b unused) {
                return h.ofBest(ensureChronoLocalDateTime(localDateTime(eVar)), from, null);
            }
        } catch (k.b.a.b e2) {
            throw new k.b.a.b("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + eVar.getClass(), e2);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(i iVar) {
        return getId().compareTo(iVar.getId());
    }

    public k.b.a.u.b dateNow(k.b.a.q qVar) {
        return dateNow(k.b.a.a.system(qVar));
    }

    public k.b.a.u.b dateNow(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return date(k.b.a.f.now(aVar));
    }

    public g<?> zonedDateTime(k.b.a.e eVar, k.b.a.q qVar) {
        return h.ofInstant(this, eVar, qVar);
    }

    private static void a(i iVar) {
        f19730e.putIfAbsent(iVar.getId(), iVar);
        String calendarType = iVar.getCalendarType();
        if (calendarType != null) {
            f19731f.putIfAbsent(calendarType, iVar);
        }
    }
}
