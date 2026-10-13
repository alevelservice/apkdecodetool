package k.b.a.u;

import java.util.Comparator;
import k.b.a.u.b;

/* compiled from: ChronoLocalDateTime.java */
/* loaded from: classes2.dex */
public abstract class c<D extends b> extends k.b.a.w.b implements k.b.a.x.d, k.b.a.x.f, Comparable<c<?>> {

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<c<?>> f19725e = new a();

    /* compiled from: ChronoLocalDateTime.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<c<?>> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [k.b.a.u.b] */
        /* JADX WARN: Type inference failed for: r2v0, types: [k.b.a.u.b] */
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c<?> cVar, c<?> cVar2) {
            int a2 = k.b.a.w.d.a(cVar.toLocalDate().toEpochDay(), cVar2.toLocalDate().toEpochDay());
            return a2 == 0 ? k.b.a.w.d.a(cVar.toLocalTime().toNanoOfDay(), cVar2.toLocalTime().toNanoOfDay()) : a2;
        }
    }

    public static c<?> from(k.b.a.x.e eVar) {
        k.b.a.w.d.a(eVar, "temporal");
        if (eVar instanceof c) {
            return (c) eVar;
        }
        i iVar = (i) eVar.query(k.b.a.x.j.a());
        if (iVar != null) {
            return iVar.localDateTime(eVar);
        }
        throw new k.b.a.b("No Chronology found to create ChronoLocalDateTime: " + eVar.getClass());
    }

    public static Comparator<c<?>> timeLineOrder() {
        return f19725e;
    }

    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.EPOCH_DAY, toLocalDate().toEpochDay()).with(k.b.a.x.a.NANO_OF_DAY, toLocalTime().toNanoOfDay());
    }

    /* renamed from: atZone */
    public abstract g<D> atZone2(k.b.a.q qVar);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && compareTo((c<?>) obj) == 0;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    public i getChronology() {
        return toLocalDate().getChronology();
    }

    public int hashCode() {
        return toLocalDate().hashCode() ^ toLocalTime().hashCode();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [k.b.a.u.b] */
    public boolean isAfter(c<?> cVar) {
        long epochDay = toLocalDate().toEpochDay();
        long epochDay2 = cVar.toLocalDate().toEpochDay();
        return epochDay > epochDay2 || (epochDay == epochDay2 && toLocalTime().toNanoOfDay() > cVar.toLocalTime().toNanoOfDay());
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [k.b.a.u.b] */
    public boolean isBefore(c<?> cVar) {
        long epochDay = toLocalDate().toEpochDay();
        long epochDay2 = cVar.toLocalDate().toEpochDay();
        return epochDay < epochDay2 || (epochDay == epochDay2 && toLocalTime().toNanoOfDay() < cVar.toLocalTime().toNanoOfDay());
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [k.b.a.u.b] */
    public boolean isEqual(c<?> cVar) {
        return toLocalTime().toNanoOfDay() == cVar.toLocalTime().toNanoOfDay() && toLocalDate().toEpochDay() == cVar.toLocalDate().toEpochDay();
    }

    @Override // k.b.a.x.d
    public abstract c<D> plus(long j2, k.b.a.x.l lVar);

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) getChronology();
        }
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.NANOS;
        }
        if (kVar == k.b.a.x.j.b()) {
            return (R) k.b.a.f.ofEpochDay(toLocalDate().toEpochDay());
        }
        if (kVar == k.b.a.x.j.c()) {
            return (R) toLocalTime();
        }
        if (kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return (R) super.query(kVar);
    }

    public long toEpochSecond(k.b.a.r rVar) {
        k.b.a.w.d.a(rVar, "offset");
        return ((toLocalDate().toEpochDay() * 86400) + toLocalTime().toSecondOfDay()) - rVar.getTotalSeconds();
    }

    public k.b.a.e toInstant(k.b.a.r rVar) {
        return k.b.a.e.ofEpochSecond(toEpochSecond(rVar), toLocalTime().getNano());
    }

    public abstract D toLocalDate();

    public abstract k.b.a.h toLocalTime();

    public String toString() {
        return toLocalDate().toString() + 'T' + toLocalTime().toString();
    }

    @Override // k.b.a.x.d
    public abstract c<D> with(k.b.a.x.i iVar, long j2);

    @Override // java.lang.Comparable
    public int compareTo(c<?> cVar) {
        int compareTo = toLocalDate().compareTo(cVar.toLocalDate());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = toLocalTime().compareTo(cVar.toLocalTime());
        return compareTo2 == 0 ? getChronology().compareTo(cVar.getChronology()) : compareTo2;
    }

    @Override // k.b.a.w.b
    public c<D> minus(k.b.a.x.h hVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(hVar));
    }

    @Override // k.b.a.w.b
    public c<D> plus(k.b.a.x.h hVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.plus(hVar));
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public c<D> with(k.b.a.x.f fVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.with(fVar));
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public c<D> minus(long j2, k.b.a.x.l lVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(j2, lVar));
    }
}
