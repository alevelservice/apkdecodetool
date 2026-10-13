package k.b.a.u;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ThaiBuddhistChronology.java */
/* loaded from: classes2.dex */
public final class w extends i implements Serializable {
    static final int YEARS_DIFFERENCE = 543;
    private static final long serialVersionUID = 2775954514031616474L;
    public static final w INSTANCE = new w();

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, String[]> f19760h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static final HashMap<String, String[]> f19761i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, String[]> f19762j = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThaiBuddhistChronology.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19763a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19763a[k.b.a.x.a.PROLEPTIC_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19763a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19763a[k.b.a.x.a.YEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        f19760h.put("en", new String[]{"BB", "BE"});
        f19760h.put("th", new String[]{"BB", "BE"});
        f19761i.put("en", new String[]{"B.B.", "B.E."});
        f19761i.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        f19762j.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        f19762j.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private w() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // k.b.a.u.i
    public List<j> eras() {
        return Arrays.asList(y.values());
    }

    @Override // k.b.a.u.i
    public String getCalendarType() {
        return "buddhist";
    }

    @Override // k.b.a.u.i
    public String getId() {
        return "ThaiBuddhist";
    }

    @Override // k.b.a.u.i
    public boolean isLeapYear(long j2) {
        return n.INSTANCE.isLeapYear(j2 - 543);
    }

    @Override // k.b.a.u.i
    public c<x> localDateTime(k.b.a.x.e eVar) {
        return super.localDateTime(eVar);
    }

    @Override // k.b.a.u.i
    public int prolepticYear(j jVar, int i2) {
        if (jVar instanceof y) {
            return jVar == y.BE ? i2 : 1 - i2;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    @Override // k.b.a.u.i
    public k.b.a.x.n range(k.b.a.x.a aVar) {
        int i2 = a.f19763a[aVar.ordinal()];
        if (i2 == 1) {
            k.b.a.x.n range = k.b.a.x.a.PROLEPTIC_MONTH.range();
            return k.b.a.x.n.of(range.getMinimum() + 6516, range.getMaximum() + 6516);
        }
        if (i2 == 2) {
            k.b.a.x.n range2 = k.b.a.x.a.YEAR.range();
            return k.b.a.x.n.of(1L, 1 + (-(range2.getMinimum() + 543)), range2.getMaximum() + 543);
        }
        if (i2 != 3) {
            return aVar.range();
        }
        k.b.a.x.n range3 = k.b.a.x.a.YEAR.range();
        return k.b.a.x.n.of(range3.getMinimum() + 543, range3.getMaximum() + 543);
    }

    @Override // k.b.a.u.i
    public /* bridge */ /* synthetic */ b resolveDate(Map map, k.b.a.v.i iVar) {
        return resolveDate((Map<k.b.a.x.i, Long>) map, iVar);
    }

    @Override // k.b.a.u.i
    public g<x> zonedDateTime(k.b.a.x.e eVar) {
        return super.zonedDateTime(eVar);
    }

    @Override // k.b.a.u.i
    public x dateEpochDay(long j2) {
        return new x(k.b.a.f.ofEpochDay(j2));
    }

    @Override // k.b.a.u.i
    public y eraOf(int i2) {
        return y.of(i2);
    }

    /* JADX WARN: Type inference failed for: r11v20, types: [k.b.a.u.x, k.b.a.w.c] */
    /* JADX WARN: Type inference failed for: r11v35, types: [k.b.a.u.x] */
    /* JADX WARN: Type inference failed for: r11v71, types: [k.b.a.u.x] */
    @Override // k.b.a.u.i
    public x resolveDate(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar) {
        if (map.containsKey(k.b.a.x.a.EPOCH_DAY)) {
            return dateEpochDay(map.remove(k.b.a.x.a.EPOCH_DAY).longValue());
        }
        Long remove = map.remove(k.b.a.x.a.PROLEPTIC_MONTH);
        if (remove != null) {
            if (iVar != k.b.a.v.i.LENIENT) {
                k.b.a.x.a.PROLEPTIC_MONTH.checkValidValue(remove.longValue());
            }
            updateResolveMap(map, k.b.a.x.a.MONTH_OF_YEAR, k.b.a.w.d.a(remove.longValue(), 12) + 1);
            updateResolveMap(map, k.b.a.x.a.YEAR, k.b.a.w.d.b(remove.longValue(), 12L));
        }
        Long remove2 = map.remove(k.b.a.x.a.YEAR_OF_ERA);
        if (remove2 != null) {
            if (iVar != k.b.a.v.i.LENIENT) {
                k.b.a.x.a.YEAR_OF_ERA.checkValidValue(remove2.longValue());
            }
            Long remove3 = map.remove(k.b.a.x.a.ERA);
            if (remove3 == null) {
                Long l2 = map.get(k.b.a.x.a.YEAR);
                if (iVar != k.b.a.v.i.STRICT) {
                    updateResolveMap(map, k.b.a.x.a.YEAR, (l2 == null || l2.longValue() > 0) ? remove2.longValue() : k.b.a.w.d.f(1L, remove2.longValue()));
                } else if (l2 != null) {
                    updateResolveMap(map, k.b.a.x.a.YEAR, l2.longValue() > 0 ? remove2.longValue() : k.b.a.w.d.f(1L, remove2.longValue()));
                } else {
                    map.put(k.b.a.x.a.YEAR_OF_ERA, remove2);
                }
            } else if (remove3.longValue() == 1) {
                updateResolveMap(map, k.b.a.x.a.YEAR, remove2.longValue());
            } else if (remove3.longValue() == 0) {
                updateResolveMap(map, k.b.a.x.a.YEAR, k.b.a.w.d.f(1L, remove2.longValue()));
            } else {
                throw new k.b.a.b("Invalid value for era: " + remove3);
            }
        } else if (map.containsKey(k.b.a.x.a.ERA)) {
            k.b.a.x.a aVar = k.b.a.x.a.ERA;
            aVar.checkValidValue(map.get(aVar).longValue());
        }
        if (!map.containsKey(k.b.a.x.a.YEAR)) {
            return null;
        }
        if (map.containsKey(k.b.a.x.a.MONTH_OF_YEAR)) {
            if (map.containsKey(k.b.a.x.a.DAY_OF_MONTH)) {
                k.b.a.x.a aVar2 = k.b.a.x.a.YEAR;
                int checkValidIntValue = aVar2.checkValidIntValue(map.remove(aVar2).longValue());
                if (iVar == k.b.a.v.i.LENIENT) {
                    return date(checkValidIntValue, 1, 1).plusMonths(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), 1L));
                }
                int checkValidIntValue2 = range(k.b.a.x.a.MONTH_OF_YEAR).checkValidIntValue(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), k.b.a.x.a.MONTH_OF_YEAR);
                int checkValidIntValue3 = range(k.b.a.x.a.DAY_OF_MONTH).checkValidIntValue(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), k.b.a.x.a.DAY_OF_MONTH);
                if (iVar == k.b.a.v.i.SMART && checkValidIntValue3 > 28) {
                    checkValidIntValue3 = Math.min(checkValidIntValue3, date(checkValidIntValue, checkValidIntValue2, 1).lengthOfMonth());
                }
                return date(checkValidIntValue, checkValidIntValue2, checkValidIntValue3);
            }
            if (map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH)) {
                if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH)) {
                    k.b.a.x.a aVar3 = k.b.a.x.a.YEAR;
                    int checkValidIntValue4 = aVar3.checkValidIntValue(map.remove(aVar3).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return date(checkValidIntValue4, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.MONTHS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                    }
                    k.b.a.x.a aVar4 = k.b.a.x.a.MONTH_OF_YEAR;
                    int checkValidIntValue5 = aVar4.checkValidIntValue(map.remove(aVar4).longValue());
                    k.b.a.x.a aVar5 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                    int checkValidIntValue6 = aVar5.checkValidIntValue(map.remove(aVar5).longValue());
                    k.b.a.x.a aVar6 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    x plus = date(checkValidIntValue4, checkValidIntValue5, 1).plus(((checkValidIntValue6 - 1) * 7) + (aVar6.checkValidIntValue(map.remove(aVar6).longValue()) - 1), (k.b.a.x.l) k.b.a.x.b.DAYS);
                    if (iVar != k.b.a.v.i.STRICT || plus.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue5) {
                        return plus;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                }
                if (map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
                    k.b.a.x.a aVar7 = k.b.a.x.a.YEAR;
                    int checkValidIntValue7 = aVar7.checkValidIntValue(map.remove(aVar7).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return date(checkValidIntValue7, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.MONTHS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                    }
                    k.b.a.x.a aVar8 = k.b.a.x.a.MONTH_OF_YEAR;
                    int checkValidIntValue8 = aVar8.checkValidIntValue(map.remove(aVar8).longValue());
                    k.b.a.x.a aVar9 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                    int checkValidIntValue9 = aVar9.checkValidIntValue(map.remove(aVar9).longValue());
                    k.b.a.x.a aVar10 = k.b.a.x.a.DAY_OF_WEEK;
                    x with = date(checkValidIntValue7, checkValidIntValue8, 1).plus(checkValidIntValue9 - 1, (k.b.a.x.l) k.b.a.x.b.WEEKS).with(k.b.a.x.g.a(k.b.a.c.of(aVar10.checkValidIntValue(map.remove(aVar10).longValue()))));
                    if (iVar != k.b.a.v.i.STRICT || with.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue8) {
                        return with;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                }
            }
        }
        if (map.containsKey(k.b.a.x.a.DAY_OF_YEAR)) {
            k.b.a.x.a aVar11 = k.b.a.x.a.YEAR;
            int checkValidIntValue10 = aVar11.checkValidIntValue(map.remove(aVar11).longValue());
            if (iVar == k.b.a.v.i.LENIENT) {
                return dateYearDay(checkValidIntValue10, 1).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_YEAR).longValue(), 1L));
            }
            k.b.a.x.a aVar12 = k.b.a.x.a.DAY_OF_YEAR;
            return dateYearDay(checkValidIntValue10, aVar12.checkValidIntValue(map.remove(aVar12).longValue()));
        }
        if (!map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR)) {
            return null;
        }
        if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR)) {
            k.b.a.x.a aVar13 = k.b.a.x.a.YEAR;
            int checkValidIntValue11 = aVar13.checkValidIntValue(map.remove(aVar13).longValue());
            if (iVar == k.b.a.v.i.LENIENT) {
                return date(checkValidIntValue11, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
            }
            k.b.a.x.a aVar14 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
            int checkValidIntValue12 = aVar14.checkValidIntValue(map.remove(aVar14).longValue());
            k.b.a.x.a aVar15 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
            ?? plusDays = date(checkValidIntValue11, 1, 1).plusDays(((checkValidIntValue12 - 1) * 7) + (aVar15.checkValidIntValue(map.remove(aVar15).longValue()) - 1));
            if (iVar != k.b.a.v.i.STRICT || plusDays.get(k.b.a.x.a.YEAR) == checkValidIntValue11) {
                return plusDays;
            }
            throw new k.b.a.b("Strict mode rejected date parsed to a different year");
        }
        if (!map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
            return null;
        }
        k.b.a.x.a aVar16 = k.b.a.x.a.YEAR;
        int checkValidIntValue13 = aVar16.checkValidIntValue(map.remove(aVar16).longValue());
        if (iVar == k.b.a.v.i.LENIENT) {
            return date(checkValidIntValue13, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
        }
        k.b.a.x.a aVar17 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
        int checkValidIntValue14 = aVar17.checkValidIntValue(map.remove(aVar17).longValue());
        k.b.a.x.a aVar18 = k.b.a.x.a.DAY_OF_WEEK;
        x with2 = date(checkValidIntValue13, 1, 1).plus(checkValidIntValue14 - 1, (k.b.a.x.l) k.b.a.x.b.WEEKS).with(k.b.a.x.g.a(k.b.a.c.of(aVar18.checkValidIntValue(map.remove(aVar18).longValue()))));
        if (iVar != k.b.a.v.i.STRICT || with2.get(k.b.a.x.a.YEAR) == checkValidIntValue13) {
            return with2;
        }
        throw new k.b.a.b("Strict mode rejected date parsed to a different month");
    }

    @Override // k.b.a.u.i
    public g<x> zonedDateTime(k.b.a.e eVar, k.b.a.q qVar) {
        return super.zonedDateTime(eVar, qVar);
    }

    @Override // k.b.a.u.i
    public x dateYearDay(j jVar, int i2, int i3) {
        return (x) super.dateYearDay(jVar, i2, i3);
    }

    @Override // k.b.a.u.i
    public x date(j jVar, int i2, int i3, int i4) {
        return (x) super.date(jVar, i2, i3, i4);
    }

    @Override // k.b.a.u.i
    public x dateNow() {
        return (x) super.dateNow();
    }

    @Override // k.b.a.u.i
    public x dateYearDay(int i2, int i3) {
        return new x(k.b.a.f.ofYearDay(i2 - 543, i3));
    }

    @Override // k.b.a.u.i
    public x date(int i2, int i3, int i4) {
        return new x(k.b.a.f.of(i2 - 543, i3, i4));
    }

    @Override // k.b.a.u.i
    public x dateNow(k.b.a.q qVar) {
        return (x) super.dateNow(qVar);
    }

    @Override // k.b.a.u.i
    public x date(k.b.a.x.e eVar) {
        if (eVar instanceof x) {
            return (x) eVar;
        }
        return new x(k.b.a.f.from(eVar));
    }

    @Override // k.b.a.u.i
    public x dateNow(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return (x) super.dateNow(aVar);
    }
}
