package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.Comparator;

/* compiled from: OffsetDateTime.java */
/* loaded from: classes2.dex */
public final class k extends k.b.a.w.b implements k.b.a.x.d, k.b.a.x.f, Comparable<k>, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final g dateTime;
    private final r offset;
    public static final k MIN = g.MIN.atOffset(r.MAX);
    public static final k MAX = g.MAX.atOffset(r.MIN);
    public static final k.b.a.x.k<k> FROM = new a();

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<k> f19706e = new b();

    /* compiled from: OffsetDateTime.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<k> {
        a() {
        }

        @Override // k.b.a.x.k
        public k a(k.b.a.x.e eVar) {
            return k.from(eVar);
        }
    }

    /* compiled from: OffsetDateTime.java */
    /* loaded from: classes2.dex */
    class b implements Comparator<k> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(k kVar, k kVar2) {
            int a2 = k.b.a.w.d.a(kVar.toEpochSecond(), kVar2.toEpochSecond());
            return a2 == 0 ? k.b.a.w.d.a(kVar.getNano(), kVar2.getNano()) : a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OffsetDateTime.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19707a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19707a[k.b.a.x.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19707a[k.b.a.x.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private k(g gVar, r rVar) {
        k.b.a.w.d.a(gVar, "dateTime");
        this.dateTime = gVar;
        k.b.a.w.d.a(rVar, "offset");
        this.offset = rVar;
    }

    private k a(g gVar, r rVar) {
        return (this.dateTime == gVar && this.offset.equals(rVar)) ? this : new k(gVar, rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [k.b.a.k] */
    public static k from(k.b.a.x.e eVar) {
        if (eVar instanceof k) {
            return (k) eVar;
        }
        try {
            r from = r.from(eVar);
            try {
                eVar = of(g.from(eVar), from);
                return eVar;
            } catch (k.b.a.b unused) {
                return ofInstant(e.from(eVar), from);
            }
        } catch (k.b.a.b unused2) {
            throw new k.b.a.b("Unable to obtain OffsetDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static k now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static k of(f fVar, h hVar, r rVar) {
        return new k(g.of(fVar, hVar), rVar);
    }

    public static k ofInstant(e eVar, q qVar) {
        k.b.a.w.d.a(eVar, "instant");
        k.b.a.w.d.a(qVar, "zone");
        r offset = qVar.getRules().getOffset(eVar);
        return new k(g.ofEpochSecond(eVar.getEpochSecond(), eVar.getNano(), offset), offset);
    }

    public static k parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.f19777l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k readExternal(DataInput dataInput) {
        return of(g.readExternal(dataInput), r.readExternal(dataInput));
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static Comparator<k> timeLineOrder() {
        return f19706e;
    }

    private Object writeReplace() {
        return new n((byte) 69, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.EPOCH_DAY, toLocalDate().toEpochDay()).with(k.b.a.x.a.NANO_OF_DAY, toLocalTime().toNanoOfDay()).with(k.b.a.x.a.OFFSET_SECONDS, getOffset().getTotalSeconds());
    }

    public t atZoneSameInstant(q qVar) {
        return t.ofInstant(this.dateTime, this.offset, qVar);
    }

    public t atZoneSimilarLocal(q qVar) {
        return t.ofLocal(this.dateTime, qVar, this.offset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.dateTime.equals(kVar.dateTime) && this.offset.equals(kVar.offset);
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = c.f19707a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    return this.dateTime.get(iVar);
                }
                return getOffset().getTotalSeconds();
            }
            throw new k.b.a.b("Field too large for an int: " + iVar);
        }
        return super.get(iVar);
    }

    public int getDayOfMonth() {
        return this.dateTime.getDayOfMonth();
    }

    public k.b.a.c getDayOfWeek() {
        return this.dateTime.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.dateTime.getDayOfYear();
    }

    public int getHour() {
        return this.dateTime.getHour();
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = c.f19707a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 == 1) {
                return toEpochSecond();
            }
            if (i2 != 2) {
                return this.dateTime.getLong(iVar);
            }
            return getOffset().getTotalSeconds();
        }
        return iVar.getFrom(this);
    }

    public int getMinute() {
        return this.dateTime.getMinute();
    }

    public i getMonth() {
        return this.dateTime.getMonth();
    }

    public int getMonthValue() {
        return this.dateTime.getMonthValue();
    }

    public int getNano() {
        return this.dateTime.getNano();
    }

    public r getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.dateTime.getSecond();
    }

    public int getYear() {
        return this.dateTime.getYear();
    }

    public int hashCode() {
        return this.dateTime.hashCode() ^ this.offset.hashCode();
    }

    public boolean isAfter(k kVar) {
        long epochSecond = toEpochSecond();
        long epochSecond2 = kVar.toEpochSecond();
        return epochSecond > epochSecond2 || (epochSecond == epochSecond2 && toLocalTime().getNano() > kVar.toLocalTime().getNano());
    }

    public boolean isBefore(k kVar) {
        long epochSecond = toEpochSecond();
        long epochSecond2 = kVar.toEpochSecond();
        return epochSecond < epochSecond2 || (epochSecond == epochSecond2 && toLocalTime().getNano() < kVar.toLocalTime().getNano());
    }

    public boolean isEqual(k kVar) {
        return toEpochSecond() == kVar.toEpochSecond() && toLocalTime().getNano() == kVar.toLocalTime().getNano();
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return (iVar instanceof k.b.a.x.a) || (iVar != null && iVar.isSupportedBy(this));
    }

    public k minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public k minusHours(long j2) {
        return j2 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j2);
    }

    public k minusMinutes(long j2) {
        return j2 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j2);
    }

    public k minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public k minusNanos(long j2) {
        return j2 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j2);
    }

    public k minusSeconds(long j2) {
        return j2 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j2);
    }

    public k minusWeeks(long j2) {
        return j2 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j2);
    }

    public k minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public k plusDays(long j2) {
        return a(this.dateTime.plusDays(j2), this.offset);
    }

    public k plusHours(long j2) {
        return a(this.dateTime.plusHours(j2), this.offset);
    }

    public k plusMinutes(long j2) {
        return a(this.dateTime.plusMinutes(j2), this.offset);
    }

    public k plusMonths(long j2) {
        return a(this.dateTime.plusMonths(j2), this.offset);
    }

    public k plusNanos(long j2) {
        return a(this.dateTime.plusNanos(j2), this.offset);
    }

    public k plusSeconds(long j2) {
        return a(this.dateTime.plusSeconds(j2), this.offset);
    }

    public k plusWeeks(long j2) {
        return a(this.dateTime.plusWeeks(j2), this.offset);
    }

    public k plusYears(long j2) {
        return a(this.dateTime.plusYears(j2), this.offset);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) k.b.a.u.n.INSTANCE;
        }
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.NANOS;
        }
        if (kVar != k.b.a.x.j.d() && kVar != k.b.a.x.j.f()) {
            if (kVar == k.b.a.x.j.b()) {
                return (R) toLocalDate();
            }
            if (kVar == k.b.a.x.j.c()) {
                return (R) toLocalTime();
            }
            if (kVar == k.b.a.x.j.g()) {
                return null;
            }
            return (R) super.query(kVar);
        }
        return (R) getOffset();
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar != k.b.a.x.a.INSTANT_SECONDS && iVar != k.b.a.x.a.OFFSET_SECONDS) {
                return this.dateTime.range(iVar);
            }
            return iVar.range();
        }
        return iVar.rangeRefinedBy(this);
    }

    public long toEpochSecond() {
        return this.dateTime.toEpochSecond(this.offset);
    }

    public e toInstant() {
        return this.dateTime.toInstant(this.offset);
    }

    public f toLocalDate() {
        return this.dateTime.toLocalDate();
    }

    public g toLocalDateTime() {
        return this.dateTime;
    }

    public h toLocalTime() {
        return this.dateTime.toLocalTime();
    }

    public l toOffsetTime() {
        return l.of(this.dateTime.toLocalTime(), this.offset);
    }

    public String toString() {
        return this.dateTime.toString() + this.offset.toString();
    }

    public t toZonedDateTime() {
        return t.of(this.dateTime, this.offset);
    }

    public k truncatedTo(k.b.a.x.l lVar) {
        return a(this.dateTime.truncatedTo(lVar), this.offset);
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        k from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            return this.dateTime.until(from.withOffsetSameInstant(this.offset).dateTime, lVar);
        }
        return lVar.between(this, from);
    }

    public k withDayOfMonth(int i2) {
        return a(this.dateTime.withDayOfMonth(i2), this.offset);
    }

    public k withDayOfYear(int i2) {
        return a(this.dateTime.withDayOfYear(i2), this.offset);
    }

    public k withHour(int i2) {
        return a(this.dateTime.withHour(i2), this.offset);
    }

    public k withMinute(int i2) {
        return a(this.dateTime.withMinute(i2), this.offset);
    }

    public k withMonth(int i2) {
        return a(this.dateTime.withMonth(i2), this.offset);
    }

    public k withNano(int i2) {
        return a(this.dateTime.withNano(i2), this.offset);
    }

    public k withOffsetSameInstant(r rVar) {
        if (rVar.equals(this.offset)) {
            return this;
        }
        return new k(this.dateTime.plusSeconds(rVar.getTotalSeconds() - this.offset.getTotalSeconds()), rVar);
    }

    public k withOffsetSameLocal(r rVar) {
        return a(this.dateTime, rVar);
    }

    public k withSecond(int i2) {
        return a(this.dateTime.withSecond(i2), this.offset);
    }

    public k withYear(int i2) {
        return a(this.dateTime.withYear(i2), this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        this.dateTime.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
    }

    public static k now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static k parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (k) bVar.a(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(k kVar) {
        if (getOffset().equals(kVar.getOffset())) {
            return toLocalDateTime().compareTo((k.b.a.u.c<?>) kVar.toLocalDateTime());
        }
        int a2 = k.b.a.w.d.a(toEpochSecond(), kVar.toEpochSecond());
        if (a2 != 0) {
            return a2;
        }
        int nano = toLocalTime().getNano() - kVar.toLocalTime().getNano();
        return nano == 0 ? toLocalDateTime().compareTo((k.b.a.u.c<?>) kVar.toLocalDateTime()) : nano;
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isDateBased() || lVar.isTimeBased() : lVar != null && lVar.isSupportedBy(this);
    }

    public static k now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        e instant = aVar.instant();
        return ofInstant(instant, aVar.getZone().getRules().getOffset(instant));
    }

    public static k of(g gVar, r rVar) {
        return new k(gVar, rVar);
    }

    @Override // k.b.a.w.b
    public k minus(k.b.a.x.h hVar) {
        return (k) hVar.subtractFrom(this);
    }

    @Override // k.b.a.w.b
    public k plus(k.b.a.x.h hVar) {
        return (k) hVar.addTo(this);
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public k with(k.b.a.x.f fVar) {
        if (!(fVar instanceof f) && !(fVar instanceof h) && !(fVar instanceof g)) {
            if (fVar instanceof e) {
                return ofInstant((e) fVar, this.offset);
            }
            if (fVar instanceof r) {
                return a(this.dateTime, (r) fVar);
            }
            if (fVar instanceof k) {
                return (k) fVar;
            }
            return (k) fVar.adjustInto(this);
        }
        return a(this.dateTime.with(fVar), this.offset);
    }

    public static k of(int i2, int i3, int i4, int i5, int i6, int i7, int i8, r rVar) {
        return new k(g.of(i2, i3, i4, i5, i6, i7, i8), rVar);
    }

    @Override // k.b.a.w.b, k.b.a.x.d
    public k minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public k plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return a(this.dateTime.plus(j2, lVar), this.offset);
        }
        return (k) lVar.addTo(this, j2);
    }

    @Override // k.b.a.x.d
    public k with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            int i2 = c.f19707a[aVar.ordinal()];
            if (i2 == 1) {
                return ofInstant(e.ofEpochSecond(j2, getNano()), this.offset);
            }
            if (i2 != 2) {
                return a(this.dateTime.with(iVar, j2), this.offset);
            }
            return a(this.dateTime, r.ofTotalSeconds(aVar.checkValidIntValue(j2)));
        }
        return (k) iVar.adjustInto(this, j2);
    }
}
