package k.b.a;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: LocalTime.java */
/* loaded from: classes2.dex */
public final class h extends k.b.a.w.c implements k.b.a.x.d, k.b.a.x.f, Comparable<h>, Serializable {
    static final int HOURS_PER_DAY = 24;
    public static final h MAX;
    static final long MICROS_PER_DAY = 86400000000L;
    public static final h MIDNIGHT;
    static final long MILLIS_PER_DAY = 86400000;
    public static final h MIN;
    static final int MINUTES_PER_DAY = 1440;
    static final int MINUTES_PER_HOUR = 60;
    static final long NANOS_PER_DAY = 86400000000000L;
    static final long NANOS_PER_HOUR = 3600000000000L;
    static final long NANOS_PER_MINUTE = 60000000000L;
    static final long NANOS_PER_SECOND = 1000000000;
    public static final h NOON;
    static final int SECONDS_PER_DAY = 86400;
    static final int SECONDS_PER_HOUR = 3600;
    static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte hour;
    private final byte minute;
    private final int nano;
    private final byte second;
    public static final k.b.a.x.k<h> FROM = new a();

    /* renamed from: e, reason: collision with root package name */
    private static final h[] f19698e = new h[24];

    /* compiled from: LocalTime.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<h> {
        a() {
        }

        @Override // k.b.a.x.k
        public h a(k.b.a.x.e eVar) {
            return h.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalTime.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19699a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19700b = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19700b[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19700b[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19700b[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19700b[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19700b[k.b.a.x.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19700b[k.b.a.x.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19700b[k.b.a.x.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f19699a = new int[k.b.a.x.a.values().length];
            try {
                f19699a[k.b.a.x.a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19699a[k.b.a.x.a.NANO_OF_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19699a[k.b.a.x.a.MICRO_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19699a[k.b.a.x.a.MICRO_OF_DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19699a[k.b.a.x.a.MILLI_OF_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19699a[k.b.a.x.a.MILLI_OF_DAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19699a[k.b.a.x.a.SECOND_OF_MINUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19699a[k.b.a.x.a.SECOND_OF_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19699a[k.b.a.x.a.MINUTE_OF_HOUR.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19699a[k.b.a.x.a.MINUTE_OF_DAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19699a[k.b.a.x.a.HOUR_OF_AMPM.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f19699a[k.b.a.x.a.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19699a[k.b.a.x.a.HOUR_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19699a[k.b.a.x.a.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f19699a[k.b.a.x.a.AMPM_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    static {
        int i2 = 0;
        while (true) {
            h[] hVarArr = f19698e;
            if (i2 < hVarArr.length) {
                hVarArr[i2] = new h(i2, 0, 0, 0);
                i2++;
            } else {
                MIDNIGHT = hVarArr[0];
                NOON = hVarArr[12];
                MIN = hVarArr[0];
                MAX = new h(23, 59, 59, o.MAX_VALUE);
                return;
            }
        }
    }

    private h(int i2, int i3, int i4, int i5) {
        this.hour = (byte) i2;
        this.minute = (byte) i3;
        this.second = (byte) i4;
        this.nano = i5;
    }

    private static h a(int i2, int i3, int i4, int i5) {
        if ((i3 | i4 | i5) == 0) {
            return f19698e[i2];
        }
        return new h(i2, i3, i4, i5);
    }

    public static h from(k.b.a.x.e eVar) {
        h hVar = (h) eVar.query(k.b.a.x.j.c());
        if (hVar != null) {
            return hVar;
        }
        throw new k.b.a.b("Unable to obtain LocalTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    public static h now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static h of(int i2, int i3) {
        k.b.a.x.a.HOUR_OF_DAY.checkValidValue(i2);
        if (i3 == 0) {
            return f19698e[i2];
        }
        k.b.a.x.a.MINUTE_OF_HOUR.checkValidValue(i3);
        return new h(i2, i3, 0, 0);
    }

    public static h ofNanoOfDay(long j2) {
        k.b.a.x.a.NANO_OF_DAY.checkValidValue(j2);
        int i2 = (int) (j2 / NANOS_PER_HOUR);
        long j3 = j2 - (i2 * NANOS_PER_HOUR);
        int i3 = (int) (j3 / NANOS_PER_MINUTE);
        long j4 = j3 - (i3 * NANOS_PER_MINUTE);
        int i4 = (int) (j4 / NANOS_PER_SECOND);
        return a(i2, i3, i4, (int) (j4 - (i4 * NANOS_PER_SECOND)));
    }

    public static h ofSecondOfDay(long j2) {
        k.b.a.x.a.SECOND_OF_DAY.checkValidValue(j2);
        int i2 = (int) (j2 / 3600);
        long j3 = j2 - (i2 * SECONDS_PER_HOUR);
        return a(i2, (int) (j3 / 60), (int) (j3 - (r0 * 60)), 0);
    }

    public static h parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.f19774i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static h readExternal(DataInput dataInput) {
        byte readByte;
        int readInt;
        int readByte2 = dataInput.readByte();
        byte b2 = 0;
        if (readByte2 < 0) {
            readByte2 ^= -1;
            readInt = 0;
            readByte = 0;
        } else {
            readByte = dataInput.readByte();
            if (readByte < 0) {
                readByte = readByte ^ (-1) ? 1 : 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    b2 = readByte3 ^ (-1) ? 1 : 0;
                } else {
                    readInt = dataInput.readInt();
                    b2 = readByte3;
                }
            }
            readInt = 0;
        }
        return of(readByte2, readByte, b2, readInt);
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 5, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.NANO_OF_DAY, toNanoOfDay());
    }

    public g atDate(f fVar) {
        return g.of(fVar, this);
    }

    public l atOffset(r rVar) {
        return l.of(this, rVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.hour == hVar.hour && this.minute == hVar.minute && this.second == hVar.second && this.nano == hVar.nano;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return a(iVar);
        }
        return super.get(iVar);
    }

    public int getHour() {
        return this.hour;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar == k.b.a.x.a.NANO_OF_DAY) {
                return toNanoOfDay();
            }
            if (iVar == k.b.a.x.a.MICRO_OF_DAY) {
                return toNanoOfDay() / 1000;
            }
            return a(iVar);
        }
        return iVar.getFrom(this);
    }

    public int getMinute() {
        return this.minute;
    }

    public int getNano() {
        return this.nano;
    }

    public int getSecond() {
        return this.second;
    }

    public int hashCode() {
        long nanoOfDay = toNanoOfDay();
        return (int) (nanoOfDay ^ (nanoOfDay >>> 32));
    }

    public boolean isAfter(h hVar) {
        return compareTo(hVar) > 0;
    }

    public boolean isBefore(h hVar) {
        return compareTo(hVar) < 0;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased();
        }
        return iVar != null && iVar.isSupportedBy(this);
    }

    public h minusHours(long j2) {
        return plusHours(-(j2 % 24));
    }

    public h minusMinutes(long j2) {
        return plusMinutes(-(j2 % 1440));
    }

    public h minusNanos(long j2) {
        return plusNanos(-(j2 % NANOS_PER_DAY));
    }

    public h minusSeconds(long j2) {
        return plusSeconds(-(j2 % 86400));
    }

    public h plusHours(long j2) {
        return j2 == 0 ? this : a(((((int) (j2 % 24)) + this.hour) + 24) % 24, this.minute, this.second, this.nano);
    }

    public h plusMinutes(long j2) {
        if (j2 == 0) {
            return this;
        }
        int i2 = (this.hour * 60) + this.minute;
        int i3 = ((((int) (j2 % 1440)) + i2) + MINUTES_PER_DAY) % MINUTES_PER_DAY;
        return i2 == i3 ? this : a(i3 / 60, i3 % 60, this.second, this.nano);
    }

    public h plusNanos(long j2) {
        if (j2 == 0) {
            return this;
        }
        long nanoOfDay = toNanoOfDay();
        long j3 = (((j2 % NANOS_PER_DAY) + nanoOfDay) + NANOS_PER_DAY) % NANOS_PER_DAY;
        return nanoOfDay == j3 ? this : a((int) (j3 / NANOS_PER_HOUR), (int) ((j3 / NANOS_PER_MINUTE) % 60), (int) ((j3 / NANOS_PER_SECOND) % 60), (int) (j3 % NANOS_PER_SECOND));
    }

    public h plusSeconds(long j2) {
        if (j2 == 0) {
            return this;
        }
        int i2 = (this.hour * 3600) + (this.minute * 60) + this.second;
        int i3 = ((((int) (j2 % 86400)) + i2) + SECONDS_PER_DAY) % SECONDS_PER_DAY;
        return i2 == i3 ? this : a(i3 / SECONDS_PER_HOUR, (i3 / 60) % 60, i3 % 60, this.nano);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.NANOS;
        }
        if (kVar == k.b.a.x.j.c()) {
            return this;
        }
        if (kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.d() || kVar == k.b.a.x.j.b()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        return super.range(iVar);
    }

    public long toNanoOfDay() {
        return (this.hour * NANOS_PER_HOUR) + (this.minute * NANOS_PER_MINUTE) + (this.second * NANOS_PER_SECOND) + this.nano;
    }

    public int toSecondOfDay() {
        return (this.hour * 3600) + (this.minute * 60) + this.second;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b2 = this.hour;
        byte b3 = this.minute;
        byte b4 = this.second;
        int i2 = this.nano;
        sb.append(b2 < 10 ? ZimPlatform.REASON_0 : "");
        sb.append((int) b2);
        sb.append(b3 < 10 ? ":0" : ":");
        sb.append((int) b3);
        if (b4 > 0 || i2 > 0) {
            sb.append(b4 >= 10 ? ":" : ":0");
            sb.append((int) b4);
            if (i2 > 0) {
                sb.append('.');
                if (i2 % 1000000 == 0) {
                    sb.append(Integer.toString((i2 / 1000000) + 1000).substring(1));
                } else if (i2 % 1000 == 0) {
                    sb.append(Integer.toString((i2 / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i2 + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    public h truncatedTo(k.b.a.x.l lVar) {
        if (lVar == k.b.a.x.b.NANOS) {
            return this;
        }
        d duration = lVar.getDuration();
        if (duration.getSeconds() <= 86400) {
            long nanos = duration.toNanos();
            if (NANOS_PER_DAY % nanos == 0) {
                return ofNanoOfDay((toNanoOfDay() / nanos) * nanos);
            }
            throw new k.b.a.b("Unit must divide into a standard day without remainder");
        }
        throw new k.b.a.b("Unit is too large to be used for truncation");
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        h from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            long nanoOfDay = from.toNanoOfDay() - toNanoOfDay();
            switch (b.f19700b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return nanoOfDay;
                case 2:
                    return nanoOfDay / 1000;
                case 3:
                    return nanoOfDay / 1000000;
                case 4:
                    return nanoOfDay / NANOS_PER_SECOND;
                case 5:
                    return nanoOfDay / NANOS_PER_MINUTE;
                case 6:
                    return nanoOfDay / NANOS_PER_HOUR;
                case 7:
                    return nanoOfDay / 43200000000000L;
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return lVar.between(this, from);
    }

    public h withHour(int i2) {
        if (this.hour == i2) {
            return this;
        }
        k.b.a.x.a.HOUR_OF_DAY.checkValidValue(i2);
        return a(i2, this.minute, this.second, this.nano);
    }

    public h withMinute(int i2) {
        if (this.minute == i2) {
            return this;
        }
        k.b.a.x.a.MINUTE_OF_HOUR.checkValidValue(i2);
        return a(this.hour, i2, this.second, this.nano);
    }

    public h withNano(int i2) {
        if (this.nano == i2) {
            return this;
        }
        k.b.a.x.a.NANO_OF_SECOND.checkValidValue(i2);
        return a(this.hour, this.minute, this.second, i2);
    }

    public h withSecond(int i2) {
        if (this.second == i2) {
            return this;
        }
        k.b.a.x.a.SECOND_OF_MINUTE.checkValidValue(i2);
        return a(this.hour, this.minute, i2, this.nano);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        if (this.nano == 0) {
            if (this.second == 0) {
                if (this.minute == 0) {
                    dataOutput.writeByte(this.hour ^ (-1));
                    return;
                } else {
                    dataOutput.writeByte(this.hour);
                    dataOutput.writeByte(this.minute ^ (-1));
                    return;
                }
            }
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(this.second ^ (-1));
            return;
        }
        dataOutput.writeByte(this.hour);
        dataOutput.writeByte(this.minute);
        dataOutput.writeByte(this.second);
        dataOutput.writeInt(this.nano);
    }

    public static h now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static h parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (h) bVar.a(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(h hVar) {
        int a2 = k.b.a.w.d.a((int) this.hour, (int) hVar.hour);
        if (a2 != 0) {
            return a2;
        }
        int a3 = k.b.a.w.d.a((int) this.minute, (int) hVar.minute);
        if (a3 != 0) {
            return a3;
        }
        int a4 = k.b.a.w.d.a((int) this.second, (int) hVar.second);
        return a4 == 0 ? k.b.a.w.d.a(this.nano, hVar.nano) : a4;
    }

    private int a(k.b.a.x.i iVar) {
        switch (b.f19699a[((k.b.a.x.a) iVar).ordinal()]) {
            case 1:
                return this.nano;
            case 2:
                throw new k.b.a.b("Field too large for an int: " + iVar);
            case 3:
                return this.nano / 1000;
            case 4:
                throw new k.b.a.b("Field too large for an int: " + iVar);
            case 5:
                return this.nano / 1000000;
            case 6:
                return (int) (toNanoOfDay() / 1000000);
            case 7:
                return this.second;
            case 8:
                return toSecondOfDay();
            case 9:
                return this.minute;
            case 10:
                return (this.hour * 60) + this.minute;
            case 11:
                return this.hour % 12;
            case 12:
                int i2 = this.hour % 12;
                if (i2 % 12 == 0) {
                    return 12;
                }
                return i2;
            case 13:
                return this.hour;
            case 14:
                byte b2 = this.hour;
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return this.hour / 12;
            default:
                throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
    }

    public static h now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        e instant = aVar.instant();
        long epochSecond = ((instant.getEpochSecond() % 86400) + aVar.getZone().getRules().getOffset(instant).getTotalSeconds()) % 86400;
        if (epochSecond < 0) {
            epochSecond += 86400;
        }
        return ofSecondOfDay(epochSecond, instant.getNano());
    }

    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public h m13minus(k.b.a.x.h hVar) {
        return (h) hVar.subtractFrom(this);
    }

    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public h m14plus(k.b.a.x.h hVar) {
        return (h) hVar.addTo(this);
    }

    @Override // k.b.a.x.d
    public h with(k.b.a.x.f fVar) {
        if (fVar instanceof h) {
            return (h) fVar;
        }
        return (h) fVar.adjustInto(this);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return lVar.isTimeBased();
        }
        return lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.d
    public h minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public h plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19700b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusNanos(j2);
                case 2:
                    return plusNanos((j2 % MICROS_PER_DAY) * 1000);
                case 3:
                    return plusNanos((j2 % MILLIS_PER_DAY) * 1000000);
                case 4:
                    return plusSeconds(j2);
                case 5:
                    return plusMinutes(j2);
                case 6:
                    return plusHours(j2);
                case 7:
                    return plusHours((j2 % 2) * 12);
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return (h) lVar.addTo(this, j2);
    }

    public static h of(int i2, int i3, int i4) {
        k.b.a.x.a.HOUR_OF_DAY.checkValidValue(i2);
        if ((i3 | i4) == 0) {
            return f19698e[i2];
        }
        k.b.a.x.a.MINUTE_OF_HOUR.checkValidValue(i3);
        k.b.a.x.a.SECOND_OF_MINUTE.checkValidValue(i4);
        return new h(i2, i3, i4, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h ofSecondOfDay(long j2, int i2) {
        k.b.a.x.a.SECOND_OF_DAY.checkValidValue(j2);
        k.b.a.x.a.NANO_OF_SECOND.checkValidValue(i2);
        int i3 = (int) (j2 / 3600);
        long j3 = j2 - (i3 * SECONDS_PER_HOUR);
        return a(i3, (int) (j3 / 60), (int) (j3 - (r0 * 60)), i2);
    }

    @Override // k.b.a.x.d
    public h with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            switch (b.f19699a[aVar.ordinal()]) {
                case 1:
                    return withNano((int) j2);
                case 2:
                    return ofNanoOfDay(j2);
                case 3:
                    return withNano(((int) j2) * 1000);
                case 4:
                    return ofNanoOfDay(j2 * 1000);
                case 5:
                    return withNano(((int) j2) * 1000000);
                case 6:
                    return ofNanoOfDay(j2 * 1000000);
                case 7:
                    return withSecond((int) j2);
                case 8:
                    return plusSeconds(j2 - toSecondOfDay());
                case 9:
                    return withMinute((int) j2);
                case 10:
                    return plusMinutes(j2 - ((this.hour * 60) + this.minute));
                case 11:
                    return plusHours(j2 - (this.hour % 12));
                case 12:
                    if (j2 == 12) {
                        j2 = 0;
                    }
                    return plusHours(j2 - (this.hour % 12));
                case 13:
                    return withHour((int) j2);
                case 14:
                    if (j2 == 24) {
                        j2 = 0;
                    }
                    return withHour((int) j2);
                case 15:
                    return plusHours((j2 - (this.hour / 12)) * 12);
                default:
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
            }
        }
        return (h) iVar.adjustInto(this, j2);
    }

    public static h of(int i2, int i3, int i4, int i5) {
        k.b.a.x.a.HOUR_OF_DAY.checkValidValue(i2);
        k.b.a.x.a.MINUTE_OF_HOUR.checkValidValue(i3);
        k.b.a.x.a.SECOND_OF_MINUTE.checkValidValue(i4);
        k.b.a.x.a.NANO_OF_SECOND.checkValidValue(i5);
        return a(i2, i3, i4, i5);
    }
}
