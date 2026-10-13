package k.b.a;

import java.util.Locale;

/* compiled from: DayOfWeek.java */
/* loaded from: classes2.dex */
public enum c implements k.b.a.x.e, k.b.a.x.f {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;

    public static final k.b.a.x.k<c> FROM = new k.b.a.x.k<c>() { // from class: k.b.a.c.a
        @Override // k.b.a.x.k
        public c a(k.b.a.x.e eVar) {
            return c.from(eVar);
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private static final c[] f19688e = values();

    public static c from(k.b.a.x.e eVar) {
        if (eVar instanceof c) {
            return (c) eVar;
        }
        try {
            return of(eVar.get(k.b.a.x.a.DAY_OF_WEEK));
        } catch (b e2) {
            throw new b("Unable to obtain DayOfWeek from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e2);
        }
    }

    public static c of(int i2) {
        if (i2 >= 1 && i2 <= 7) {
            return f19688e[i2 - 1];
        }
        throw new b("Invalid value for DayOfWeek: " + i2);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.DAY_OF_WEEK, getValue());
    }

    @Override // k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.DAY_OF_WEEK) {
            return getValue();
        }
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    public String getDisplayName(k.b.a.v.l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.DAY_OF_WEEK, lVar);
        return cVar.a(locale).a(this);
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.DAY_OF_WEEK) {
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
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.DAY_OF_WEEK : iVar != null && iVar.isSupportedBy(this);
    }

    public c minus(long j2) {
        return plus(-(j2 % 7));
    }

    public c plus(long j2) {
        return f19688e[(ordinal() + (((int) (j2 % 7)) + 7)) % 7];
    }

    @Override // k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.DAYS;
        }
        if (kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.DAY_OF_WEEK) {
            return iVar.range();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.rangeRefinedBy(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }
}
