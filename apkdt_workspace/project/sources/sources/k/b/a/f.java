package k.b.a;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: LocalDate.java */
/* loaded from: classes2.dex */
public final class f extends k.b.a.u.b implements k.b.a.x.d, k.b.a.x.f, Serializable {
    static final long DAYS_0000_TO_1970 = 719528;
    private static final long serialVersionUID = 2942565459149668126L;
    private final short day;
    private final short month;
    private final int year;
    public static final f MIN = of(o.MIN_VALUE, 1, 1);
    public static final f MAX = of(o.MAX_VALUE, 12, 31);
    public static final k.b.a.x.k<f> FROM = new a();

    /* compiled from: LocalDate.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<f> {
        a() {
        }

        @Override // k.b.a.x.k
        public f a(k.b.a.x.e eVar) {
            return f.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalDate.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19695a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19696b = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19696b[k.b.a.x.b.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19696b[k.b.a.x.b.WEEKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19696b[k.b.a.x.b.MONTHS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19696b[k.b.a.x.b.YEARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19696b[k.b.a.x.b.DECADES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19696b[k.b.a.x.b.CENTURIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19696b[k.b.a.x.b.MILLENNIA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19696b[k.b.a.x.b.ERAS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f19695a = new int[k.b.a.x.a.values().length];
            try {
                f19695a[k.b.a.x.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19695a[k.b.a.x.a.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19695a[k.b.a.x.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19695a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19695a[k.b.a.x.a.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19695a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19695a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19695a[k.b.a.x.a.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19695a[k.b.a.x.a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19695a[k.b.a.x.a.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f19695a[k.b.a.x.a.PROLEPTIC_MONTH.ordinal()] = 11;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19695a[k.b.a.x.a.YEAR.ordinal()] = 12;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19695a[k.b.a.x.a.ERA.ordinal()] = 13;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    private f(int i2, int i3, int i4) {
        this.year = i2;
        this.month = (short) i3;
        this.day = (short) i4;
    }

    private static f a(int i2, i iVar, int i3) {
        if (i3 <= 28 || i3 <= iVar.length(k.b.a.u.n.INSTANCE.isLeapYear(i2))) {
            return new f(i2, iVar.getValue(), i3);
        }
        if (i3 == 29) {
            throw new k.b.a.b("Invalid date 'February 29' as '" + i2 + "' is not a leap year");
        }
        throw new k.b.a.b("Invalid date '" + iVar.name() + HanziToPinyin.Token.SEPARATOR + i3 + "'");
    }

    public static f from(k.b.a.x.e eVar) {
        f fVar = (f) eVar.query(k.b.a.x.j.b());
        if (fVar != null) {
            return fVar;
        }
        throw new k.b.a.b("Unable to obtain LocalDate from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    public static f now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static f of(int i2, i iVar, int i3) {
        k.b.a.x.a.YEAR.checkValidValue(i2);
        k.b.a.w.d.a(iVar, "month");
        k.b.a.x.a.DAY_OF_MONTH.checkValidValue(i3);
        return a(i2, iVar, i3);
    }

    public static f ofEpochDay(long j2) {
        long j3;
        k.b.a.x.a.EPOCH_DAY.checkValidValue(j2);
        long j4 = (j2 + DAYS_0000_TO_1970) - 60;
        if (j4 < 0) {
            long j5 = ((j4 + 1) / 146097) - 1;
            j3 = j5 * 400;
            j4 += (-j5) * 146097;
        } else {
            j3 = 0;
        }
        long j6 = ((j4 * 400) + 591) / 146097;
        long j7 = j4 - ((((j6 * 365) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        if (j7 < 0) {
            j6--;
            j7 = j4 - ((((365 * j6) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        }
        int i2 = (int) j7;
        int i3 = ((i2 * 5) + 2) / 153;
        return new f(k.b.a.x.a.YEAR.checkValidIntValue(j6 + j3 + (i3 / 10)), ((i3 + 2) % 12) + 1, (i2 - (((i3 * 306) + 5) / 10)) + 1);
    }

    public static f ofYearDay(int i2, int i3) {
        long j2 = i2;
        k.b.a.x.a.YEAR.checkValidValue(j2);
        k.b.a.x.a.DAY_OF_YEAR.checkValidValue(i3);
        boolean isLeapYear = k.b.a.u.n.INSTANCE.isLeapYear(j2);
        if (i3 == 366 && !isLeapYear) {
            throw new k.b.a.b("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        i of = i.of(((i3 - 1) / 31) + 1);
        if (i3 > (of.firstDayOfYear(isLeapYear) + of.length(isLeapYear)) - 1) {
            of = of.plus(1L);
        }
        return a(i2, of, (i3 - of.firstDayOfYear(isLeapYear)) + 1);
    }

    public static f parse(CharSequence charSequence) {
        return parse(charSequence, k.b.a.v.b.f19773h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f readExternal(DataInput dataInput) {
        return of(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 3, this);
    }

    @Override // k.b.a.u.b, k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return super.adjustInto(dVar);
    }

    public g atStartOfDay() {
        return g.of(this, h.MIDNIGHT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int compareTo0(f fVar) {
        int i2 = this.year - fVar.year;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.month - fVar.month;
        return i3 == 0 ? this.day - fVar.day : i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long daysUntil(f fVar) {
        return fVar.toEpochDay() - toEpochDay();
    }

    @Override // k.b.a.u.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && compareTo0((f) obj) == 0;
    }

    @Override // k.b.a.u.b
    public String format(k.b.a.v.b bVar) {
        return super.format(bVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return a(iVar);
        }
        return super.get(iVar);
    }

    public int getDayOfMonth() {
        return this.day;
    }

    public c getDayOfWeek() {
        return c.of(k.b.a.w.d.a(toEpochDay() + 3, 7) + 1);
    }

    public int getDayOfYear() {
        return (getMonth().firstDayOfYear(isLeapYear()) + this.day) - 1;
    }

    @Override // k.b.a.u.b
    public k.b.a.u.j getEra() {
        return super.getEra();
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar == k.b.a.x.a.EPOCH_DAY) {
                return toEpochDay();
            }
            if (iVar == k.b.a.x.a.PROLEPTIC_MONTH) {
                return a();
            }
            return a(iVar);
        }
        return iVar.getFrom(this);
    }

    public i getMonth() {
        return i.of(this.month);
    }

    public int getMonthValue() {
        return this.month;
    }

    public int getYear() {
        return this.year;
    }

    @Override // k.b.a.u.b
    public int hashCode() {
        int i2 = this.year;
        return (((i2 << 11) + (this.month << 6)) + this.day) ^ (i2 & (-2048));
    }

    @Override // k.b.a.u.b
    public boolean isAfter(k.b.a.u.b bVar) {
        if (bVar instanceof f) {
            return compareTo0((f) bVar) > 0;
        }
        return super.isAfter(bVar);
    }

    @Override // k.b.a.u.b
    public boolean isBefore(k.b.a.u.b bVar) {
        if (bVar instanceof f) {
            return compareTo0((f) bVar) < 0;
        }
        return super.isBefore(bVar);
    }

    @Override // k.b.a.u.b
    public boolean isEqual(k.b.a.u.b bVar) {
        if (bVar instanceof f) {
            return compareTo0((f) bVar) == 0;
        }
        return super.isEqual(bVar);
    }

    @Override // k.b.a.u.b
    public boolean isLeapYear() {
        return k.b.a.u.n.INSTANCE.isLeapYear(this.year);
    }

    @Override // k.b.a.u.b, k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return super.isSupported(iVar);
    }

    @Override // k.b.a.u.b
    public int lengthOfMonth() {
        short s = this.month;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : isLeapYear() ? 29 : 28;
    }

    @Override // k.b.a.u.b
    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    public f minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public f minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public f minusWeeks(long j2) {
        return j2 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j2);
    }

    public f minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public f plusDays(long j2) {
        return j2 == 0 ? this : ofEpochDay(k.b.a.w.d.d(toEpochDay(), j2));
    }

    public f plusMonths(long j2) {
        if (j2 == 0) {
            return this;
        }
        long j3 = (this.year * 12) + (this.month - 1) + j2;
        return a(k.b.a.x.a.YEAR.checkValidIntValue(k.b.a.w.d.b(j3, 12L)), k.b.a.w.d.a(j3, 12) + 1, this.day);
    }

    public f plusWeeks(long j2) {
        return plusDays(k.b.a.w.d.b(j2, 7));
    }

    public f plusYears(long j2) {
        return j2 == 0 ? this : a(k.b.a.x.a.YEAR.checkValidIntValue(this.year + j2), this.month, this.day);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.b.a.u.b, k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        return kVar == k.b.a.x.j.b() ? this : (R) super.query(kVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            if (aVar.isDateBased()) {
                int i2 = b.f19695a[aVar.ordinal()];
                if (i2 == 1) {
                    return k.b.a.x.n.of(1L, lengthOfMonth());
                }
                if (i2 == 2) {
                    return k.b.a.x.n.of(1L, lengthOfYear());
                }
                if (i2 == 3) {
                    return k.b.a.x.n.of(1L, (getMonth() != i.FEBRUARY || isLeapYear()) ? 5L : 4L);
                }
                if (i2 != 4) {
                    return iVar.range();
                }
                return k.b.a.x.n.of(1L, getYear() <= 0 ? 1000000000L : 999999999L);
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.b
    public long toEpochDay() {
        long j2;
        long j3 = this.year;
        long j4 = this.month;
        long j5 = (365 * j3) + 0;
        if (j3 >= 0) {
            j2 = j5 + (((3 + j3) / 4) - ((99 + j3) / 100)) + ((j3 + 399) / 400);
        } else {
            j2 = j5 - (((j3 / (-4)) - (j3 / (-100))) + (j3 / (-400)));
        }
        long j6 = j2 + (((367 * j4) - 362) / 12) + (this.day - 1);
        if (j4 > 2) {
            j6--;
            if (!isLeapYear()) {
                j6--;
            }
        }
        return j6 - DAYS_0000_TO_1970;
    }

    @Override // k.b.a.u.b
    public String toString() {
        int i2 = this.year;
        short s = this.month;
        short s2 = this.day;
        int abs = Math.abs(i2);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i2 > 9999) {
                sb.append('+');
            }
            sb.append(i2);
        } else if (i2 < 0) {
            sb.append(i2 - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i2 + e.b.b.a.a.a.c.DEBUG_INT);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 >= 10 ? "-" : "-0");
        sb.append((int) s2);
        return sb.toString();
    }

    public f withDayOfMonth(int i2) {
        return this.day == i2 ? this : of(this.year, this.month, i2);
    }

    public f withDayOfYear(int i2) {
        return getDayOfYear() == i2 ? this : ofYearDay(this.year, i2);
    }

    public f withMonth(int i2) {
        if (this.month == i2) {
            return this;
        }
        k.b.a.x.a.MONTH_OF_YEAR.checkValidValue(i2);
        return a(this.year, i2, this.day);
    }

    public f withYear(int i2) {
        if (this.year == i2) {
            return this;
        }
        k.b.a.x.a.YEAR.checkValidValue(i2);
        return a(i2, this.month, this.day);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    public static f now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static f parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (f) bVar.a(charSequence, FROM);
    }

    public t atStartOfDay(q qVar) {
        k.b.a.y.d transition;
        k.b.a.w.d.a(qVar, "zone");
        g atTime = atTime(h.MIDNIGHT);
        if (!(qVar instanceof r) && (transition = qVar.getRules().getTransition(atTime)) != null && transition.isGap()) {
            atTime = transition.getDateTimeAfter();
        }
        return t.of(atTime, qVar);
    }

    @Override // k.b.a.u.b
    public g atTime(h hVar) {
        return g.of(this, hVar);
    }

    @Override // k.b.a.u.b, java.lang.Comparable
    public int compareTo(k.b.a.u.b bVar) {
        if (bVar instanceof f) {
            return compareTo0((f) bVar);
        }
        return super.compareTo(bVar);
    }

    @Override // k.b.a.u.b
    public k.b.a.u.n getChronology() {
        return k.b.a.u.n.INSTANCE;
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        f from = from((k.b.a.x.e) dVar);
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19696b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return daysUntil(from);
                case 2:
                    return daysUntil(from) / 7;
                case 3:
                    return a(from);
                case 4:
                    return a(from) / 12;
                case 5:
                    return a(from) / 120;
                case 6:
                    return a(from) / 1200;
                case 7:
                    return a(from) / 12000;
                case 8:
                    return from.getLong(k.b.a.x.a.ERA) - getLong(k.b.a.x.a.ERA);
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return lVar.between(this, from);
    }

    public static f now(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return ofEpochDay(k.b.a.w.d.b(aVar.instant().getEpochSecond() + aVar.getZone().getRules().getOffset(r0).getTotalSeconds(), 86400L));
    }

    public g atTime(int i2, int i3) {
        return atTime(h.of(i2, i3));
    }

    public g atTime(int i2, int i3, int i4) {
        return atTime(h.of(i2, i3, i4));
    }

    private static f a(int i2, int i3, int i4) {
        if (i3 == 2) {
            i4 = Math.min(i4, k.b.a.u.n.INSTANCE.isLeapYear((long) i2) ? 29 : 28);
        } else if (i3 == 4 || i3 == 6 || i3 == 9 || i3 == 11) {
            i4 = Math.min(i4, 30);
        }
        return of(i2, i3, i4);
    }

    public static f of(int i2, int i3, int i4) {
        k.b.a.x.a.YEAR.checkValidValue(i2);
        k.b.a.x.a.MONTH_OF_YEAR.checkValidValue(i3);
        k.b.a.x.a.DAY_OF_MONTH.checkValidValue(i4);
        return a(i2, i.of(i3), i4);
    }

    public g atTime(int i2, int i3, int i4, int i5) {
        return atTime(h.of(i2, i3, i4, i5));
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public f minus(k.b.a.x.h hVar) {
        return (f) hVar.subtractFrom(this);
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public f plus(k.b.a.x.h hVar) {
        return (f) hVar.addTo(this);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public f with(k.b.a.x.f fVar) {
        if (fVar instanceof f) {
            return (f) fVar;
        }
        return (f) fVar.adjustInto(this);
    }

    public k atTime(l lVar) {
        return k.of(g.of(this, lVar.toLocalTime()), lVar.getOffset());
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public f minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.u.b, k.b.a.x.d
    public f plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19696b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusDays(j2);
                case 2:
                    return plusWeeks(j2);
                case 3:
                    return plusMonths(j2);
                case 4:
                    return plusYears(j2);
                case 5:
                    return plusYears(k.b.a.w.d.b(j2, 10));
                case 6:
                    return plusYears(k.b.a.w.d.b(j2, 100));
                case 7:
                    return plusYears(k.b.a.w.d.b(j2, 1000));
                case 8:
                    k.b.a.x.a aVar = k.b.a.x.a.ERA;
                    return with((k.b.a.x.i) aVar, k.b.a.w.d.d(getLong(aVar), j2));
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return (f) lVar.addTo(this, j2);
    }

    private int a(k.b.a.x.i iVar) {
        switch (b.f19695a[((k.b.a.x.a) iVar).ordinal()]) {
            case 1:
                return this.day;
            case 2:
                return getDayOfYear();
            case 3:
                return ((this.day - 1) / 7) + 1;
            case 4:
                int i2 = this.year;
                return i2 >= 1 ? i2 : 1 - i2;
            case 5:
                return getDayOfWeek().getValue();
            case 6:
                return ((this.day - 1) % 7) + 1;
            case 7:
                return ((getDayOfYear() - 1) % 7) + 1;
            case 8:
                throw new k.b.a.b("Field too large for an int: " + iVar);
            case 9:
                return ((getDayOfYear() - 1) / 7) + 1;
            case 10:
                return this.month;
            case 11:
                throw new k.b.a.b("Field too large for an int: " + iVar);
            case 12:
                return this.year;
            case 13:
                return this.year >= 1 ? 1 : 0;
            default:
                throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
    }

    @Override // k.b.a.u.b, k.b.a.x.d
    public f with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            switch (b.f19695a[aVar.ordinal()]) {
                case 1:
                    return withDayOfMonth((int) j2);
                case 2:
                    return withDayOfYear((int) j2);
                case 3:
                    return plusWeeks(j2 - getLong(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH));
                case 4:
                    if (this.year < 1) {
                        j2 = 1 - j2;
                    }
                    return withYear((int) j2);
                case 5:
                    return plusDays(j2 - getDayOfWeek().getValue());
                case 6:
                    return plusDays(j2 - getLong(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays(j2 - getLong(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return ofEpochDay(j2);
                case 9:
                    return plusWeeks(j2 - getLong(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR));
                case 10:
                    return withMonth((int) j2);
                case 11:
                    return plusMonths(j2 - getLong(k.b.a.x.a.PROLEPTIC_MONTH));
                case 12:
                    return withYear((int) j2);
                case 13:
                    return getLong(k.b.a.x.a.ERA) == j2 ? this : withYear(1 - this.year);
                default:
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
            }
        }
        return (f) iVar.adjustInto(this, j2);
    }

    @Override // k.b.a.u.b
    public m until(k.b.a.u.b bVar) {
        f from = from((k.b.a.x.e) bVar);
        long a2 = from.a() - a();
        int i2 = from.day - this.day;
        if (a2 > 0 && i2 < 0) {
            a2--;
            i2 = (int) (from.toEpochDay() - plusMonths(a2).toEpochDay());
        } else if (a2 < 0 && i2 > 0) {
            a2++;
            i2 -= from.lengthOfMonth();
        }
        return m.of(k.b.a.w.d.a(a2 / 12), (int) (a2 % 12), i2);
    }

    private long a() {
        return (this.year * 12) + (this.month - 1);
    }

    private long a(f fVar) {
        return (((fVar.a() * 32) + fVar.getDayOfMonth()) - ((a() * 32) + getDayOfMonth())) / 32;
    }
}
