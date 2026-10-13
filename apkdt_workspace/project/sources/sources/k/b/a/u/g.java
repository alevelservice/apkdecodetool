package k.b.a.u;

import java.util.Comparator;
import k.b.a.u.b;

/* compiled from: ChronoZonedDateTime.java */
/* loaded from: classes2.dex */
public abstract class g<D extends k.b.a.u.b> extends k.b.a.w.b implements k.b.a.x.d, Comparable<g<?>> {

    /* renamed from: e, reason: collision with root package name */
    private static Comparator<g<?>> f19727e = new a();

    /* compiled from: ChronoZonedDateTime.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<g<?>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(g<?> gVar, g<?> gVar2) {
            int a2 = k.b.a.w.d.a(gVar.toEpochSecond(), gVar2.toEpochSecond());
            return a2 == 0 ? k.b.a.w.d.a(gVar.toLocalTime().toNanoOfDay(), gVar2.toLocalTime().toNanoOfDay()) : a2;
        }
    }

    /* compiled from: ChronoZonedDateTime.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19728a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19728a[k.b.a.x.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19728a[k.b.a.x.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static g<?> from(k.b.a.x.e eVar) {
        k.b.a.w.d.a(eVar, "temporal");
        if (eVar instanceof g) {
            return (g) eVar;
        }
        i iVar = (i) eVar.query(k.b.a.x.j.a());
        if (iVar != null) {
            return iVar.zonedDateTime(eVar);
        }
        throw new k.b.a.b("No Chronology found to create ChronoZonedDateTime: " + eVar.getClass());
    }

    public static Comparator<g<?>> timeLineOrder() {
        return f19727e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && compareTo((g<?>) obj) == 0;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19728a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    return toLocalDateTime2().get(iVar);
                }
                return getOffset().getTotalSeconds();
            }
            throw new k.b.a.x.m("Field too large for an int: " + iVar);
        }
        return super.get(iVar);
    }

    public i getChronology() {
        return toLocalDate().getChronology();
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19728a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 == 1) {
                return toEpochSecond();
            }
            if (i2 != 2) {
                return toLocalDateTime2().getLong(iVar);
            }
            return getOffset().getTotalSeconds();
        }
        return iVar.getFrom(this);
    }

    public abstract k.b.a.r getOffset();

    public abstract k.b.a.q getZone();

    public int hashCode() {
        return (toLocalDateTime2().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    public boolean isAfter(g<?> gVar) {
        long epochSecond = toEpochSecond();
        long epochSecond2 = gVar.toEpochSecond();
        return epochSecond > epochSecond2 || (epochSecond == epochSecond2 && toLocalTime().getNano() > gVar.toLocalTime().getNano());
    }

    public boolean isBefore(g<?> gVar) {
        long epochSecond = toEpochSecond();
        long epochSecond2 = gVar.toEpochSecond();
        return epochSecond < epochSecond2 || (epochSecond == epochSecond2 && toLocalTime().getNano() < gVar.toLocalTime().getNano());
    }

    public boolean isEqual(g<?> gVar) {
        return toEpochSecond() == gVar.toEpochSecond() && toLocalTime().getNano() == gVar.toLocalTime().getNano();
    }

    @Override // k.b.a.x.d
    public abstract g<D> plus(long j2, k.b.a.x.l lVar);

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar != k.b.a.x.j.g() && kVar != k.b.a.x.j.f()) {
            if (kVar == k.b.a.x.j.a()) {
                return (R) toLocalDate().getChronology();
            }
            if (kVar == k.b.a.x.j.e()) {
                return (R) k.b.a.x.b.NANOS;
            }
            if (kVar == k.b.a.x.j.d()) {
                return (R) getOffset();
            }
            if (kVar == k.b.a.x.j.b()) {
                return (R) k.b.a.f.ofEpochDay(toLocalDate().toEpochDay());
            }
            if (kVar == k.b.a.x.j.c()) {
                return (R) toLocalTime();
            }
            return (R) super.query(kVar);
        }
        return (R) getZone();
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar != k.b.a.x.a.INSTANT_SECONDS && iVar != k.b.a.x.a.OFFSET_SECONDS) {
                return toLocalDateTime2().range(iVar);
            }
            return iVar.range();
        }
        return iVar.rangeRefinedBy(this);
    }

    public long toEpochSecond() {
        return ((toLocalDate().toEpochDay() * 86400) + toLocalTime().toSecondOfDay()) - getOffset().getTotalSeconds();
    }

    public k.b.a.e toInstant() {
        return k.b.a.e.ofEpochSecond(toEpochSecond(), toLocalTime().getNano());
    }

    public D toLocalDate() {
        return toLocalDateTime2().toLocalDate();
    }

    /* renamed from: toLocalDateTime */
    public abstract c<D> toLocalDateTime2();

    public k.b.a.h toLocalTime() {
        return toLocalDateTime2().toLocalTime();
    }

    public String toString() {
        String str = toLocalDateTime2().toString() + getOffset().toString();
        if (getOffset() == getZone()) {
            return str;
        }
        return str + '[' + getZone().toString() + ']';
    }

    @Override // k.b.a.x.d
    public abstract g<D> with(k.b.a.x.i iVar, long j2);

    /* renamed from: withEarlierOffsetAtOverlap */
    public abstract g<D> withEarlierOffsetAtOverlap2();

    /* renamed from: withLaterOffsetAtOverlap */
    public abstract g<D> withLaterOffsetAtOverlap2();

    /* renamed from: withZoneSameInstant */
    public abstract g<D> withZoneSameInstant2(k.b.a.q qVar);

    /* renamed from: withZoneSameLocal */
    public abstract g<D> withZoneSameLocal2(k.b.a.q qVar);

    /* JADX WARN: Type inference failed for: r5v1, types: [k.b.a.u.b] */
    @Override // java.lang.Comparable
    public int compareTo(g<?> gVar) {
        int a2 = k.b.a.w.d.a(toEpochSecond(), gVar.toEpochSecond());
        if (a2 != 0) {
            return a2;
        }
        int nano = toLocalTime().getNano() - gVar.toLocalTime().getNano();
        if (nano != 0) {
            return nano;
        }
        int compareTo = toLocalDateTime2().compareTo(gVar.toLocalDateTime2());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = getZone().getId().compareTo(gVar.getZone().getId());
        return compareTo2 == 0 ? toLocalDate().getChronology().compareTo(gVar.toLocalDate().getChronology()) : compareTo2;
    }

    @Override // k.b.a.w.b
    public g<D> minus(k.b.a.x.h hVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(hVar));
    }

    @Override // k.b.a.w.b
    public g<D> plus(k.b.a.x.h hVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.plus(hVar));
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public g<D> with(k.b.a.x.f fVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.with(fVar));
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public g<D> minus(long j2, k.b.a.x.l lVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(j2, lVar));
    }
}
