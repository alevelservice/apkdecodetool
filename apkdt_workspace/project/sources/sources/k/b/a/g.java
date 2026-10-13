package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: LocalDateTime.java */
/* loaded from: classes2.dex */
public final class g extends k.b.a.u.c<f> implements k.b.a.x.d, k.b.a.x.f, Serializable {
    private static final long serialVersionUID = 6207766400415563566L;
    private final f date;
    private final h time;
    public static final g MIN = of(f.MIN, h.MIN);
    public static final g MAX = of(f.MAX, h.MAX);
    public static final k.b.a.x.k<g> FROM = new a();

    /* compiled from: LocalDateTime.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<g> {
        a() {
        }

        @Override // k.b.a.x.k
        public g a(k.b.a.x.e eVar) {
            return g.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalDateTime.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19697a = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19697a[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19697a[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19697a[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19697a[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19697a[k.b.a.x.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19697a[k.b.a.x.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19697a[k.b.a.x.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private g(f fVar, h hVar) {
        this.date = fVar;
        this.time = hVar;
    }

    private g a(f fVar, h hVar) {
        return (this.date == fVar && this.time == hVar) ? this : new g(fVar, hVar);
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [k.b.a.g] */
    public static g from(k.b.a.x.e eVar) {
        if (eVar instanceof g) {
            return (g) eVar;
        }
        if (eVar instanceof t) {
            return ((t) eVar).toLocalDateTime2();
        }
        try {
            return new g(f.from(eVar), h.from(eVar));
        } catch (k.b.a.b unused) {
            throw new k.b.a.b("Unable to obtain LocalDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static g now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static g of(int i2, i iVar, int i3, int i4, int i5) {
        return new g(f.of(i2, iVar, i3), h.of(i4, i5));
    }

    public static g ofEpochSecond(long j2, int i2, r rVar) {
        k.b.a.w.d.a(rVar, "offset");
        return new g(f.ofEpochDay(k.b.a.w.d.b(j2 + rVar.getTotalSeconds(), 86400L)), h.ofSecondOfDay(k.b.a.w.d.a(r2, 86400), i2));
    }

    public static g ofInstant(e eVar, q qVar) {
        k.b.a.w.d.a(eVar, "instant");
        k.b.a.w.d.a(qVar, "zone");
        return ofEpochSecond(eVar.getEpochSecond(), eVar.getNano(), qVar.getRules().getOffset(eVar));
    }

    public static g parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.f19776k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g readExternal(DataInput dataInput) {
        return of(f.readExternal(dataInput), h.readExternal(dataInput));
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 4, this);
    }

    @Override // k.b.a.u.c, k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return super.adjustInto(dVar);
    }

    public k atOffset(r rVar) {
        return k.of(this, rVar);
    }

