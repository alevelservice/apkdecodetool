package k.b.a.u;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Calendar;

/* compiled from: JapaneseDate.java */
/* loaded from: classes2.dex */
public final class q extends k.b.a.u.a<q> implements Serializable {
    static final k.b.a.f MIN_DATE = k.b.a.f.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* renamed from: f, reason: collision with root package name */
    private transient r f19751f;

    /* renamed from: g, reason: collision with root package name */
    private transient int f19752g;
    private final k.b.a.f isoDate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JapaneseDate.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19753a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19753a[k.b.a.x.a.DAY_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19753a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19753a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19753a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19753a[k.b.a.x.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19753a[k.b.a.x.a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19753a[k.b.a.x.a.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(k.b.a.f fVar) {
        if (!fVar.isBefore(MIN_DATE)) {
            this.f19751f = r.from(fVar);
            this.f19752g = fVar.getYear() - (this.f19751f.startDate().getYear() - 1);
            this.isoDate = fVar;
            return;
        }
        throw new k.b.a.b("Minimum supported date is January 1st Meiji 6");
    }

    private k.b.a.x.n a(int i2) {
        Calendar calendar = Calendar.getInstance(p.LOCALE);
        calendar.set(0, this.f19751f.getValue() + 2);
        calendar.set(this.f19752g, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return k.b.a.x.n.of(calendar.getActualMinimum(i2), calendar.getActualMaximum(i2));
    }

    public static q from(k.b.a.x.e eVar) {
        return p.INSTANCE.date(eVar);
    }

    private long getDayOfYear() {
        int dayOfYear;
        if (this.f19752g == 1) {
            dayOfYear = (this.isoDate.getDayOfYear() - this.f19751f.startDate().getDayOfYear()) + 1;
        } else {
            dayOfYear = this.isoDate.getDayOfYear();
        }
        return dayOfYear;
    }

    public static q now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static q of(r rVar, int i2, int i3, int i4) {
        k.b.a.w.d.a(rVar, "era");
        if (i2 >= 1) {
            k.b.a.f startDate = rVar.startDate();
            k.b.a.f endDate = rVar.endDate();
            k.b.a.f of = k.b.a.f.of((startDate.getYear() - 1) + i2, i3, i4);
            if (!of.isBefore(startDate) && !of.isAfter(endDate)) {
                return new q(rVar, i2, of);
            }
            throw new k.b.a.b("Requested date is outside bounds of era " + rVar);
        }
        throw new k.b.a.b("Invalid YearOfEra: " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q ofYearDay(r rVar, int i2, int i3) {
        k.b.a.w.d.a(rVar, "era");
        if (i2 >= 1) {
            k.b.a.f startDate = rVar.startDate();
            k.b.a.f endDate = rVar.endDate();
            if (i2 == 1 && (i3 = i3 + (startDate.getDayOfYear() - 1)) > startDate.lengthOfYear()) {
                throw new k.b.a.b("DayOfYear exceeds maximum allowed in the first year of era " + rVar);
            }
            k.b.a.f ofYearDay = k.b.a.f.ofYearDay((startDate.getYear() - 1) + i2, i3);
            if (!ofYearDay.isBefore(startDate) && !ofYearDay.isAfter(endDate)) {
                return new q(rVar, i2, ofYearDay);
            }
            throw new k.b.a.b("Requested date is outside bounds of era " + rVar);
        }
        throw new k.b.a.b("Invalid YearOfEra: " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) {
        return p.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.f19751f = r.from(this.isoDate);
        this.f19752g = this.isoDate.getYear() - (this.f19751f.startDate().getYear() - 1);
    }

    private q withYear(int i2) {
        return a(getEra(), i2);
    }

    private Object writeReplace() {
        return new v((byte) 1, this);
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public final c<q> atTime(k.b.a.h hVar) {
        return super.atTime(hVar);
    }

    @Override // k.b.a.u.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            return this.isoDate.equals(((q) obj).isoDate);
        }
        return false;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            switch (a.f19753a[((k.b.a.x.a) iVar).ordinal()]) {
                case 1:
                    return getDayOfYear();
                case 2:
                    return this.f19752g;
                case 3:
                case 4:
                case 5:
                case 6:
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
                case 7:
                    return this.f19751f.getValue();
                default:
                    return this.isoDate.getLong(iVar);
            }
        }
        return iVar.getFrom(this);
    }

    @Override // k.b.a.u.b
    public int hashCode() {
        return getChronology().getId().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // k.b.a.u.b, k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || iVar == k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || iVar == k.b.a.x.a.ALIGNED_WEEK_OF_MONTH || iVar == k.b.a.x.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return super.isSupported(iVar);
    }

    @Override // k.b.a.u.b
    public int lengthOfMonth() {
        return this.isoDate.lengthOfMonth();
    }

    @Override // k.b.a.u.b
    public int lengthOfYear() {
        Calendar calendar = Calendar.getInstance(p.LOCALE);
        calendar.set(0, this.f19751f.getValue() + 2);
        calendar.set(this.f19752g, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return calendar.getActualMaximum(6);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (isSupported(iVar)) {
                k.b.a.x.a aVar = (k.b.a.x.a) iVar;
                int i2 = a.f19753a[aVar.ordinal()];
                if (i2 == 1) {
                    return a(6);
                }
                if (i2 != 2) {
                    return getChronology().range(aVar);
                }
                return a(1);
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.b
    public long toEpochDay() {
        return this.isoDate.toEpochDay();
    }

    @Override // k.b.a.u.a, k.b.a.x.d
    public /* bridge */ /* synthetic */ long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        return super.until(dVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(get(k.b.a.x.a.YEAR));
        dataOutput.writeByte(get(k.b.a.x.a.MONTH_OF_YEAR));
        dataOutput.writeByte(get(k.b.a.x.a.DAY_OF_MONTH));
    }

    public static q now(k.b.a.q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    @Override // k.b.a.u.b
    public p getChronology() {
        return p.INSTANCE;
    }

    @Override // k.b.a.u.b
    public r getEra() {
        return this.f19751f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<q> plusDays(long j2) {
        return a(this.isoDate.plusDays(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<q> plusMonths(long j2) {
        return a(this.isoDate.plusMonths(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<q> plusYears(long j2) {
        return a(this.isoDate.plusYears(j2));
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public e until(b bVar) {
        k.b.a.m until = this.isoDate.until(bVar);
        return getChronology().period(until.getYears(), until.getMonths(), until.getDays());
    }

    public static q now(k.b.a.a aVar) {
        return new q(k.b.a.f.now(aVar));
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public q minus(k.b.a.x.h hVar) {
        return (q) super.minus(hVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public q with(k.b.a.x.f fVar) {
        return (q) super.with(fVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public q minus(long j2, k.b.a.x.l lVar) {
        return (q) super.minus(j2, lVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public q plus(k.b.a.x.h hVar) {
        return (q) super.plus(hVar);
    }

    @Override // k.b.a.u.b, k.b.a.x.d
    public q with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            if (getLong(aVar) == j2) {
                return this;
            }
            int i2 = a.f19753a[aVar.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 7) {
                int checkValidIntValue = getChronology().range(aVar).checkValidIntValue(j2, aVar);
                int i3 = a.f19753a[aVar.ordinal()];
                if (i3 == 1) {
                    return a(this.isoDate.plusDays(checkValidIntValue - getDayOfYear()));
                }
                if (i3 == 2) {
                    return withYear(checkValidIntValue);
                }
                if (i3 == 7) {
                    return a(r.of(checkValidIntValue), this.f19752g);
                }
            }
            return a(this.isoDate.with(iVar, j2));
        }
        return (q) iVar.adjustInto(this, j2);
    }

    private q a(r rVar, int i2) {
        return a(this.isoDate.withYear(p.INSTANCE.prolepticYear(rVar, i2)));
    }

    @Override // k.b.a.u.a, k.b.a.u.b, k.b.a.x.d
    public q plus(long j2, k.b.a.x.l lVar) {
        return (q) super.plus(j2, lVar);
    }

    q(r rVar, int i2, k.b.a.f fVar) {
        if (!fVar.isBefore(MIN_DATE)) {
            this.f19751f = rVar;
            this.f19752g = i2;
            this.isoDate = fVar;
            return;
        }
        throw new k.b.a.b("Minimum supported date is January 1st Meiji 6");
    }

    private q a(k.b.a.f fVar) {
        return fVar.equals(this.isoDate) ? this : new q(fVar);
    }

    public static q of(int i2, int i3, int i4) {
        return new q(k.b.a.f.of(i2, i3, i4));
    }
}
