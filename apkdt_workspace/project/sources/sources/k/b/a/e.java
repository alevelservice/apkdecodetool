package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: Instant.java */
/* loaded from: classes2.dex */
public final class e extends k.b.a.w.c implements k.b.a.x.d, k.b.a.x.f, Comparable<e>, Serializable {
    private static final long serialVersionUID = -665713676816604388L;
    private final int nanos;
    private final long seconds;
    public static final e EPOCH = new e(0, 0);
    public static final e MIN = ofEpochSecond(-31557014167219200L, 0);
    public static final e MAX = ofEpochSecond(31556889864403199L, 999999999);
    public static final k.b.a.x.k<e> FROM = new a();

    /* compiled from: Instant.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<e> {
        a() {
        }

        @Override // k.b.a.x.k
        public e a(k.b.a.x.e eVar) {
            return e.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Instant.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19693a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19694b = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19694b[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19694b[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19694b[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19694b[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19694b[k.b.a.x.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19694b[k.b.a.x.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19694b[k.b.a.x.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19694b[k.b.a.x.b.DAYS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f19693a = new int[k.b.a.x.a.values().length];
            try {
                f19693a[k.b.a.x.a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19693a[k.b.a.x.a.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19693a[k.b.a.x.a.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19693a[k.b.a.x.a.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private e(long j2, int i2) {
        this.seconds = j2;
        this.nanos = i2;
    }

    private static e a(long j2, int i2) {
        if ((i2 | j2) == 0) {
            return EPOCH;
        }
        if (j2 >= -31557014167219200L && j2 <= 31556889864403199L) {
            return new e(j2, i2);
        }
        throw new k.b.a.b("Instant exceeds minimum or maximum instant");
    }

    private long b(e eVar) {
        long f2 = k.b.a.w.d.f(eVar.seconds, this.seconds);
        long j2 = eVar.nanos - this.nanos;
        return (f2 <= 0 || j2 >= 0) ? (f2 >= 0 || j2 <= 0) ? f2 : f2 + 1 : f2 - 1;
    }

    public static e from(k.b.a.x.e eVar) {
        try {
            return ofEpochSecond(eVar.getLong(k.b.a.x.a.INSTANT_SECONDS), eVar.get(k.b.a.x.a.NANO_OF_SECOND));
        } catch (k.b.a.b e2) {
            throw new k.b.a.b("Unable to obtain Instant from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e2);
        }
    }

    public static e now() {
        return k.b.a.a.systemUTC().instant();
    }

    public static e ofEpochMilli(long j2) {
        return a(k.b.a.w.d.b(j2, 1000L), k.b.a.w.d.a(j2, 1000) * 1000000);
    }

    public static e ofEpochSecond(long j2) {
        return a(j2, 0);
    }

    public static e parse(CharSequence charSequence) {
        return (e) k.b.a.v.b.n.a(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e readExternal(DataInput dataInput) {
        return ofEpochSecond(dataInput.readLong(), dataInput.readInt());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 2, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.INSTANT_SECONDS, this.seconds).with(k.b.a.x.a.NANO_OF_SECOND, this.nanos);
    }

    public k atOffset(r rVar) {
        return k.ofInstant(this, rVar);
    }

    public t atZone(q qVar) {
        return t.ofInstant(this, qVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.seconds == eVar.seconds && this.nanos == eVar.nanos;
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19693a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 == 1) {
                return this.nanos;
            }
            if (i2 == 2) {
                return this.nanos / 1000;
            }
            if (i2 == 3) {
                return this.nanos / 1000000;
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return range(iVar).checkValidIntValue(iVar.getFrom(this), iVar);
    }

    public long getEpochSecond() {
        return this.seconds;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        int i2;
        if (iVar instanceof k.b.a.x.a) {
            int i3 = b.f19693a[((k.b.a.x.a) iVar).ordinal()];
            if (i3 == 1) {
                i2 = this.nanos;
            } else if (i3 == 2) {
                i2 = this.nanos / 1000;
            } else {
                if (i3 != 3) {
                    if (i3 == 4) {
                        return this.seconds;
                    }
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
                }
                i2 = this.nanos / 1000000;
            }
            return i2;
        }
        return iVar.getFrom(this);
    }

    public int getNano() {
        return this.nanos;
    }

    public int hashCode() {
        long j2 = this.seconds;
        return ((int) (j2 ^ (j2 >>> 32))) + (this.nanos * 51);
    }

    public boolean isAfter(e eVar) {
        return compareTo(eVar) > 0;
    }

    public boolean isBefore(e eVar) {
        return compareTo(eVar) < 0;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.INSTANT_SECONDS || iVar == k.b.a.x.a.NANO_OF_SECOND || iVar == k.b.a.x.a.MICRO_OF_SECOND || iVar == k.b.a.x.a.MILLI_OF_SECOND : iVar != null && iVar.isSupportedBy(this);
    }

    public e minusMillis(long j2) {
        if (j2 == Long.MIN_VALUE) {
            return plusMillis(Long.MAX_VALUE).plusMillis(1L);
        }
        return plusMillis(-j2);
    }

    public e minusNanos(long j2) {
        if (j2 == Long.MIN_VALUE) {
            return plusNanos(Long.MAX_VALUE).plusNanos(1L);
        }
        return plusNanos(-j2);
    }

    public e minusSeconds(long j2) {
        if (j2 == Long.MIN_VALUE) {
            return plusSeconds(Long.MAX_VALUE).plusSeconds(1L);
        }
        return plusSeconds(-j2);
    }

    public e plusMillis(long j2) {
        return a(j2 / 1000, (j2 % 1000) * 1000000);
    }

    public e plusNanos(long j2) {
        return a(0L, j2);
    }

    public e plusSeconds(long j2) {
        return a(j2, 0L);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.NANOS;
        }
        if (kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        return super.range(iVar);
    }

    public long toEpochMilli() {
        long j2 = this.seconds;
        if (j2 >= 0) {
            return k.b.a.w.d.d(k.b.a.w.d.e(j2, 1000L), this.nanos / 1000000);
        }
        return k.b.a.w.d.f(k.b.a.w.d.e(j2 + 1, 1000L), 1000 - (this.nanos / 1000000));
    }

    public String toString() {
        return k.b.a.v.b.n.a(this);
    }

    public e truncatedTo(k.b.a.x.l lVar) {
        if (lVar == k.b.a.x.b.NANOS) {
            return this;
        }
        d duration = lVar.getDuration();
        if (duration.getSeconds() <= 86400) {
            long nanos = duration.toNanos();
            if (86400000000000L % nanos == 0) {
                long j2 = ((this.seconds % 86400) * 1000000000) + this.nanos;
                return plusNanos((k.b.a.w.d.b(j2, nanos) * nanos) - j2);
            }
            throw new k.b.a.b("Unit must divide into a standard day without remainder");
        }
        throw new k.b.a.b("Unit is too large to be used for truncation");
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        e from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19694b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return a(from);
                case 2:
                    return a(from) / 1000;
                case 3:
                    return k.b.a.w.d.f(from.toEpochMilli(), toEpochMilli());
                case 4:
                    return b(from);
                case 5:
                    return b(from) / 60;
                case 6:
                    return b(from) / 3600;
                case 7:
                    return b(from) / 43200;
                case 8:
                    return b(from) / 86400;
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return lVar.between(this, from);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    public static e now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return aVar.instant();
    }

    public static e ofEpochSecond(long j2, long j3) {
        return a(k.b.a.w.d.d(j2, k.b.a.w.d.b(j3, 1000000000L)), k.b.a.w.d.a(j3, 1000000000));
    }

    @Override // java.lang.Comparable
    public int compareTo(e eVar) {
        int a2 = k.b.a.w.d.a(this.seconds, eVar.seconds);
        return a2 != 0 ? a2 : this.nanos - eVar.nanos;
    }

    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public e m11minus(k.b.a.x.h hVar) {
        return (e) hVar.subtractFrom(this);
    }

    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public e m12plus(k.b.a.x.h hVar) {
        return (e) hVar.addTo(this);
    }

    @Override // k.b.a.x.d
    public e with(k.b.a.x.f fVar) {
        return (e) fVar.adjustInto(this);
    }

    private e a(long j2, long j3) {
        if ((j2 | j3) == 0) {
            return this;
        }
        return ofEpochSecond(k.b.a.w.d.d(k.b.a.w.d.d(this.seconds, j2), j3 / 1000000000), this.nanos + (j3 % 1000000000));
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isTimeBased() || lVar == k.b.a.x.b.DAYS : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.d
    public e minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public e plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19694b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusNanos(j2);
                case 2:
                    return a(j2 / 1000000, (j2 % 1000000) * 1000);
                case 3:
                    return plusMillis(j2);
                case 4:
                    return plusSeconds(j2);
                case 5:
                    return plusSeconds(k.b.a.w.d.b(j2, 60));
                case 6:
                    return plusSeconds(k.b.a.w.d.b(j2, 3600));
                case 7:
                    return plusSeconds(k.b.a.w.d.b(j2, 43200));
                case 8:
                    return plusSeconds(k.b.a.w.d.b(j2, 86400));
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return (e) lVar.addTo(this, j2);
    }

    @Override // k.b.a.x.d
    public e with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            int i2 = b.f19693a[aVar.ordinal()];
            if (i2 == 1) {
                return j2 != ((long) this.nanos) ? a(this.seconds, (int) j2) : this;
            }
            if (i2 == 2) {
                int i3 = ((int) j2) * 1000;
                return i3 != this.nanos ? a(this.seconds, i3) : this;
            }
            if (i2 == 3) {
                int i4 = ((int) j2) * 1000000;
                return i4 != this.nanos ? a(this.seconds, i4) : this;
            }
            if (i2 == 4) {
                return j2 != this.seconds ? a(j2, this.nanos) : this;
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return (e) iVar.adjustInto(this, j2);
    }

    private long a(e eVar) {
        return k.b.a.w.d.d(k.b.a.w.d.b(k.b.a.w.d.f(eVar.seconds, this.seconds), 1000000000), eVar.nanos - this.nanos);
    }
}
