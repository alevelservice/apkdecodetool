package k.b.a;

import java.io.Serializable;

/* compiled from: Clock.java */
/* loaded from: classes2.dex */
public abstract class a {

    /* compiled from: Clock.java */
    /* renamed from: k.b.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0252a extends a implements Serializable {
        private static final long serialVersionUID = 7430389292664866958L;
        private final e instant;
        private final q zone;

        C0252a(e eVar, q qVar) {
            this.instant = eVar;
            this.zone = qVar;
        }

        @Override // k.b.a.a
        public boolean equals(Object obj) {
            if (!(obj instanceof C0252a)) {
                return false;
            }
            C0252a c0252a = (C0252a) obj;
            return this.instant.equals(c0252a.instant) && this.zone.equals(c0252a.zone);
        }

        @Override // k.b.a.a
        public q getZone() {
            return this.zone;
        }

        @Override // k.b.a.a
        public int hashCode() {
            return this.instant.hashCode() ^ this.zone.hashCode();
        }

        @Override // k.b.a.a
        public e instant() {
            return this.instant;
        }

        @Override // k.b.a.a
        public long millis() {
            return this.instant.toEpochMilli();
        }

        public String toString() {
            return "FixedClock[" + this.instant + "," + this.zone + "]";
        }

        @Override // k.b.a.a
        public a withZone(q qVar) {
            return qVar.equals(this.zone) ? this : new C0252a(this.instant, qVar);
        }
    }

    /* compiled from: Clock.java */
    /* loaded from: classes2.dex */
    static final class b extends a implements Serializable {
        private static final long serialVersionUID = 2007484719125426256L;
        private final a baseClock;
        private final k.b.a.d offset;

        b(a aVar, k.b.a.d dVar) {
            this.baseClock = aVar;
            this.offset = dVar;
        }

        @Override // k.b.a.a
        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.baseClock.equals(bVar.baseClock) && this.offset.equals(bVar.offset);
        }

        @Override // k.b.a.a
        public q getZone() {
            return this.baseClock.getZone();
        }

        @Override // k.b.a.a
        public int hashCode() {
            return this.baseClock.hashCode() ^ this.offset.hashCode();
        }

        @Override // k.b.a.a
        public e instant() {
            return this.baseClock.instant().m12plus((k.b.a.x.h) this.offset);
        }

        @Override // k.b.a.a
        public long millis() {
            return k.b.a.w.d.d(this.baseClock.millis(), this.offset.toMillis());
        }

        public String toString() {
            return "OffsetClock[" + this.baseClock + "," + this.offset + "]";
        }

        @Override // k.b.a.a
        public a withZone(q qVar) {
            return qVar.equals(this.baseClock.getZone()) ? this : new b(this.baseClock.withZone(qVar), this.offset);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Clock.java */
    /* loaded from: classes2.dex */
    public static final class c extends a implements Serializable {
        private static final long serialVersionUID = 6740630888130243051L;
        private final q zone;

        c(q qVar) {
            this.zone = qVar;
        }

        @Override // k.b.a.a
        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.zone.equals(((c) obj).zone);
            }
            return false;
        }

        @Override // k.b.a.a
        public q getZone() {
            return this.zone;
        }

        @Override // k.b.a.a
        public int hashCode() {
            return this.zone.hashCode() + 1;
        }

        @Override // k.b.a.a
        public e instant() {
            return e.ofEpochMilli(millis());
        }

        @Override // k.b.a.a
        public long millis() {
            return System.currentTimeMillis();
        }

        public String toString() {
            return "SystemClock[" + this.zone + "]";
        }

        @Override // k.b.a.a
        public a withZone(q qVar) {
            return qVar.equals(this.zone) ? this : new c(qVar);
        }
    }

    /* compiled from: Clock.java */
    /* loaded from: classes2.dex */
    static final class d extends a implements Serializable {
        private static final long serialVersionUID = 6504659149906368850L;
        private final a baseClock;
        private final long tickNanos;

        d(a aVar, long j2) {
            this.baseClock = aVar;
            this.tickNanos = j2;
        }

        @Override // k.b.a.a
        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.baseClock.equals(dVar.baseClock) && this.tickNanos == dVar.tickNanos;
        }

        @Override // k.b.a.a
        public q getZone() {
            return this.baseClock.getZone();
        }

        @Override // k.b.a.a
        public int hashCode() {
            int hashCode = this.baseClock.hashCode();
            long j2 = this.tickNanos;
            return hashCode ^ ((int) (j2 ^ (j2 >>> 32)));
        }

        @Override // k.b.a.a
        public e instant() {
            if (this.tickNanos % 1000000 == 0) {
                long millis = this.baseClock.millis();
                return e.ofEpochMilli(millis - k.b.a.w.d.c(millis, this.tickNanos / 1000000));
            }
            return this.baseClock.instant().minusNanos(k.b.a.w.d.c(r0.getNano(), this.tickNanos));
        }

        @Override // k.b.a.a
        public long millis() {
            long millis = this.baseClock.millis();
            return millis - k.b.a.w.d.c(millis, this.tickNanos / 1000000);
        }

        public String toString() {
            return "TickClock[" + this.baseClock + "," + k.b.a.d.ofNanos(this.tickNanos) + "]";
        }

        @Override // k.b.a.a
        public a withZone(q qVar) {
            return qVar.equals(this.baseClock.getZone()) ? this : new d(this.baseClock.withZone(qVar), this.tickNanos);
        }
    }

    protected a() {
    }

    public static a fixed(e eVar, q qVar) {
        k.b.a.w.d.a(eVar, "fixedInstant");
        k.b.a.w.d.a(qVar, "zone");
        return new C0252a(eVar, qVar);
    }

    public static a offset(a aVar, k.b.a.d dVar) {
        k.b.a.w.d.a(aVar, "baseClock");
        k.b.a.w.d.a(dVar, "offsetDuration");
        return dVar.equals(k.b.a.d.ZERO) ? aVar : new b(aVar, dVar);
    }

    public static a system(q qVar) {
        k.b.a.w.d.a(qVar, "zone");
        return new c(qVar);
    }

    public static a systemDefaultZone() {
        return new c(q.systemDefault());
    }

    public static a systemUTC() {
        return new c(r.UTC);
    }

    public static a tick(a aVar, k.b.a.d dVar) {
        k.b.a.w.d.a(aVar, "baseClock");
        k.b.a.w.d.a(dVar, "tickDuration");
        if (!dVar.isNegative()) {
            long nanos = dVar.toNanos();
            if (nanos % 1000000 == 0 || 1000000000 % nanos == 0) {
                return nanos <= 1 ? aVar : new d(aVar, nanos);
            }
            throw new IllegalArgumentException("Invalid tick duration");
        }
        throw new IllegalArgumentException("Tick duration must not be negative");
    }

    public static a tickMinutes(q qVar) {
        return new d(system(qVar), 60000000000L);
    }

    public static a tickSeconds(q qVar) {
        return new d(system(qVar), 1000000000L);
    }

    public abstract boolean equals(Object obj);

    public abstract q getZone();

    public abstract int hashCode();

    public abstract e instant();

    public abstract long millis();

    public abstract a withZone(q qVar);
}
