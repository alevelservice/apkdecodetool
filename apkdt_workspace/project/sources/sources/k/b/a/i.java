package k.b.a;

import java.util.Locale;

/* compiled from: Month.java */
/* loaded from: classes2.dex */
public enum i implements k.b.a.x.e, k.b.a.x.f {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;

    public static final k.b.a.x.k<i> FROM = new k.b.a.x.k<i>() { // from class: k.b.a.i.a
        @Override // k.b.a.x.k
        public i a(k.b.a.x.e eVar) {
            return i.from(eVar);
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private static final i[] f19701e = values();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Month.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19703a = new int[i.values().length];

        static {
            try {
                f19703a[i.FEBRUARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19703a[i.APRIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19703a[i.JUNE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19703a[i.SEPTEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19703a[i.NOVEMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19703a[i.JANUARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19703a[i.MARCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19703a[i.MAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19703a[i.JULY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19703a[i.AUGUST.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19703a[i.OCTOBER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19703a[i.DECEMBER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static i from(k.b.a.x.e eVar) {
        if (eVar instanceof i) {
            return (i) eVar;
        }
        try {
            if (!k.b.a.u.n.INSTANCE.equals(k.b.a.u.i.from(eVar))) {
                eVar = f.from(eVar);
            }
            return of(eVar.get(k.b.a.x.a.MONTH_OF_YEAR));
        } catch (k.b.a.b e2) {
            throw new k.b.a.b("Unable to obtain Month from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e2);
        }
    }

    public static i of(int i2) {
        if (i2 >= 1 && i2 <= 12) {
            return f19701e[i2 - 1];
        }
        throw new k.b.a.b("Invalid value for MonthOfYear: " + i2);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        if (k.b.a.u.i.from(dVar).equals(k.b.a.u.n.INSTANCE)) {
            return dVar.with(k.b.a.x.a.MONTH_OF_YEAR, getValue());
        }
        throw new k.b.a.b("Adjustment only supported on ISO date-time");
    }

    public int firstDayOfYear(boolean z) {
        switch (b.f19703a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    public i firstMonthOfQuarter() {
        return f19701e[(ordinal() / 3) * 3];
    }

    @Override // k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.MONTH_OF_YEAR) {
            return getValue();
        }
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    public String getDisplayName(k.b.a.v.l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.MONTH_OF_YEAR, lVar);
        return cVar.a(locale).a(this);
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.getFrom(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }

    public int getValue() {
        return ordinal() + 1;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.MONTH_OF_YEAR : iVar != null && iVar.isSupportedBy(this);
    }

    public int length(boolean z) {
        int i2 = b.f19703a[ordinal()];
        return i2 != 1 ? (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public int maxLength() {
        int i2 = b.f19703a[ordinal()];
        if (i2 != 1) {
            return (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) ? 30 : 31;
        }
        return 29;
    }

    public int minLength() {
        int i2 = b.f19703a[ordinal()];
        if (i2 != 1) {
            return (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) ? 30 : 31;
        }
        return 28;
    }

    public i minus(long j2) {
        return plus(-(j2 % 12));
    }

    public i plus(long j2) {
        return f19701e[(ordinal() + (((int) (j2 % 12)) + 12)) % 12];
    }

    @Override // k.b.a.x.e
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
        return kVar.a(this);
    }

    @Override // k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.MONTH_OF_YEAR) {
            return iVar.range();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.rangeRefinedBy(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }
}