    @Override // k.b.a.u.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.date.equals(gVar.date) && this.time.equals(gVar.time);
    }

    @Override // k.b.a.u.c
    public String format(k.b.a.v.b bVar) {
        return super.format(bVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.get(iVar) : this.date.get(iVar);
        }
        return super.get(iVar);
    }

    public int getDayOfMonth() {
        return this.date.getDayOfMonth();
    }

    public c getDayOfWeek() {
        return this.date.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.date.getDayOfYear();
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.getLong(iVar) : this.date.getLong(iVar);
        }
        return iVar.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public i getMonth() {
        return this.date.getMonth();
    }

    public int getMonthValue() {
        return this.date.getMonthValue();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int getYear() {
        return this.date.getYear();
    }

    @Override // k.b.a.u.c
    public int hashCode() {
        return this.date.hashCode() ^ this.time.hashCode();
    }

    @Override // k.b.a.u.c
    public boolean isAfter(k.b.a.u.c<?> cVar) {
        if (cVar instanceof g) {
            return a((g) cVar) > 0;
        }
        return super.isAfter(cVar);
    }

    @Override // k.b.a.u.c
    public boolean isBefore(k.b.a.u.c<?> cVar) {
        if (cVar instanceof g) {
            return a((g) cVar) < 0;
        }
        return super.isBefore(cVar);
    }

    @Override // k.b.a.u.c
    public boolean isEqual(k.b.a.u.c<?> cVar) {
        if (cVar instanceof g) {
            return a((g) cVar) == 0;
        }
        return super.isEqual(cVar);
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar.isDateBased() || iVar.isTimeBased() : iVar != null && iVar.isSupportedBy(this);
    }

    public g minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public g minusHours(long j2) {
        return a(this.date, j2, 0L, 0L, 0L, -1);
    }

    public g minusMinutes(long j2) {
        return a(this.date, 0L, j2, 0L, 0L, -1);
    }

    public g minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public g minusNanos(long j2) {
        return a(this.date, 0L, 0L, 0L, j2, -1);
    }

    public g minusSeconds(long j2) {
        return a(this.date, 0L, 0L, j2, 0L, -1);
    }

    public g minusWeeks(long j2) {
        return j2 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j2);
    }

    public g minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public g plusDays(long j2) {
        return a(this.date.plusDays(j2), this.time);
    }

    public g plusHours(long j2) {
        return a(this.date, j2, 0L, 0L, 0L, 1);
    }

    public g plusMinutes(long j2) {
        return a(this.date, 0L, j2, 0L, 0L, 1);
    }

    public g plusMonths(long j2) {
        return a(this.date.plusMonths(j2), this.time);
    }

    public g plusNanos(long j2) {
        return a(this.date, 0L, 0L, 0L, j2, 1);
    }

    public g plusSeconds(long j2) {
        return a(this.date, 0L, 0L, j2, 0L, 1);
    }

    public g plusWeeks(long j2) {
        return a(this.date.plusWeeks(j2), this.time);
    }

    public g plusYears(long j2) {
        return a(this.date.plusYears(j2), this.time);
    }

    @Override // k.b.a.u.c, k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.b()) {
            return (R) toLocalDate();
        }
        return (R) super.query(kVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.range(iVar) : this.date.range(iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.c
    public h toLocalTime() {
        return this.time;
    }

    @Override // k.b.a.u.c
    public String toString() {
        return this.date.toString() + 'T' + this.time.toString();
    }

    public g truncatedTo(k.b.a.x.l lVar) {
        return a(this.date, this.time.truncatedTo(lVar));
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        g from = from((k.b.a.x.e) dVar);
        if (lVar instanceof k.b.a.x.b) {
            k.b.a.x.b bVar = (k.b.a.x.b) lVar;
            if (bVar.isTimeBased()) {
                long daysUntil = this.date.daysUntil(from.date);
                long nanoOfDay = from.time.toNanoOfDay() - this.time.toNanoOfDay();
                if (daysUntil > 0 && nanoOfDay < 0) {
                    daysUntil--;
                    nanoOfDay += 86400000000000L;
                } else if (daysUntil < 0 && nanoOfDay > 0) {
                    daysUntil++;
                    nanoOfDay -= 86400000000000L;
                }
                switch (b.f19697a[bVar.ordinal()]) {
                    case 1:
                        return k.b.a.w.d.d(k.b.a.w.d.e(daysUntil, 86400000000000L), nanoOfDay);
                    case 2:
                        return k.b.a.w.d.d(k.b.a.w.d.e(daysUntil, 86400000000L), nanoOfDay / 1000);
                    case 3:
                        return k.b.a.w.d.d(k.b.a.w.d.e(daysUntil, 86400000L), nanoOfDay / 1000000);
                    case 4:
                        return k.b.a.w.d.d(k.b.a.w.d.b(daysUntil, 86400), nanoOfDay / 1000000000);
                    case 5:
                        return k.b.a.w.d.d(k.b.a.w.d.b(daysUntil, 1440), nanoOfDay / 60000000000L);
                    case 6:
                        return k.b.a.w.d.d(k.b.a.w.d.b(daysUntil, 24), nanoOfDay / 3600000000000L);
                    case 7:
                        return k.b.a.w.d.d(k.b.a.w.d.b(daysUntil, 2), nanoOfDay / 43200000000000L);
                    default:
                        throw new k.b.a.x.m("Unsupported unit: " + lVar);
                }
            }
            f fVar = from.date;
            if (fVar.isAfter(this.date) && from.time.isBefore(this.time)) {
                fVar = fVar.minusDays(1L);
            } else if (fVar.isBefore(this.date) && from.time.isAfter(this.time)) {
                fVar = fVar.plusDays(1L);
            }
            return this.date.until(fVar, lVar);
        }
        return lVar.between(this, from);
    }

    public g withDayOfMonth(int i2) {
        return a(this.date.withDayOfMonth(i2), this.time);
    }

    public g withDayOfYear(int i2) {
        return a(this.date.withDayOfYear(i2), this.time);
    }

    public g withHour(int i2) {
        return a(this.date, this.time.withHour(i2));
    }

    public g withMinute(int i2) {
        return a(this.date, this.time.withMinute(i2));
    }

    public g withMonth(int i2) {
        return a(this.date.withMonth(i2), this.time);
    }

    public g withNano(int i2) {
        return a(this.date, this.time.withNano(i2));
    }

    public g withSecond(int i2) {
        return a(this.date, this.time.withSecond(i2));
    }

    public g withYear(int i2) {
        return a(this.date.withYear(i2), this.time);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        this.date.writeExternal(dataOutput);
        this.time.writeExternal(dataOutput);
    }

    public static g now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static g parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (g) bVar.a(charSequence, FROM);
    }

    @Override // k.b.a.u.c
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.g<f> atZone2(q qVar) {
        return t.of(this, qVar);
    }

    @Override // k.b.a.u.c, java.lang.Comparable
    public int compareTo(k.b.a.u.c<?> cVar) {
        if (cVar instanceof g) {
            return a((g) cVar);
        }
        return super.compareTo(cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // k.b.a.u.c
    public f toLocalDate() {
        return this.date;
    }

    private g a(f fVar, long j2, long j3, long j4, long j5, int i2) {
        if ((j2 | j3 | j4 | j5) == 0) {
            return a(fVar, this.time);
        }
        long j6 = i2;
        long nanoOfDay = this.time.toNanoOfDay();
        long j7 = (((j5 % 86400000000000L) + ((j4 % 86400) * 1000000000) + ((j3 % 1440) * 60000000000L) + ((j2 % 24) * 3600000000000L)) * j6) + nanoOfDay;
        long b2 = (((j5 / 86400000000000L) + (j4 / 86400) + (j3 / 1440) + (j2 / 24)) * j6) + k.b.a.w.d.b(j7, 86400000000000L);
        long c2 = k.b.a.w.d.c(j7, 86400000000000L);
        return a(fVar.plusDays(b2), c2 == nanoOfDay ? this.time : h.ofNanoOfDay(c2));
    }

    public static g now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        e instant = aVar.instant();
        return ofEpochSecond(instant.getEpochSecond(), instant.getNano(), aVar.getZone().getRules().getOffset(instant));
    }

    public static g of(int i2, i iVar, int i3, int i4, int i5, int i6) {
        return new g(f.of(i2, iVar, i3), h.of(i4, i5, i6));
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isDateBased() || lVar.isTimeBased() : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.u.c, k.b.a.w.b
    public g minus(k.b.a.x.h hVar) {
        return (g) hVar.subtractFrom(this);
    }

    @Override // k.b.a.u.c, k.b.a.w.b
    public g plus(k.b.a.x.h hVar) {
        return (g) hVar.addTo(this);
    }

    @Override // k.b.a.u.c, k.b.a.w.b, k.b.a.x.d
    public g with(k.b.a.x.f fVar) {
        if (fVar instanceof f) {
            return a((f) fVar, this.time);
        }
        if (fVar instanceof h) {
            return a(this.date, (h) fVar);
        }
        if (fVar instanceof g) {
            return (g) fVar;
        }
        return (g) fVar.adjustInto(this);
    }

    @Override // k.b.a.u.c, k.b.a.w.b, k.b.a.x.d
    public g minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.u.c, k.b.a.x.d
    public g plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19697a[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusNanos(j2);
                case 2:
                    return plusDays(j2 / 86400000000L).plusNanos((j2 % 86400000000L) * 1000);
                case 3:
                    return plusDays(j2 / 86400000).plusNanos((j2 % 86400000) * 1000000);
                case 4:
                    return plusSeconds(j2);
                case 5:
                    return plusMinutes(j2);
                case 6:
                    return plusHours(j2);
                case 7:
                    return plusDays(j2 / 256).plusHours((j2 % 256) * 12);
                default:
                    return a(this.date.plus(j2, lVar), this.time);
            }
        }
        return (g) lVar.addTo(this, j2);
    }

    public static g of(int i2, i iVar, int i3, int i4, int i5, int i6, int i7) {
        return new g(f.of(i2, iVar, i3), h.of(i4, i5, i6, i7));
    }

    public static g of(int i2, int i3, int i4, int i5, int i6) {
        return new g(f.of(i2, i3, i4), h.of(i5, i6));
    }

    private int a(g gVar) {
        int compareTo0 = this.date.compareTo0(gVar.toLocalDate());
        return compareTo0 == 0 ? this.time.compareTo(gVar.toLocalTime()) : compareTo0;
    }

    @Override // k.b.a.u.c, k.b.a.x.d
    public g with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar.isTimeBased()) {
                return a(this.date, this.time.with(iVar, j2));
            }
            return a(this.date.with(iVar, j2), this.time);
        }
        return (g) iVar.adjustInto(this, j2);
    }

    public static g of(int i2, int i3, int i4, int i5, int i6, int i7) {
        return new g(f.of(i2, i3, i4), h.of(i5, i6, i7));
    }

    public static g of(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return new g(f.of(i2, i3, i4), h.of(i5, i6, i7, i8));
    }

    public static g of(f fVar, h hVar) {
        k.b.a.w.d.a(fVar, "date");
        k.b.a.w.d.a(hVar, "time");
        return new g(fVar, hVar);
    }
}
