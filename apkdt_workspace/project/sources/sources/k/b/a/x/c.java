package k.b.a.x;

import com.alipay.mobile.security.zim.api.ZIMFacade;
import java.util.Locale;
import java.util.Map;

/* compiled from: IsoFields.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final i f19873a;

    /* renamed from: b, reason: collision with root package name */
    public static final i f19874b;

    /* renamed from: c, reason: collision with root package name */
    public static final i f19875c;

    /* renamed from: d, reason: collision with root package name */
    public static final l f19876d;

    /* renamed from: e, reason: collision with root package name */
    public static final l f19877e;

    /* compiled from: IsoFields.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19878a = new int[EnumC0258c.values().length];

        static {
            try {
                f19878a[EnumC0258c.WEEK_BASED_YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19878a[EnumC0258c.QUARTER_YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IsoFields.java */
    /* loaded from: classes2.dex */
    public static abstract class b implements i {
        public static final b DAY_OF_QUARTER = new a("DAY_OF_QUARTER", 0);
        public static final b QUARTER_OF_YEAR = new C0256b("QUARTER_OF_YEAR", 1);
        public static final b WEEK_OF_WEEK_BASED_YEAR = new C0257c("WEEK_OF_WEEK_BASED_YEAR", 2);
        public static final b WEEK_BASED_YEAR = new d("WEEK_BASED_YEAR", 3);

        /* renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ b[] f19880f = {DAY_OF_QUARTER, QUARTER_OF_YEAR, WEEK_OF_WEEK_BASED_YEAR, WEEK_BASED_YEAR};

        /* renamed from: e, reason: collision with root package name */
        private static final int[] f19879e = {0, 90, 181, 273, 0, 91, 182, 274};

        /* compiled from: IsoFields.java */
        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i2) {
                super(str, i2, null);
            }

            @Override // k.b.a.x.i
            public <R extends k.b.a.x.d> R adjustInto(R r, long j2) {
                long from = getFrom(r);
                range().checkValidValue(j2, this);
                k.b.a.x.a aVar = k.b.a.x.a.DAY_OF_YEAR;
                return (R) r.with(aVar, r.getLong(aVar) + (j2 - from));
            }

            public l getBaseUnit() {
                return k.b.a.x.b.DAYS;
            }

            @Override // k.b.a.x.i
            public long getFrom(e eVar) {
                if (eVar.isSupported(this)) {
                    return eVar.get(k.b.a.x.a.DAY_OF_YEAR) - b.f19879e[((eVar.get(k.b.a.x.a.MONTH_OF_YEAR) - 1) / 3) + (k.b.a.u.n.INSTANCE.isLeapYear(eVar.getLong(k.b.a.x.a.YEAR)) ? 4 : 0)];
                }
                throw new m("Unsupported field: DayOfQuarter");
            }

            public l getRangeUnit() {
                return c.f19877e;
            }

            @Override // k.b.a.x.i
            public boolean isSupportedBy(e eVar) {
                return eVar.isSupported(k.b.a.x.a.DAY_OF_YEAR) && eVar.isSupported(k.b.a.x.a.MONTH_OF_YEAR) && eVar.isSupported(k.b.a.x.a.YEAR) && b.a(eVar);
            }

            @Override // k.b.a.x.i
            public n range() {
                return n.of(1L, 90L, 92L);
            }

            @Override // k.b.a.x.i
            public n rangeRefinedBy(e eVar) {
                if (eVar.isSupported(this)) {
                    long j2 = eVar.getLong(b.QUARTER_OF_YEAR);
                    if (j2 == 1) {
                        return k.b.a.u.n.INSTANCE.isLeapYear(eVar.getLong(k.b.a.x.a.YEAR)) ? n.of(1L, 91L) : n.of(1L, 90L);
                    }
                    if (j2 == 2) {
                        return n.of(1L, 91L);
                    }
                    if (j2 != 3 && j2 != 4) {
                        return range();
                    }
                    return n.of(1L, 92L);
                }
                throw new m("Unsupported field: DayOfQuarter");
            }

            /* JADX WARN: Code restructure failed: missing block: B:21:0x0079, code lost:
            
                if (r0 == 2) goto L19;
             */
            @Override // k.b.a.x.c.b, k.b.a.x.i
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public k.b.a.x.e resolve(java.util.Map<k.b.a.x.i, java.lang.Long> r11, k.b.a.x.e r12, k.b.a.v.i r13) {
                /*
                    r10 = this;
                    k.b.a.x.a r12 = k.b.a.x.a.YEAR
                    java.lang.Object r12 = r11.get(r12)
                    java.lang.Long r12 = (java.lang.Long) r12
                    k.b.a.x.c$b r0 = k.b.a.x.c.b.QUARTER_OF_YEAR
                    java.lang.Object r0 = r11.get(r0)
                    java.lang.Long r0 = (java.lang.Long) r0
                    if (r12 == 0) goto La8
                    if (r0 != 0) goto L16
                    goto La8
                L16:
                    k.b.a.x.a r1 = k.b.a.x.a.YEAR
                    long r2 = r12.longValue()
                    int r12 = r1.checkValidIntValue(r2)
                    k.b.a.x.c$b r1 = k.b.a.x.c.b.DAY_OF_QUARTER
                    java.lang.Object r1 = r11.get(r1)
                    java.lang.Long r1 = (java.lang.Long) r1
                    long r1 = r1.longValue()
                    k.b.a.v.i r3 = k.b.a.v.i.LENIENT
                    r4 = 3
                    r5 = 1
                    r7 = 1
                    if (r13 != r3) goto L51
                    long r8 = r0.longValue()
                    k.b.a.f r12 = k.b.a.f.of(r12, r7, r7)
                    long r7 = k.b.a.w.d.f(r8, r5)
                    long r3 = k.b.a.w.d.b(r7, r4)
                    k.b.a.f r12 = r12.plusMonths(r3)
                    long r0 = k.b.a.w.d.f(r1, r5)
                    k.b.a.f r12 = r12.plusDays(r0)
                    goto L9a
                L51:
                    k.b.a.x.c$b r3 = k.b.a.x.c.b.QUARTER_OF_YEAR
                    k.b.a.x.n r3 = r3.range()
                    long r8 = r0.longValue()
                    k.b.a.x.c$b r0 = k.b.a.x.c.b.QUARTER_OF_YEAR
                    int r0 = r3.checkValidIntValue(r8, r0)
                    k.b.a.v.i r3 = k.b.a.v.i.STRICT
                    if (r13 != r3) goto L86
                    r13 = 92
                    r3 = 91
                    if (r0 != r7) goto L78
                    k.b.a.u.n r13 = k.b.a.u.n.INSTANCE
                    long r8 = (long) r12
                    boolean r13 = r13.isLeapYear(r8)
                    if (r13 == 0) goto L75
                    goto L7b
                L75:
                    r13 = 90
                    goto L7d
                L78:
                    r8 = 2
                    if (r0 != r8) goto L7d
                L7b:
                    r13 = 91
                L7d:
                    long r8 = (long) r13
                    k.b.a.x.n r13 = k.b.a.x.n.of(r5, r8)
                    r13.checkValidValue(r1, r10)
                    goto L8d
                L86:
                    k.b.a.x.n r13 = r10.range()
                    r13.checkValidValue(r1, r10)
                L8d:
                    int r0 = r0 - r7
                    int r0 = r0 * 3
                    int r0 = r0 + r7
                    k.b.a.f r12 = k.b.a.f.of(r12, r0, r7)
                    long r1 = r1 - r5
                    k.b.a.f r12 = r12.plusDays(r1)
                L9a:
                    r11.remove(r10)
                    k.b.a.x.a r13 = k.b.a.x.a.YEAR
                    r11.remove(r13)
                    k.b.a.x.c$b r13 = k.b.a.x.c.b.QUARTER_OF_YEAR
                    r11.remove(r13)
                    return r12
                La8:
                    r11 = 0
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: k.b.a.x.c.b.a.resolve(java.util.Map, k.b.a.x.e, k.b.a.v.i):k.b.a.x.e");
            }

            @Override // java.lang.Enum
            public String toString() {
                return "DayOfQuarter";
            }
        }

        /* compiled from: IsoFields.java */
        /* renamed from: k.b.a.x.c$b$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0256b extends b {
            C0256b(String str, int i2) {
                super(str, i2, null);
            }

            @Override // k.b.a.x.i
            public <R extends k.b.a.x.d> R adjustInto(R r, long j2) {
                long from = getFrom(r);
                range().checkValidValue(j2, this);
                k.b.a.x.a aVar = k.b.a.x.a.MONTH_OF_YEAR;
                return (R) r.with(aVar, r.getLong(aVar) + ((j2 - from) * 3));
            }

            public l getBaseUnit() {
                return c.f19877e;
            }

            @Override // k.b.a.x.i
            public long getFrom(e eVar) {
                if (eVar.isSupported(this)) {
                    return (eVar.getLong(k.b.a.x.a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new m("Unsupported field: QuarterOfYear");
            }

            public l getRangeUnit() {
                return k.b.a.x.b.YEARS;
            }

            @Override // k.b.a.x.i
            public boolean isSupportedBy(e eVar) {
                return eVar.isSupported(k.b.a.x.a.MONTH_OF_YEAR) && b.a(eVar);
            }

            @Override // k.b.a.x.i
            public n range() {
                return n.of(1L, 4L);
            }

            @Override // k.b.a.x.i
            public n rangeRefinedBy(e eVar) {
                return range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "QuarterOfYear";
            }
        }

        /* compiled from: IsoFields.java */
        /* renamed from: k.b.a.x.c$b$c, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0257c extends b {
            C0257c(String str, int i2) {
                super(str, i2, null);
            }

            @Override // k.b.a.x.i
            public <R extends k.b.a.x.d> R adjustInto(R r, long j2) {
                range().checkValidValue(j2, this);
                return (R) r.plus(k.b.a.w.d.f(j2, getFrom(r)), k.b.a.x.b.WEEKS);
            }

            public l getBaseUnit() {
                return k.b.a.x.b.WEEKS;
            }

            @Override // k.b.a.x.c.b
            public String getDisplayName(Locale locale) {
                k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
                return "Week";
            }

            @Override // k.b.a.x.i
            public long getFrom(e eVar) {
                if (eVar.isSupported(this)) {
                    return b.a(k.b.a.f.from(eVar));
                }
                throw new m("Unsupported field: WeekOfWeekBasedYear");
            }

            public l getRangeUnit() {
                return c.f19876d;
            }

            @Override // k.b.a.x.i
            public boolean isSupportedBy(e eVar) {
                return eVar.isSupported(k.b.a.x.a.EPOCH_DAY) && b.a(eVar);
            }

            @Override // k.b.a.x.i
            public n range() {
                return n.of(1L, 52L, 53L);
            }

            @Override // k.b.a.x.i
            public n rangeRefinedBy(e eVar) {
                if (eVar.isSupported(this)) {
                    return b.c(k.b.a.f.from(eVar));
                }
                throw new m("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // k.b.a.x.c.b, k.b.a.x.i
            public e resolve(Map<i, Long> map, e eVar, k.b.a.v.i iVar) {
                k.b.a.f with;
                Long l2 = map.get(b.WEEK_BASED_YEAR);
                Long l3 = map.get(k.b.a.x.a.DAY_OF_WEEK);
                if (l2 == null || l3 == null) {
                    return null;
                }
                int checkValidIntValue = b.WEEK_BASED_YEAR.range().checkValidIntValue(l2.longValue(), b.WEEK_BASED_YEAR);
                long longValue = map.get(b.WEEK_OF_WEEK_BASED_YEAR).longValue();
                if (iVar == k.b.a.v.i.LENIENT) {
                    long longValue2 = l3.longValue();
                    long j2 = 0;
                    if (longValue2 > 7) {
                        long j3 = longValue2 - 1;
                        j2 = j3 / 7;
                        longValue2 = (j3 % 7) + 1;
                    } else if (longValue2 < 1) {
                        j2 = (longValue2 / 7) - 1;
                        longValue2 = (longValue2 % 7) + 7;
                    }
                    with = k.b.a.f.of(checkValidIntValue, 1, 4).plusWeeks(longValue - 1).plusWeeks(j2).with((i) k.b.a.x.a.DAY_OF_WEEK, longValue2);
                } else {
                    int checkValidIntValue2 = k.b.a.x.a.DAY_OF_WEEK.checkValidIntValue(l3.longValue());
                    if (iVar == k.b.a.v.i.STRICT) {
                        b.c(k.b.a.f.of(checkValidIntValue, 1, 4)).checkValidValue(longValue, this);
                    } else {
                        range().checkValidValue(longValue, this);
                    }
                    with = k.b.a.f.of(checkValidIntValue, 1, 4).plusWeeks(longValue - 1).with((i) k.b.a.x.a.DAY_OF_WEEK, checkValidIntValue2);
                }
                map.remove(this);
                map.remove(b.WEEK_BASED_YEAR);
                map.remove(k.b.a.x.a.DAY_OF_WEEK);
                return with;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekOfWeekBasedYear";
            }
        }

        /* compiled from: IsoFields.java */
        /* loaded from: classes2.dex */
        enum d extends b {
            d(String str, int i2) {
                super(str, i2, null);
            }

            @Override // k.b.a.x.i
            public <R extends k.b.a.x.d> R adjustInto(R r, long j2) {
                if (isSupportedBy(r)) {
                    int checkValidIntValue = range().checkValidIntValue(j2, b.WEEK_BASED_YEAR);
                    k.b.a.f from = k.b.a.f.from((e) r);
                    int i2 = from.get(k.b.a.x.a.DAY_OF_WEEK);
                    int a2 = b.a(from);
                    if (a2 == 53 && b.a(checkValidIntValue) == 52) {
                        a2 = 52;
                    }
                    return (R) r.with(k.b.a.f.of(checkValidIntValue, 1, 4).plusDays((i2 - r5.get(k.b.a.x.a.DAY_OF_WEEK)) + ((a2 - 1) * 7)));
                }
                throw new m("Unsupported field: WeekBasedYear");
            }

            public l getBaseUnit() {
                return c.f19876d;
            }

            @Override // k.b.a.x.i
            public long getFrom(e eVar) {
                if (eVar.isSupported(this)) {
                    return b.b(k.b.a.f.from(eVar));
                }
                throw new m("Unsupported field: WeekBasedYear");
            }

            public l getRangeUnit() {
                return k.b.a.x.b.FOREVER;
            }

            @Override // k.b.a.x.i
            public boolean isSupportedBy(e eVar) {
                return eVar.isSupported(k.b.a.x.a.EPOCH_DAY) && b.a(eVar);
            }

            @Override // k.b.a.x.i
            public n range() {
                return k.b.a.x.a.YEAR.range();
            }

            @Override // k.b.a.x.i
            public n rangeRefinedBy(e eVar) {
                return k.b.a.x.a.YEAR.range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekBasedYear";
            }
        }

        private b(String str, int i2) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean a(e eVar) {
            return k.b.a.u.i.from(eVar).equals(k.b.a.u.n.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int b(k.b.a.f fVar) {
            int year = fVar.getYear();
            int dayOfYear = fVar.getDayOfYear();
            if (dayOfYear <= 3) {
                return dayOfYear - fVar.getDayOfWeek().ordinal() < -2 ? year - 1 : year;
            }
            if (dayOfYear >= 363) {
                return ((dayOfYear - 363) - (fVar.isLeapYear() ? 1 : 0)) - fVar.getDayOfWeek().ordinal() >= 0 ? year + 1 : year;
            }
            return year;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static n c(k.b.a.f fVar) {
            return n.of(1L, a(b(fVar)));
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f19880f.clone();
        }

        public String getDisplayName(Locale locale) {
            k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
            return toString();
        }

        @Override // k.b.a.x.i
        public boolean isDateBased() {
            return true;
        }

        @Override // k.b.a.x.i
        public boolean isTimeBased() {
            return false;
        }

        @Override // k.b.a.x.i
        public e resolve(Map<i, Long> map, e eVar, k.b.a.v.i iVar) {
            return null;
        }

        /* synthetic */ b(String str, int i2, a aVar) {
            this(str, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int a(int i2) {
            k.b.a.f of = k.b.a.f.of(i2, 1, 1);
            if (of.getDayOfWeek() != k.b.a.c.THURSDAY) {
                return (of.getDayOfWeek() == k.b.a.c.WEDNESDAY && of.isLeapYear()) ? 53 : 52;
            }
            return 53;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int a(k.b.a.f fVar) {
            int ordinal = fVar.getDayOfWeek().ordinal();
            int dayOfYear = fVar.getDayOfYear() - 1;
            int i2 = (3 - ordinal) + dayOfYear;
            int i3 = (i2 - ((i2 / 7) * 7)) - 3;
            if (i3 < -3) {
                i3 += 7;
            }
            if (dayOfYear < i3) {
                return (int) c(fVar.withDayOfYear(180).minusYears(1L)).getMaximum();
            }
            int i4 = ((dayOfYear - i3) / 7) + 1;
            if (i4 != 53) {
                return i4;
            }
            if (i3 == -3 || (i3 == -2 && fVar.isLeapYear())) {
                return i4;
            }
            return 1;
        }
    }

    /* compiled from: IsoFields.java */
    /* renamed from: k.b.a.x.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private enum EnumC0258c implements l {
        WEEK_BASED_YEARS("WeekBasedYears", k.b.a.d.ofSeconds(31556952)),
        QUARTER_YEARS("QuarterYears", k.b.a.d.ofSeconds(7889238));

        private final k.b.a.d duration;
        private final String name;

        EnumC0258c(String str, k.b.a.d dVar) {
            this.name = str;
            this.duration = dVar;
        }

        @Override // k.b.a.x.l
        public <R extends d> R addTo(R r, long j2) {
            int i2 = a.f19878a[ordinal()];
            if (i2 == 1) {
                return (R) r.with(c.f19875c, k.b.a.w.d.d(r.get(c.f19875c), j2));
            }
            if (i2 == 2) {
                return (R) r.plus(j2 / 256, k.b.a.x.b.YEARS).plus((j2 % 256) * 3, k.b.a.x.b.MONTHS);
            }
            throw new IllegalStateException("Unreachable");
        }

        @Override // k.b.a.x.l
        public long between(d dVar, d dVar2) {
            int i2 = a.f19878a[ordinal()];
            if (i2 == 1) {
                return k.b.a.w.d.f(dVar2.getLong(c.f19875c), dVar.getLong(c.f19875c));
            }
            if (i2 == 2) {
                return dVar.until(dVar2, k.b.a.x.b.MONTHS) / 3;
            }
            throw new IllegalStateException("Unreachable");
        }

        @Override // k.b.a.x.l
        public k.b.a.d getDuration() {
            return this.duration;
        }

        @Override // k.b.a.x.l
        public boolean isDateBased() {
            return true;
        }

        @Override // k.b.a.x.l
        public boolean isDurationEstimated() {
            return true;
        }

        @Override // k.b.a.x.l
        public boolean isSupportedBy(d dVar) {
            return dVar.isSupported(k.b.a.x.a.EPOCH_DAY);
        }

        @Override // k.b.a.x.l
        public boolean isTimeBased() {
            return false;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    static {
        b bVar = b.DAY_OF_QUARTER;
        f19873a = b.QUARTER_OF_YEAR;
        f19874b = b.WEEK_OF_WEEK_BASED_YEAR;
        f19875c = b.WEEK_BASED_YEAR;
        f19876d = EnumC0258c.WEEK_BASED_YEARS;
        f19877e = EnumC0258c.QUARTER_YEARS;
    }
}
