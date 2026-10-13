package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: OffsetTime.java */
/* loaded from: classes2.dex */
public final class l extends k.b.a.w.c implements k.b.a.x.d, k.b.a.x.f, Comparable<l>, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final r offset;
    private final h time;
    public static final l MIN = h.MIN.atOffset(r.MAX);
    public static final l MAX = h.MAX.atOffset(r.MIN);
    public static final k.b.a.x.k<l> FROM = new a();

    /* compiled from: OffsetTime.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<l> {
        a() {
        }

        @Override // k.b.a.x.k
        public l a(k.b.a.x.e eVar) {
            return l.from(eVar);
        }
    }

    /* compiled from: OffsetTime.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19708a = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19708a[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19708a[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19708a[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19708a[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19708a[k.b.a.x.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19708a[k.b.a.x.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19708a[k.b.a.x.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private l(h hVar, r rVar) {
        k.b.a.w.d.a(hVar, "time");
        this.time = hVar;
        k.b.a.w.d.a(rVar, "offset");
        this.offset = rVar;
    }

    private l a(h hVar, r rVar) {
        return (this.time == hVar && this.offset.equals(rVar)) ? this : new l(hVar, rVar);
    }

    public static l from(k.b.a.x.e eVar) {
        if (eVar instanceof l) {
            return (l) eVar;
        }
        try {
            return new l(h.from(eVar), r.from(eVar));
        } catch (k.b.a.b unused) {
            throw new k.b.a.b("Unable to obtain OffsetTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static l now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static l of(h hVar, r rVar) {
        return new l(hVar, rVar);
    }

    public static l ofInstant(e eVar, q qVar) {
        k.b.a.w.d.a(eVar, "instant");
        k.b.a.w.d.a(qVar, "zone");
        r offset = qVar.getRules().getOffset(eVar);
        long epochSecond = ((eVar.getEpochSecond() % 86400) + offset.getTotalSeconds()) % 86400;
        if (epochSecond < 0) {
            epochSecond += 86400;
        }
        return new l(h.ofSecondOfDay(epochSecond, eVar.getNano()), offset);
    }

    public static l parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.f19775j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l readExternal(DataInput dataInput) {
        return of(h.readExternal(dataInput), r.readExternal(dataInput));
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 66, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.NANO_OF_DAY, this.time.toNanoOfDay()).with(k.b.a.x.a.OFFSET_SECONDS, getOffset().getTotalSeconds());
    }

    public k atDate(f fVar) {
        return k.of(fVar, this.time, this.offset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.time.equals(lVar.time) && this.offset.equals(lVar.offset);
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        return super.get(iVar);
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
                return getOffset().getTotalSeconds();
            }
            return this.time.getLong(iVar);
        }
        return iVar.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public r getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int hashCode() {
        return this.time.hashCode() ^ this.offset.hashCode();
    }

    public boolean isAfter(l lVar) {
        return a() > lVar.a();
    }

    public boolean isBefore(l lVar) {
        return a() < lVar.a();
    }

    public boolean isEqual(l lVar) {
        return a() == lVar.a();
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar.isTimeBased() || iVar == k.b.a.x.a.OFFSET_SECONDS : iVar != null && iVar.isSupportedBy(this);
    }

    public l minusHours(long j2) {
        return a(this.time.minusHours(j2), this.offset);
    }

    public l minusMinutes(long j2) {
        return a(this.time.minusMinutes(j2), this.offset);
    }

    public l minusNanos(long j2) {
        return a(this.time.minusNanos(j2), this.offset);
    }

    public l minusSeconds(long j2) {
        return a(this.time.minusSeconds(j2), this.offset);
    }

    public l plusHours(long j2) {
        return a(this.time.plusHours(j2), this.offset);
    }

    public l plusMinutes(long j2) {
        return a(this.time.plusMinutes(j2), this.offset);
    }

    public l plusNanos(long j2) {
        return a(this.time.plusNanos(j2), this.offset);
    }

    public l plusSeconds(long j2) {
        return a(this.time.plusSeconds(j2), this.offset);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.NANOS;
        }
        if (kVar != k.b.a.x.j.d() && kVar != k.b.a.x.j.f()) {
            if (kVar == k.b.a.x.j.c()) {
                return (R) this.time;
            }
            if (kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.g()) {
                return null;
            }
            return (R) super.query(kVar);
        }
        return (R) getOffset();
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
                return iVar.range();
            }
            return this.time.range(iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    public h toLocalTime() {
        return this.time;
    }

    public String toString() {
        return this.time.toString() + this.offset.toString();
    }

    public l truncatedTo(k.b.a.x.l lVar) {
        return a(this.time.truncatedTo(lVar), this.offset);
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        l from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            long a2 = from.a() - a();
            switch (b.f19708a[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return a2;
                case 2:
                    return a2 / 1000;
                case 3:
                    return a2 / 1000000;
                case 4:
                    return a2 / 1000000000;
                case 5:
                    return a2 / 60000000000L;
                case 6:
                    return a2 / 3600000000000L;
                case 7:
                    return a2 / 43200000000000L;
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return lVar.between(this, from);
    }

    public l withHour(int i2) {
        return a(this.time.withHour(i2), this.offset);
    }

    public l withMinute(int i2) {
        return a(this.time.withMinute(i2), this.offset);
    }

    public l withNano(int i2) {
        return a(this.time.withNano(i2), this.offset);
    }

    public l withOffsetSameInstant(r rVar) {
        if (rVar.equals(this.offset)) {
            return this;
        }
        return new l(this.time.plusSeconds(rVar.getTotalSeconds() - this.offset.getTotalSeconds()), rVar);
    }

    public l withOffsetSameLocal(r rVar) {
        return (rVar == null || !rVar.equals(this.offset)) ? new l(this.time, rVar) : this;
    }

    public l withSecond(int i2) {
        return a(this.time.withSecond(i2), this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        this.time.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
    }

    public static l now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static l of(int i2, int i3, int i4, int i5, r rVar) {
        return new l(h.of(i2, i3, i4, i5), rVar);
    }

    public static l parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (l) bVar.a(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(l lVar) {
        if (this.offset.equals(lVar.offset)) {
            return this.time.compareTo(lVar.time);
        }
        int a2 = k.b.a.w.d.a(a(), lVar.a());
        return a2 == 0 ? this.time.compareTo(lVar.time) : a2;
    }

    private long a() {
        return this.time.toNanoOfDay() - (this.offset.getTotalSeconds() * 1000000000);
    }

    public static l now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        e instant = aVar.instant();
        return ofInstant(instant, aVar.getZone().getRules().getOffset(instant));
    }

    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public l m15minus(k.b.a.x.h hVar) {
        return (l) hVar.subtractFrom(this);
    }

    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public l m16plus(k.b.a.x.h hVar) {
        return (l) hVar.addTo(this);
    }

    @Override // k.b.a.x.d
    public l with(k.b.a.x.f fVar) {
        if (fVar instanceof h) {
            return a((h) fVar, this.offset);
        }
        if (fVar instanceof r) {
            return a(this.time, (r) fVar);
        }
        if (fVar instanceof l) {
            return (l) fVar;
        }
        return (l) fVar.adjustInto(this);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return lVar.isTimeBased();
        }
        return lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.d
    public l minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public l plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return a(this.time.plus(j2, lVar), this.offset);
        }
        return (l) lVar.addTo(this, j2);
    }

    @Override // k.b.a.x.d
    public l with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
                return a(this.time, r.ofTotalSeconds(((k.b.a.x.a) iVar).checkValidIntValue(j2)));
            }
            return a(this.time.with(iVar, j2), this.offset);
        }
        return (l) iVar.adjustInto(this, j2);
    }
}
