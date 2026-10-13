package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: YearMonth.java */
/* loaded from: classes2.dex */
public final class p extends k.b.a.w.c implements k.b.a.x.d, k.b.a.x.f, Comparable<p>, Serializable {
    public static final k.b.a.x.k<p> FROM = new a();

    /* renamed from: e, reason: collision with root package name */
    private static final k.b.a.v.b f19713e;
    private static final long serialVersionUID = 4183400860270640070L;
    private final int month;
    private final int year;

    /* compiled from: YearMonth.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<p> {
        a() {
        }

        @Override // k.b.a.x.k
        public p a(k.b.a.x.e eVar) {
            return p.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: YearMonth.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19714a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19715b = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19715b[k.b.a.x.b.MONTHS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19715b[k.b.a.x.b.YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19715b[k.b.a.x.b.DECADES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19715b[k.b.a.x.b.CENTURIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19715b[k.b.a.x.b.MILLENNIA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19715b[k.b.a.x.b.ERAS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f19714a = new int[k.b.a.x.a.values().length];
            try {
                f19714a[k.b.a.x.a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19714a[k.b.a.x.a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19714a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19714a[k.b.a.x.a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19714a[k.b.a.x.a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.YEAR, 4, 10, k.b.a.v.j.EXCEEDS_PAD);
        cVar.a('-');
        cVar.a(k.b.a.x.a.MONTH_OF_YEAR, 2);
        f19713e = cVar.i();
    }

    private p(int i2, int i3) {
        this.year = i2;
        this.month = i3;
    }

    private p a(int i2, int i3) {
        return (this.year == i2 && this.month == i3) ? this : new p(i2, i3);
    }

    public static p from(k.b.a.x.e eVar) {
        if (eVar instanceof p) {
            return (p) eVar;
        }
        try {
            if (!k.b.a.u.n.INSTANCE.equals(k.b.a.u.i.from(eVar))) {
                eVar = f.from(eVar);
            }
            return of(eVar.get(k.b.a.x.a.YEAR), eVar.get(k.b.a.x.a.MONTH_OF_YEAR));
        } catch (k.b.a.b unused) {
            throw new k.b.a.b("Unable to obtain YearMonth from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static p now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static p of(int i2, i iVar) {
        k.b.a.w.d.a(iVar, "month");
        return of(i2, iVar.getValue());
    }

    public static p parse(CharSequence charSequence) {
        return parse(charSequence, f19713e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p readExternal(DataInput dataInput) {
        return of(dataInput.readInt(), dataInput.readByte());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 68, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        if (k.b.a.u.i.from(dVar).equals(k.b.a.u.n.INSTANCE)) {
            return dVar.with(k.b.a.x.a.PROLEPTIC_MONTH, a());
        }
        throw new k.b.a.b("Adjustment only supported on ISO date-time");
    }

    public f atDay(int i2) {
        return f.of(this.year, this.month, i2);
    }

    public f atEndOfMonth() {
        return f.of(this.year, this.month, lengthOfMonth());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.year == pVar.year && this.month == pVar.month;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        int i2;
        if (iVar instanceof k.b.a.x.a) {
            int i3 = b.f19714a[((k.b.a.x.a) iVar).ordinal()];
            if (i3 == 1) {
                i2 = this.month;
            } else {
                if (i3 == 2) {
                    return a();
                }
                if (i3 == 3) {
                    int i4 = this.year;
                    if (i4 < 1) {
                        i4 = 1 - i4;
                    }
                    return i4;
                }
                if (i3 != 4) {
                    if (i3 == 5) {
                        return this.year < 1 ? 0 : 1;
                    }
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
                }
                i2 = this.year;
            }
            return i2;
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

    public int hashCode() {
        return this.year ^ (this.month << 27);
    }

    public boolean isAfter(p pVar) {
        return compareTo(pVar) > 0;
    }

    public boolean isBefore(p pVar) {
        return compareTo(pVar) < 0;
    }

    public boolean isLeapYear() {
        return k.b.a.u.n.INSTANCE.isLeapYear(this.year);
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.YEAR || iVar == k.b.a.x.a.MONTH_OF_YEAR || iVar == k.b.a.x.a.PROLEPTIC_MONTH || iVar == k.b.a.x.a.YEAR_OF_ERA || iVar == k.b.a.x.a.ERA : iVar != null && iVar.isSupportedBy(this);
    }

    public boolean isValidDay(int i2) {
        return i2 >= 1 && i2 <= lengthOfMonth();
    }

    public int lengthOfMonth() {
        return getMonth().length(isLeapYear());
    }

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    public p minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public p minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public p plusMonths(long j2) {
        if (j2 == 0) {
            return this;
        }
        long j3 = (this.year * 12) + (this.month - 1) + j2;
        return a(k.b.a.x.a.YEAR.checkValidIntValue(k.b.a.w.d.b(j3, 12L)), k.b.a.w.d.a(j3, 12) + 1);
    }

    public p plusYears(long j2) {
        return j2 == 0 ? this : a(k.b.a.x.a.YEAR.checkValidIntValue(this.year + j2), this.month);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) k.b.a.u.n.INSTANCE;
        }
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.MONTHS;
        }
        if (kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return (R) super.query(kVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.YEAR_OF_ERA) {
            return k.b.a.x.n.of(1L, getYear() <= 0 ? 1000000000L : 999999999L);
        }
        return super.range(iVar);
    }

    public String toString() {
        int abs = Math.abs(this.year);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.year;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i2 + e.b.b.a.a.a.c.DEBUG_INT);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.year);
        }
        sb.append(this.month < 10 ? "-0" : "-");
        sb.append(this.month);
        return sb.toString();
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        p from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            long a2 = from.a() - a();
            switch (b.f19715b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return a2;
                case 2:
                    return a2 / 12;
                case 3:
                    return a2 / 120;
                case 4:
                    return a2 / 1200;
                case 5:
                    return a2 / 12000;
                case 6:
                    return from.getLong(k.b.a.x.a.ERA) - getLong(k.b.a.x.a.ERA);
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return lVar.between(this, from);
    }

    public p withMonth(int i2) {
        k.b.a.x.a.MONTH_OF_YEAR.checkValidValue(i2);
        return a(this.year, i2);
    }

    public p withYear(int i2) {
        k.b.a.x.a.YEAR.checkValidValue(i2);
        return a(i2, this.month);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
    }

    public static p now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static p parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (p) bVar.a(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(p pVar) {
        int i2 = this.year - pVar.year;
        return i2 == 0 ? this.month - pVar.month : i2;
    }

    private long a() {
        return (this.year * 12) + (this.month - 1);
    }

    public static p now(k.b.a.a aVar) {
        f now = f.now(aVar);
        return of(now.getYear(), now.getMonth());
    }

    public static p of(int i2, int i3) {
        k.b.a.x.a.YEAR.checkValidValue(i2);
        k.b.a.x.a.MONTH_OF_YEAR.checkValidValue(i3);
        return new p(i2, i3);
    }

    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public p m19minus(k.b.a.x.h hVar) {
        return (p) hVar.subtractFrom(this);
    }

    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public p m20plus(k.b.a.x.h hVar) {
        return (p) hVar.addTo(this);
    }

    @Override // k.b.a.x.d
    public p with(k.b.a.x.f fVar) {
        return (p) fVar.adjustInto(this);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar == k.b.a.x.b.MONTHS || lVar == k.b.a.x.b.YEARS || lVar == k.b.a.x.b.DECADES || lVar == k.b.a.x.b.CENTURIES || lVar == k.b.a.x.b.MILLENNIA || lVar == k.b.a.x.b.ERAS : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.d
    public p minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public p plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (b.f19715b[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusMonths(j2);
                case 2:
                    return plusYears(j2);
                case 3:
                    return plusYears(k.b.a.w.d.b(j2, 10));
                case 4:
                    return plusYears(k.b.a.w.d.b(j2, 100));
                case 5:
                    return plusYears(k.b.a.w.d.b(j2, 1000));
                case 6:
                    k.b.a.x.a aVar = k.b.a.x.a.ERA;
                    return with((k.b.a.x.i) aVar, k.b.a.w.d.d(getLong(aVar), j2));
                default:
                    throw new k.b.a.x.m("Unsupported unit: " + lVar);
            }
        }
        return (p) lVar.addTo(this, j2);
    }

    @Override // k.b.a.x.d
    public p with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            int i2 = b.f19714a[aVar.ordinal()];
            if (i2 == 1) {
                return withMonth((int) j2);
            }
            if (i2 == 2) {
                return plusMonths(j2 - getLong(k.b.a.x.a.PROLEPTIC_MONTH));
            }
            if (i2 == 3) {
                if (this.year < 1) {
                    j2 = 1 - j2;
                }
                return withYear((int) j2);
            }
            if (i2 == 4) {
                return withYear((int) j2);
            }
            if (i2 == 5) {
                return getLong(k.b.a.x.a.ERA) == j2 ? this : withYear(1 - this.year);
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return (p) iVar.adjustInto(this, j2);
    }
}
