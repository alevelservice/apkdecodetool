package k.b.a.u;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.util.Comparator;

/* compiled from: ChronoLocalDate.java */
/* loaded from: classes2.dex */
public abstract class b extends k.b.a.w.b implements k.b.a.x.d, k.b.a.x.f, Comparable<b> {

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<b> f19724e = new a();

    /* compiled from: ChronoLocalDate.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<b> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return k.b.a.w.d.a(bVar.toEpochDay(), bVar2.toEpochDay());
        }
    }

    public static b from(k.b.a.x.e eVar) {
        k.b.a.w.d.a(eVar, "temporal");
        if (eVar instanceof b) {
            return (b) eVar;
        }
        i iVar = (i) eVar.query(k.b.a.x.j.a());
        if (iVar != null) {
            return iVar.date(eVar);
        }
        throw new k.b.a.b("No Chronology found to create ChronoLocalDate: " + eVar.getClass());
    }

    public static Comparator<b> timeLineOrder() {
        return f19724e;
    }

    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.EPOCH_DAY, toEpochDay());
    }

    public c<?> atTime(k.b.a.h hVar) {
        return d.of(this, hVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && compareTo((b) obj) == 0;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    public abstract i getChronology();

    public j getEra() {
        return getChronology().eraOf(get(k.b.a.x.a.ERA));
    }

    public int hashCode() {
        long epochDay = toEpochDay();
        return getChronology().hashCode() ^ ((int) (epochDay ^ (epochDay >>> 32)));
    }

    public boolean isAfter(b bVar) {
        return toEpochDay() > bVar.toEpochDay();
    }

    public boolean isBefore(b bVar) {
        return toEpochDay() < bVar.toEpochDay();
    }

    public boolean isEqual(b bVar) {
        return toEpochDay() == bVar.toEpochDay();
    }

    public boolean isLeapYear() {
        return getChronology().isLeapYear(getLong(k.b.a.x.a.YEAR));
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isDateBased();
        }
        return iVar != null && iVar.isSupportedBy(this);
    }

    public abstract int lengthOfMonth();

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    @Override // k.b.a.x.d
    public abstract b plus(long j2, k.b.a.x.l lVar);

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) getChronology();
        }
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.DAYS;
        }
        if (kVar == k.b.a.x.j.b()) {
            return (R) k.b.a.f.ofEpochDay(toEpochDay());
        }
        if (kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return (R) super.query(kVar);
    }

    public long toEpochDay() {
        return getLong(k.b.a.x.a.EPOCH_DAY);
    }

    public String toString() {
        long j2 = getLong(k.b.a.x.a.YEAR_OF_ERA);
        long j3 = getLong(k.b.a.x.a.MONTH_OF_YEAR);
        long j4 = getLong(k.b.a.x.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(getChronology().toString());
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(getEra());
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(j2);
        sb.append(j3 < 10 ? "-0" : "-");
        sb.append(j3);
        sb.append(j4 >= 10 ? "-" : "-0");
        sb.append(j4);
        return sb.toString();
    }

    public abstract e until(b bVar);

    @Override // k.b.a.x.d
    public abstract b with(k.b.a.x.i iVar, long j2);

    @Override // java.lang.Comparable
    public int compareTo(b bVar) {
        int a2 = k.b.a.w.d.a(toEpochDay(), bVar.toEpochDay());
        return a2 == 0 ? getChronology().compareTo(bVar.getChronology()) : a2;
    }

    @Override // k.b.a.w.b
    public b minus(k.b.a.x.h hVar) {
        return getChronology().ensureChronoLocalDate(super.minus(hVar));
    }

    @Override // k.b.a.w.b
    public b plus(k.b.a.x.h hVar) {
        return getChronology().ensureChronoLocalDate(super.plus(hVar));
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public b with(k.b.a.x.f fVar) {
        return getChronology().ensureChronoLocalDate(super.with(fVar));
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return lVar.isDateBased();
        }
        return lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public b minus(long j2, k.b.a.x.l lVar) {
        return getChronology().ensureChronoLocalDate(super.minus(j2, lVar));
    }
}
