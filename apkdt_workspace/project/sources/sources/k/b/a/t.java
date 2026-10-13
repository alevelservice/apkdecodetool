package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.List;

/* compiled from: ZonedDateTime.java */
/* loaded from: classes2.dex */
public final class t extends k.b.a.u.g<f> implements k.b.a.x.d, Serializable {
    public static final k.b.a.x.k<t> FROM = new a();
    private static final long serialVersionUID = -6260982410461394882L;
    private final g dateTime;
    private final r offset;
    private final q zone;

    /* compiled from: ZonedDateTime.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<t> {
        a() {
        }

        @Override // k.b.a.x.k
        public t a(k.b.a.x.e eVar) {
            return t.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ZonedDateTime.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19722a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19722a[k.b.a.x.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19722a[k.b.a.x.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private t(g gVar, r rVar, q qVar) {
        this.dateTime = gVar;
        this.offset = rVar;
        this.zone = qVar;
    }

    private static t a(long j2, int i2, q qVar) {
        r offset = qVar.getRules().getOffset(e.ofEpochSecond(j2, i2));
        return new t(g.ofEpochSecond(j2, i2, offset), offset, qVar);
    }

    private t b(g gVar) {
        return ofLocal(gVar, this.zone, this.offset);
    }

    public static t from(k.b.a.x.e eVar) {
        if (eVar instanceof t) {
            return (t) eVar;
        }
        try {
            q from = q.from(eVar);
            if (eVar.isSupported(k.b.a.x.a.INSTANT_SECONDS)) {
                try {
                    return a(eVar.getLong(k.b.a.x.a.INSTANT_SECONDS), eVar.get(k.b.a.x.a.NANO_OF_SECOND), from);
                } catch (k.b.a.b unused) {
                }
            }
            return of(g.from(eVar), from);
        } catch (k.b.a.b unused2) {
            throw new k.b.a.b("Unable to obtain ZonedDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static t now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static t of(f fVar, h hVar, q qVar) {
        return of(g.of(fVar, hVar), qVar);
    }

    public static t ofInstant(e eVar, q qVar) {
        k.b.a.w.d.a(eVar, "instant");
        k.b.a.w.d.a(qVar, "zone");
        return a(eVar.getEpochSecond(), eVar.getNano(), qVar);
    }

    public static t ofLocal(g gVar, q qVar, r rVar) {
        k.b.a.w.d.a(gVar, "localDateTime");
        k.b.a.w.d.a(qVar, "zone");
        if (qVar instanceof r) {
            return new t(gVar, (r) qVar, qVar);
        }
        k.b.a.y.f rules = qVar.getRules();
        List<r> validOffsets = rules.getValidOffsets(gVar);
        if (validOffsets.size() == 1) {
            rVar = validOffsets.get(0);
        } else if (validOffsets.size() == 0) {
            k.b.a.y.d transition = rules.getTransition(gVar);
            gVar = gVar.plusSeconds(transition.getDuration().getSeconds());
            rVar = transition.getOffsetAfter();
        } else if (rVar == null || !validOffsets.contains(rVar)) {
            r rVar2 = validOffsets.get(0);
            k.b.a.w.d.a(rVar2, "offset");
            rVar = rVar2;
        }
        return new t(gVar, rVar, qVar);
    }

    public static t ofStrict(g gVar, r rVar, q qVar) {
        k.b.a.w.d.a(gVar, "localDateTime");
        k.b.a.w.d.a(rVar, "offset");
        k.b.a.w.d.a(qVar, "zone");
        k.b.a.y.f rules = qVar.getRules();
        if (!rules.isValidOffset(gVar, rVar)) {
            k.b.a.y.d transition = rules.getTransition(gVar);
            if (transition != null && transition.isGap()) {
                throw new k.b.a.b("LocalDateTime '" + gVar + "' does not exist in zone '" + qVar + "' due to a gap in the local time-line, typically caused by daylight savings");
            }
            throw new k.b.a.b("ZoneOffset '" + rVar + "' is not valid for LocalDateTime '" + gVar + "' in zone '" + qVar + "'");
        }
        return new t(gVar, rVar, qVar);
    }

    public static t parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t readExternal(DataInput dataInput) {
        return a(g.readExternal(dataInput), r.readExternal(dataInput), (q) n.read(dataInput));
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 6, this);
    }

    @Override // k.b.a.u.g
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.dateTime.equals(tVar.dateTime) && this.offset.equals(tVar.offset) && this.zone.equals(tVar.zone);
    }

    @Override // k.b.a.u.g
    public String format(k.b.a.v.b bVar) {
        return super.format(bVar);
    }

    @Override // k.b.a.u.g, k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19722a[((k.b.a.x.a) iVar).ordinal()];
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

    public c getDayOfWeek() {
        return this.dateTime.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.dateTime.getDayOfYear();
    }

    public int getHour() {
        return this.dateTime.getHour();
    }

    @Override // k.b.a.u.g, k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19722a[((k.b.a.x.a) iVar).ordinal()];
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

    @Override // k.b.a.u.g
    public r getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.dateTime.getSecond();
    }

    public int getYear() {
        return this.dateTime.getYear();
    }

    @Override // k.b.a.u.g
    public q getZone() {
        return this.zone;
    }

    @Override // k.b.a.u.g
    public int hashCode() {
        return (this.dateTime.hashCode() ^ this.offset.hashCode()) ^ Integer.rotateLeft(this.zone.hashCode(), 3);
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return (iVar instanceof k.b.a.x.a) || (iVar != null && iVar.isSupportedBy(this));
    }

    public t minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public t minusHours(long j2) {
        return j2 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j2);
    }

    public t minusMinutes(long j2) {
        return j2 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j2);
    }

    public t minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public t minusNanos(long j2) {
        return j2 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j2);
    }

    public t minusSeconds(long j2) {
        return j2 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j2);
    }

    public t minusWeeks(long j2) {
        return j2 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j2);
    }

    public t minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public t plusDays(long j2) {
        return b(this.dateTime.plusDays(j2));
    }

    public t plusHours(long j2) {
        return a(this.dateTime.plusHours(j2));
    }

    public t plusMinutes(long j2) {
        return a(this.dateTime.plusMinutes(j2));
    }

    public t plusMonths(long j2) {
        return b(this.dateTime.plusMonths(j2));
    }

    public t plusNanos(long j2) {
        return a(this.dateTime.plusNanos(j2));
    }

    public t plusSeconds(long j2) {
        return a(this.dateTime.plusSeconds(j2));
    }

    public t plusWeeks(long j2) {
        return b(this.dateTime.plusWeeks(j2));
    }

    public t plusYears(long j2) {
        return b(this.dateTime.plusYears(j2));
    }

    @Override // k.b.a.u.g, k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.b()) {
            return (R) toLocalDate();
        }
        return (R) super.query(kVar);
    }

    @Override // k.b.a.u.g, k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar != k.b.a.x.a.INSTANT_SECONDS && iVar != k.b.a.x.a.OFFSET_SECONDS) {
                return this.dateTime.range(iVar);
            }
            return iVar.range();
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.g
    public h toLocalTime() {
        return this.dateTime.toLocalTime();
    }

    public k toOffsetDateTime() {
        return k.of(this.dateTime, this.offset);
    }

    @Override // k.b.a.u.g
    public String toString() {
        String str = this.dateTime.toString() + this.offset.toString();
        if (this.offset == this.zone) {
            return str;
        }
        return str + '[' + this.zone.toString() + ']';
    }

    public t truncatedTo(k.b.a.x.l lVar) {
        return b(this.dateTime.truncatedTo(lVar));
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [k.b.a.t] */
    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        t from = from((k.b.a.x.e) dVar);
        if (lVar instanceof k.b.a.x.b) {
            ?? withZoneSameInstant2 = from.withZoneSameInstant2(this.zone);
            if (lVar.isDateBased()) {
                return this.dateTime.until(withZoneSameInstant2.dateTime, lVar);
            }
            return toOffsetDateTime().until(withZoneSameInstant2.toOffsetDateTime(), lVar);
        }
        return lVar.between(this, from);
    }

    public t withDayOfMonth(int i2) {
        return b(this.dateTime.withDayOfMonth(i2));
    }

    public t withDayOfYear(int i2) {
        return b(this.dateTime.withDayOfYear(i2));
    }

    public t withFixedOffsetZone() {
        if (this.zone.equals(this.offset)) {
            return this;
        }
        g gVar = this.dateTime;
        r rVar = this.offset;
        return new t(gVar, rVar, rVar);
    }

    public t withHour(int i2) {
        return b(this.dateTime.withHour(i2));
    }

    public t withMinute(int i2) {
        return b(this.dateTime.withMinute(i2));
    }

    public t withMonth(int i2) {
        return b(this.dateTime.withMonth(i2));
    }

    public t withNano(int i2) {
        return b(this.dateTime.withNano(i2));
    }

    public t withSecond(int i2) {
        return b(this.dateTime.withSecond(i2));
    }

    public t withYear(int i2) {
        return b(this.dateTime.withYear(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        this.dateTime.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
        this.zone.write(dataOutput);
    }

    public static t now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static t of(g gVar, q qVar) {
        return ofLocal(gVar, qVar, null);
    }

    public static t parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (t) bVar.a(charSequence, FROM);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isDateBased() || lVar.isTimeBased() : lVar != null && lVar.isSupportedBy(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // k.b.a.u.g
    public f toLocalDate() {
        return this.dateTime.toLocalDate();
    }

    @Override // k.b.a.u.g
    /* renamed from: toLocalDateTime, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.c<f> toLocalDateTime2() {
        return this.dateTime;
    }

    @Override // k.b.a.u.g
    /* renamed from: withEarlierOffsetAtOverlap, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.g<f> withEarlierOffsetAtOverlap2() {
        k.b.a.y.d transition = getZone().getRules().getTransition(this.dateTime);
        if (transition != null && transition.isOverlap()) {
            r offsetBefore = transition.getOffsetBefore();
            if (!offsetBefore.equals(this.offset)) {
                return new t(this.dateTime, offsetBefore, this.zone);
            }
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [k.b.a.g] */
    @Override // k.b.a.u.g
    /* renamed from: withLaterOffsetAtOverlap, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.g<f> withLaterOffsetAtOverlap2() {
        k.b.a.y.d transition = getZone().getRules().getTransition(toLocalDateTime2());
        if (transition != null) {
            r offsetAfter = transition.getOffsetAfter();
            if (!offsetAfter.equals(this.offset)) {
                return new t(this.dateTime, offsetAfter, this.zone);
            }
        }
        return this;
    }

    @Override // k.b.a.u.g
    /* renamed from: withZoneSameInstant, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.g<f> withZoneSameInstant2(q qVar) {
        k.b.a.w.d.a(qVar, "zone");
        return this.zone.equals(qVar) ? this : a(this.dateTime.toEpochSecond(this.offset), this.dateTime.getNano(), qVar);
    }

    @Override // k.b.a.u.g
    /* renamed from: withZoneSameLocal, reason: merged with bridge method [inline-methods] */
    public k.b.a.u.g<f> withZoneSameLocal2(q qVar) {
        k.b.a.w.d.a(qVar, "zone");
        return this.zone.equals(qVar) ? this : ofLocal(this.dateTime, qVar, this.offset);
    }

    public static t now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return ofInstant(aVar.instant(), aVar.getZone());
    }

    public static t of(int i2, int i3, int i4, int i5, int i6, int i7, int i8, q qVar) {
        return ofLocal(g.of(i2, i3, i4, i5, i6, i7, i8), qVar, null);
    }

    public static t ofInstant(g gVar, r rVar, q qVar) {
        k.b.a.w.d.a(gVar, "localDateTime");
        k.b.a.w.d.a(rVar, "offset");
        k.b.a.w.d.a(qVar, "zone");
        return a(gVar.toEpochSecond(rVar), gVar.getNano(), qVar);
    }

    @Override // k.b.a.u.g, k.b.a.w.b
    public t minus(k.b.a.x.h hVar) {
        return (t) hVar.subtractFrom(this);
    }

    @Override // k.b.a.u.g, k.b.a.w.b
    public t plus(k.b.a.x.h hVar) {
        return (t) hVar.addTo(this);
    }

    @Override // k.b.a.u.g, k.b.a.w.b, k.b.a.x.d
    public t with(k.b.a.x.f fVar) {
        if (fVar instanceof f) {
            return b(g.of((f) fVar, this.dateTime.toLocalTime()));
        }
        if (fVar instanceof h) {
            return b(g.of(this.dateTime.toLocalDate(), (h) fVar));
        }
        if (fVar instanceof g) {
            return b((g) fVar);
        }
        if (fVar instanceof e) {
            e eVar = (e) fVar;
            return a(eVar.getEpochSecond(), eVar.getNano(), this.zone);
        }
        if (fVar instanceof r) {
            return a((r) fVar);
        }
        return (t) fVar.adjustInto(this);
    }

    private static t a(g gVar, r rVar, q qVar) {
        k.b.a.w.d.a(gVar, "localDateTime");
        k.b.a.w.d.a(rVar, "offset");
        k.b.a.w.d.a(qVar, "zone");
        if ((qVar instanceof r) && !rVar.equals(qVar)) {
            throw new IllegalArgumentException("ZoneId must match ZoneOffset");
        }
        return new t(gVar, rVar, qVar);
    }

    @Override // k.b.a.u.g, k.b.a.w.b, k.b.a.x.d
    public t minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.u.g, k.b.a.x.d
    public t plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            if (lVar.isDateBased()) {
                return b(this.dateTime.plus(j2, lVar));
            }
            return a(this.dateTime.plus(j2, lVar));
        }
        return (t) lVar.addTo(this, j2);
    }

    private t a(g gVar) {
        return ofInstant(gVar, this.offset, this.zone);
    }

    private t a(r rVar) {
        return (rVar.equals(this.offset) || !this.zone.getRules().isValidOffset(this.dateTime, rVar)) ? this : new t(this.dateTime, rVar, this.zone);
    }

    @Override // k.b.a.u.g, k.b.a.x.d
    public t with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            int i2 = b.f19722a[aVar.ordinal()];
            if (i2 == 1) {
                return a(j2, getNano(), this.zone);
            }
            if (i2 != 2) {
                return b(this.dateTime.with(iVar, j2));
            }
            return a(r.ofTotalSeconds(aVar.checkValidIntValue(j2)));
        }
        return (t) iVar.adjustInto(this, j2);
    }
}
