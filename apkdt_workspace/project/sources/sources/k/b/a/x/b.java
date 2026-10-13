package k.b.a.x;

/* compiled from: ChronoUnit.java */
/* loaded from: classes2.dex */
public enum b implements l {
    NANOS("Nanos", k.b.a.d.ofNanos(1)),
    MICROS("Micros", k.b.a.d.ofNanos(1000)),
    MILLIS("Millis", k.b.a.d.ofNanos(1000000)),
    SECONDS("Seconds", k.b.a.d.ofSeconds(1)),
    MINUTES("Minutes", k.b.a.d.ofSeconds(60)),
    HOURS("Hours", k.b.a.d.ofSeconds(3600)),
    HALF_DAYS("HalfDays", k.b.a.d.ofSeconds(43200)),
    DAYS("Days", k.b.a.d.ofSeconds(86400)),
    WEEKS("Weeks", k.b.a.d.ofSeconds(604800)),
    MONTHS("Months", k.b.a.d.ofSeconds(2629746)),
    YEARS("Years", k.b.a.d.ofSeconds(31556952)),
    DECADES("Decades", k.b.a.d.ofSeconds(315569520)),
    CENTURIES("Centuries", k.b.a.d.ofSeconds(3155695200L)),
    MILLENNIA("Millennia", k.b.a.d.ofSeconds(31556952000L)),
    ERAS("Eras", k.b.a.d.ofSeconds(31556952000000000L)),
    FOREVER("Forever", k.b.a.d.ofSeconds(Long.MAX_VALUE, 999999999));

    private final k.b.a.d duration;
    private final String name;

    b(String str, k.b.a.d dVar) {
        this.name = str;
        this.duration = dVar;
    }

    @Override // k.b.a.x.l
    public <R extends d> R addTo(R r, long j2) {
        return (R) r.plus(j2, this);
    }

    @Override // k.b.a.x.l
    public long between(d dVar, d dVar2) {
        return dVar.until(dVar2, this);
    }

    @Override // k.b.a.x.l
    public k.b.a.d getDuration() {
        return this.duration;
    }

    @Override // k.b.a.x.l
    public boolean isDateBased() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    @Override // k.b.a.x.l
    public boolean isDurationEstimated() {
        return isDateBased() || this == FOREVER;
    }

    @Override // k.b.a.x.l
    public boolean isSupportedBy(d dVar) {
        if (this == FOREVER) {
            return false;
        }
        if (dVar instanceof k.b.a.u.b) {
            return isDateBased();
        }
        if ((dVar instanceof k.b.a.u.c) || (dVar instanceof k.b.a.u.g)) {
            return true;
        }
        try {
            dVar.plus(1L, this);
            return true;
        } catch (RuntimeException unused) {
            try {
                dVar.plus(-1L, this);
                return true;
            } catch (RuntimeException unused2) {
                return false;
            }
        }
    }

    @Override // k.b.a.x.l
    public boolean isTimeBased() {
        return compareTo(DAYS) < 0;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
