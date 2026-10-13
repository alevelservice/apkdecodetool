package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: Year.java */
/* loaded from: classes2.dex */
public final class o extends k.b.a.w.c implements k.b.a.x.d, k.b.a.x.f, Comparable<o>, Serializable {
    public static final k.b.a.x.k<o> FROM = new a();
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;

    /* renamed from: e, reason: collision with root package name */
    private static final k.b.a.v.b f19710e;
    private static final long serialVersionUID = -23038383694477807L;
    private final int year;

    /* compiled from: Year.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<o> {
        a() {
        }

        @Override // k.b.a.x.k
        public o a(k.b.a.x.e eVar) {
            return o.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Year.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19711a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19712b = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19712b[k.b.a.x.b.YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19712b[k.b.a.x.b.DECADES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19712b[k.b.a.x.b.CENTURIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19712b[k.b.a.x.b.MILLENNIA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19712b[k.b.a.x.b.ERAS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f19711a = new int[k.b.a.x.a.values().length];
            try {
                f19711a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19711a[k.b.a.x.a.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19711a[k.b.a.x.a.ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.YEAR, 4, 10, k.b.a.v.j.EXCEEDS_PAD);
        f19710e = cVar.i();
    }

    private o(int i2) {
        this.year = i2;
    }

    public static o from(k.b.a.x.e eVar) {
        if (eVar instanceof o) {
            return (o) eVar;
        }
        try {
            if (!k.b.a.u.n.INSTANCE.equals(k.b.a.u.i.from(eVar))) {
                eVar = f.from(eVar);
            }
            return of(eVar.get(k.b.a.x.a.YEAR));
        } catch (k.b.a.b unused) {
            throw new k.b.a.b("Unable to obtain Year from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static boolean isLeap(long j2) {
        return (3 & j2) == 0 && (j2 % 100 != 0 || j2 % 400 == 0);
    }

    public static o now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static o of(int i2) {
        k.b.a.x.a.YEAR.checkValidValue(i2);
        return new o(i2);
    }

    public static o parse(CharSequence charSequence) {
        return parse(charSequence, f19710e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o readExternal(DataInput dataInput) {
        return of(dataInput.readInt());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 67, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        if (k.b.a.u.i.from(dVar).equals(k.b.a.u.n.INSTANCE)) {
            return dVar.with(k.b.a.x.a.YEAR, this.year);
        }
        throw new k.b.a.b("Adjustment only supported on ISO date-time");
    }

    public f atDay(int i2) {
        return f.ofYearDay(this.year, i2);
    }

    public p atMonth(i iVar) {
        return p.of(this.year, iVar);
    }

    public f atMonthDay(j jVar) {
        return jVar.atYear(this.year);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && this.year == ((o) obj).year;
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
        if (iVar instanceof k.b.a.x.a) {
            int i2 = b.f19711a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 == 1) {
                int i3 = this.year;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 == 2) {
                return this.year;
            }
            if (i2 == 3) {
                return this.year < 1 ? 0 : 1;
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return iVar.getFrom(this);
    }

    public int getValue() {
        return this.year;
    }

    public int hashCode() {
        return this.year;
    }

    public boolean isAfter(o oVar) {
        return this.year > oVar.year;
    }

    public boolean isBefore(o oVar) {
        return this.year < oVar.year;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.YEAR || iVar == k.b.a.x.a.YEAR_OF_ERA || iVar == k.b.a.x.a.ERA : iVar != null && iVar.isSupportedBy(this);
    }

    public boolean isValidMonthDay(j jVar) {
        return jVar != null && jVar.isValidYear(this.year);
    }

    public int length() {
        return isLeap() ? 366 : 365;
    }

    public o minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public o plusYears(long j2) {
        return j2 == 0 ? this : of(k.b.a.x.a.YEAR.checkValidIntValue(this.year + j2));
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) k.b.a.u.n.INSTANCE;
        }
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.YEARS;
        }
        if (kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return (R) super.query(kVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.YEAR_OF_ERA) {
            return k.b.a.x.n.of(1L, this.year <= 0 ? 1000000000L : 999999999L);
        }
        return super.range(iVar);
    }

    public String toString() {
        return Integer.toString(this.year);
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        o from = from(dVar);
        if (lVar instanceof k.b.a.x.b) {
            long j2 = from.year - this.year;
            int i2 = b.f19712b[((k.b.a.x.b) lVar).ordinal()];
            if (i2 == 1) {
                return j2;
            }
            if (i2 == 2) {
                return j2 / 10;
            }
            if (i2 == 3) {
                return j2 / 100;
            }
            if (i2 == 4) {
                return j2 / 1000;
            }
            if (i2 == 5) {
                return from.getLong(k.b.a.x.a.ERA) - getLong(k.b.a.x.a.ERA);
            }
            throw new k.b.a.x.m("Unsupported unit: " + lVar);
        }
        return lVar.between(this, from);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(this.year);
    }

    public static o now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static o parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (o) bVar.a(charSequence, FROM);
    }

    public p atMonth(int i2) {
        return p.of(this.year, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(o oVar) {
        return this.year - oVar.year;
    }

    public boolean isLeap() {
        return isLeap(this.year);
    }

    public static o now(k.b.a.a aVar) {
        return of(f.now(aVar).getYear());
    }

    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public o m17minus(k.b.a.x.h hVar) {
        return (o) hVar.subtractFrom(this);
    }

    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public o m18plus(k.b.a.x.h hVar) {
        return (o) hVar.addTo(this);
    }

    @Override // k.b.a.x.d
    public o with(k.b.a.x.f fVar) {
        return (o) fVar.adjustInto(this);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar == k.b.a.x.b.YEARS || lVar == k.b.a.x.b.DECADES || lVar == k.b.a.x.b.CENTURIES || lVar == k.b.a.x.b.MILLENNIA || lVar == k.b.a.x.b.ERAS : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.d
    public o minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    @Override // k.b.a.x.d
    public o plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            int i2 = b.f19712b[((k.b.a.x.b) lVar).ordinal()];
            if (i2 == 1) {
                return plusYears(j2);
            }
            if (i2 == 2) {
                return plusYears(k.b.a.w.d.b(j2, 10));
            }
            if (i2 == 3) {
                return plusYears(k.b.a.w.d.b(j2, 100));
            }
            if (i2 == 4) {
                return plusYears(k.b.a.w.d.b(j2, 1000));
            }
            if (i2 == 5) {
                k.b.a.x.a aVar = k.b.a.x.a.ERA;
                return with((k.b.a.x.i) aVar, k.b.a.w.d.d(getLong(aVar), j2));
            }
            throw new k.b.a.x.m("Unsupported unit: " + lVar);
        }
        return (o) lVar.addTo(this, j2);
    }

    @Override // k.b.a.x.d
    public o with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            int i2 = b.f19711a[aVar.ordinal()];
            if (i2 == 1) {
                if (this.year < 1) {
                    j2 = 1 - j2;
                }
                return of((int) j2);
            }
            if (i2 == 2) {
                return of((int) j2);
            }
            if (i2 == 3) {
                return getLong(k.b.a.x.a.ERA) == j2 ? this : of(1 - this.year);
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return (o) iVar.adjustInto(this, j2);
    }
}
