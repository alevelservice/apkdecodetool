package k.b.a.u;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* compiled from: IsoChronology.java */
/* loaded from: classes2.dex */
public final class n extends i implements Serializable {
    public static final n INSTANCE = new n();
    private static final long serialVersionUID = -1440403870442975015L;

    private n() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // k.b.a.u.i
    public List<j> eras() {
        return Arrays.asList(o.values());
    }

    @Override // k.b.a.u.i
    public String getCalendarType() {
        return "iso8601";
    }

    @Override // k.b.a.u.i
    public String getId() {
        return "ISO";
    }

    @Override // k.b.a.u.i
    public boolean isLeapYear(long j2) {
        return (3 & j2) == 0 && (j2 % 100 != 0 || j2 % 400 == 0);
    }

    @Override // k.b.a.u.i
    public int prolepticYear(j jVar, int i2) {
        if (jVar instanceof o) {
            return jVar == o.CE ? i2 : 1 - i2;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // k.b.a.u.i
    public k.b.a.x.n range(k.b.a.x.a aVar) {
        return aVar.range();
    }

    @Override // k.b.a.u.i
    public /* bridge */ /* synthetic */ b resolveDate(Map map, k.b.a.v.i iVar) {
        return resolveDate((Map<k.b.a.x.i, Long>) map, iVar);
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateEpochDay(long j2) {
        return k.b.a.f.ofEpochDay(j2);
    }

    @Override // k.b.a.u.i
    public o eraOf(int i2) {
        return o.of(i2);
    }

    @Override // k.b.a.u.i
    public k.b.a.g localDateTime(k.b.a.x.e eVar) {
        return k.b.a.g.from(eVar);
    }

    @Override // k.b.a.u.i
    public k.b.a.f resolveDate(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar) {
        if (map.containsKey(k.b.a.x.a.EPOCH_DAY)) {
            return k.b.a.f.ofEpochDay(map.remove(k.b.a.x.a.EPOCH_DAY).longValue());
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
                int a2 = k.b.a.w.d.a(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue());
                int a3 = k.b.a.w.d.a(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue());
                if (iVar == k.b.a.v.i.LENIENT) {
                    return k.b.a.f.of(checkValidIntValue, 1, 1).plusMonths(k.b.a.w.d.f(a2, 1)).plusDays(k.b.a.w.d.f(a3, 1));
                }
                if (iVar == k.b.a.v.i.SMART) {
                    k.b.a.x.a.DAY_OF_MONTH.checkValidValue(a3);
                    if (a2 == 4 || a2 == 6 || a2 == 9 || a2 == 11) {
                        a3 = Math.min(a3, 30);
                    } else if (a2 == 2) {
                        a3 = Math.min(a3, k.b.a.i.FEBRUARY.length(k.b.a.o.isLeap(checkValidIntValue)));
                    }
                    return k.b.a.f.of(checkValidIntValue, a2, a3);
                }
                return k.b.a.f.of(checkValidIntValue, a2, a3);
            }
            if (map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH)) {
                if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH)) {
                    k.b.a.x.a aVar3 = k.b.a.x.a.YEAR;
                    int checkValidIntValue2 = aVar3.checkValidIntValue(map.remove(aVar3).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return k.b.a.f.of(checkValidIntValue2, 1, 1).plusMonths(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L)).plusWeeks(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH).longValue(), 1L));
                    }
                    k.b.a.x.a aVar4 = k.b.a.x.a.MONTH_OF_YEAR;
                    int checkValidIntValue3 = aVar4.checkValidIntValue(map.remove(aVar4).longValue());
                    k.b.a.x.a aVar5 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                    int checkValidIntValue4 = aVar5.checkValidIntValue(map.remove(aVar5).longValue());
                    k.b.a.x.a aVar6 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    k.b.a.f plusDays = k.b.a.f.of(checkValidIntValue2, checkValidIntValue3, 1).plusDays(((checkValidIntValue4 - 1) * 7) + (aVar6.checkValidIntValue(map.remove(aVar6).longValue()) - 1));
                    if (iVar != k.b.a.v.i.STRICT || plusDays.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue3) {
                        return plusDays;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                }
                if (map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
                    k.b.a.x.a aVar7 = k.b.a.x.a.YEAR;
                    int checkValidIntValue5 = aVar7.checkValidIntValue(map.remove(aVar7).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return k.b.a.f.of(checkValidIntValue5, 1, 1).plusMonths(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L)).plusWeeks(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L));
                    }
                    k.b.a.x.a aVar8 = k.b.a.x.a.MONTH_OF_YEAR;
                    int checkValidIntValue6 = aVar8.checkValidIntValue(map.remove(aVar8).longValue());
                    k.b.a.x.a aVar9 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                    int checkValidIntValue7 = aVar9.checkValidIntValue(map.remove(aVar9).longValue());
                    k.b.a.x.a aVar10 = k.b.a.x.a.DAY_OF_WEEK;
                    k.b.a.f with = k.b.a.f.of(checkValidIntValue5, checkValidIntValue6, 1).plusWeeks(checkValidIntValue7 - 1).with(k.b.a.x.g.a(k.b.a.c.of(aVar10.checkValidIntValue(map.remove(aVar10).longValue()))));
                    if (iVar != k.b.a.v.i.STRICT || with.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue6) {
                        return with;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                }
            }
        }
        if (map.containsKey(k.b.a.x.a.DAY_OF_YEAR)) {
            k.b.a.x.a aVar11 = k.b.a.x.a.YEAR;
            int checkValidIntValue8 = aVar11.checkValidIntValue(map.remove(aVar11).longValue());
            if (iVar == k.b.a.v.i.LENIENT) {
                return k.b.a.f.ofYearDay(checkValidIntValue8, 1).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_YEAR).longValue(), 1L));
            }
            k.b.a.x.a aVar12 = k.b.a.x.a.DAY_OF_YEAR;
            return k.b.a.f.ofYearDay(checkValidIntValue8, aVar12.checkValidIntValue(map.remove(aVar12).longValue()));
        }
        if (!map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR)) {
            return null;
        }
        if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR)) {
            k.b.a.x.a aVar13 = k.b.a.x.a.YEAR;
            int checkValidIntValue9 = aVar13.checkValidIntValue(map.remove(aVar13).longValue());
            if (iVar == k.b.a.v.i.LENIENT) {
                return k.b.a.f.of(checkValidIntValue9, 1, 1).plusWeeks(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR).longValue(), 1L));
            }
            k.b.a.x.a aVar14 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
            int checkValidIntValue10 = aVar14.checkValidIntValue(map.remove(aVar14).longValue());
            k.b.a.x.a aVar15 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
            k.b.a.f plusDays2 = k.b.a.f.of(checkValidIntValue9, 1, 1).plusDays(((checkValidIntValue10 - 1) * 7) + (aVar15.checkValidIntValue(map.remove(aVar15).longValue()) - 1));
            if (iVar != k.b.a.v.i.STRICT || plusDays2.get(k.b.a.x.a.YEAR) == checkValidIntValue9) {
                return plusDays2;
            }
            throw new k.b.a.b("Strict mode rejected date parsed to a different year");
        }
        if (!map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
            return null;
        }
        k.b.a.x.a aVar16 = k.b.a.x.a.YEAR;
        int checkValidIntValue11 = aVar16.checkValidIntValue(map.remove(aVar16).longValue());
        if (iVar == k.b.a.v.i.LENIENT) {
            return k.b.a.f.of(checkValidIntValue11, 1, 1).plusWeeks(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L));
        }
        k.b.a.x.a aVar17 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
        int checkValidIntValue12 = aVar17.checkValidIntValue(map.remove(aVar17).longValue());
        k.b.a.x.a aVar18 = k.b.a.x.a.DAY_OF_WEEK;
        k.b.a.f with2 = k.b.a.f.of(checkValidIntValue11, 1, 1).plusWeeks(checkValidIntValue12 - 1).with(k.b.a.x.g.a(k.b.a.c.of(aVar18.checkValidIntValue(map.remove(aVar18).longValue()))));
        if (iVar != k.b.a.v.i.STRICT || with2.get(k.b.a.x.a.YEAR) == checkValidIntValue11) {
            return with2;
        }
        throw new k.b.a.b("Strict mode rejected date parsed to a different month");
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateYearDay(j jVar, int i2, int i3) {
        return dateYearDay(prolepticYear(jVar, i2), i3);
    }

    @Override // k.b.a.u.i
    public k.b.a.t zonedDateTime(k.b.a.x.e eVar) {
        return k.b.a.t.from(eVar);
    }

    @Override // k.b.a.u.i
    public k.b.a.f date(j jVar, int i2, int i3, int i4) {
        return date(prolepticYear(jVar, i2), i3, i4);
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateNow() {
        return dateNow(k.b.a.a.systemDefaultZone());
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateYearDay(int i2, int i3) {
        return k.b.a.f.ofYearDay(i2, i3);
    }

    @Override // k.b.a.u.i
    public k.b.a.t zonedDateTime(k.b.a.e eVar, k.b.a.q qVar) {
        return k.b.a.t.ofInstant(eVar, qVar);
    }

    @Override // k.b.a.u.i
    public k.b.a.f date(int i2, int i3, int i4) {
        return k.b.a.f.of(i2, i3, i4);
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateNow(k.b.a.q qVar) {
        return dateNow(k.b.a.a.system(qVar));
    }

    @Override // k.b.a.u.i
    public k.b.a.f date(k.b.a.x.e eVar) {
        return k.b.a.f.from(eVar);
    }

    @Override // k.b.a.u.i
    public k.b.a.f dateNow(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return date((k.b.a.x.e) k.b.a.f.now(aVar));
    }
}
