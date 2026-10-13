package k.b.a.u;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: JapaneseChronology.java */
/* loaded from: classes2.dex */
public final class p extends i implements Serializable {
    private static final long serialVersionUID = 459996390165777884L;
    static final Locale LOCALE = new Locale("ja", "JP", "JP");
    public static final p INSTANCE = new p();

    /* renamed from: h, reason: collision with root package name */
    private static final Map<String, String[]> f19747h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    private static final Map<String, String[]> f19748i = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    private static final Map<String, String[]> f19749j = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JapaneseChronology.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19750a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19750a[k.b.a.x.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19750a[k.b.a.x.a.DAY_OF_WEEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19750a[k.b.a.x.a.MICRO_OF_DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19750a[k.b.a.x.a.MICRO_OF_SECOND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19750a[k.b.a.x.a.HOUR_OF_DAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19750a[k.b.a.x.a.HOUR_OF_AMPM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19750a[k.b.a.x.a.MINUTE_OF_DAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19750a[k.b.a.x.a.MINUTE_OF_HOUR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19750a[k.b.a.x.a.SECOND_OF_DAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19750a[k.b.a.x.a.SECOND_OF_MINUTE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19750a[k.b.a.x.a.MILLI_OF_DAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19750a[k.b.a.x.a.MILLI_OF_SECOND.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19750a[k.b.a.x.a.NANO_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19750a[k.b.a.x.a.NANO_OF_SECOND.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19750a[k.b.a.x.a.CLOCK_HOUR_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19750a[k.b.a.x.a.CLOCK_HOUR_OF_AMPM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19750a[k.b.a.x.a.EPOCH_DAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19750a[k.b.a.x.a.PROLEPTIC_MONTH.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f19750a[k.b.a.x.a.ERA.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19750a[k.b.a.x.a.YEAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19750a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f19750a[k.b.a.x.a.MONTH_OF_YEAR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f19750a[k.b.a.x.a.DAY_OF_YEAR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    static {
        f19747h.put("en", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        f19747h.put("ja", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        f19748i.put("en", new String[]{"Unknown", "K", "M", "T", "S", "H"});
        f19748i.put("ja", new String[]{"Unknown", "慶", "明", "大", "昭", "平"});
        f19749j.put("en", new String[]{"Unknown", "Keio", "Meiji", "Taisho", "Showa", "Heisei"});
        f19749j.put("ja", new String[]{"Unknown", "慶応", "明治", "大正", "昭和", "平成"});
    }

    private p() {
    }

    private q a(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar, r rVar, int i2) {
        if (iVar == k.b.a.v.i.LENIENT) {
            int year = (rVar.startDate().getYear() + i2) - 1;
            return dateYearDay(year, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
        }
        return dateYearDay((j) rVar, i2, range(k.b.a.x.a.DAY_OF_YEAR).checkValidIntValue(map.remove(k.b.a.x.a.DAY_OF_YEAR).longValue(), k.b.a.x.a.DAY_OF_YEAR));
    }

    private q b(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar, r rVar, int i2) {
        if (iVar == k.b.a.v.i.LENIENT) {
            int year = (rVar.startDate().getYear() + i2) - 1;
            return date(year, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.MONTHS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
        }
        int checkValidIntValue = range(k.b.a.x.a.MONTH_OF_YEAR).checkValidIntValue(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), k.b.a.x.a.MONTH_OF_YEAR);
        int checkValidIntValue2 = range(k.b.a.x.a.DAY_OF_MONTH).checkValidIntValue(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), k.b.a.x.a.DAY_OF_MONTH);
        if (iVar != k.b.a.v.i.SMART) {
            return date((j) rVar, i2, checkValidIntValue, checkValidIntValue2);
        }
        if (i2 >= 1) {
            int year2 = (rVar.startDate().getYear() + i2) - 1;
            if (checkValidIntValue2 > 28) {
                checkValidIntValue2 = Math.min(checkValidIntValue2, date(year2, checkValidIntValue, 1).lengthOfMonth());
            }
            q date = date(year2, checkValidIntValue, checkValidIntValue2);
            if (date.getEra() != rVar) {
                if (Math.abs(date.getEra().getValue() - rVar.getValue()) <= 1) {
                    if (date.get(k.b.a.x.a.YEAR_OF_ERA) != 1 && i2 != 1) {
                        throw new k.b.a.b("Invalid Era/YearOfEra: " + rVar + HanziToPinyin.Token.SEPARATOR + i2);
                    }
                } else {
                    throw new k.b.a.b("Invalid Era/YearOfEra: " + rVar + HanziToPinyin.Token.SEPARATOR + i2);
                }
            }
            return date;
        }
        throw new k.b.a.b("Invalid YearOfEra: " + i2);
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // k.b.a.u.i
    public List<j> eras() {
        return Arrays.asList(r.values());
    }

    @Override // k.b.a.u.i
    public String getCalendarType() {
        return "japanese";
    }

    @Override // k.b.a.u.i
    public String getId() {
        return "Japanese";
    }

    @Override // k.b.a.u.i
    public boolean isLeapYear(long j2) {
        return n.INSTANCE.isLeapYear(j2);
    }

    @Override // k.b.a.u.i
    public c<q> localDateTime(k.b.a.x.e eVar) {
        return super.localDateTime(eVar);
    }

    @Override // k.b.a.u.i
    public int prolepticYear(j jVar, int i2) {
        if (jVar instanceof r) {
            int year = (((r) jVar).startDate().getYear() + i2) - 1;
            k.b.a.x.n.of(1L, (r6.endDate().getYear() - r6.startDate().getYear()) + 1).checkValidValue(i2, k.b.a.x.a.YEAR_OF_ERA);
            return year;
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // k.b.a.u.i
    public k.b.a.x.n range(k.b.a.x.a aVar) {
        switch (a.f19750a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                return aVar.range();
            default:
                Calendar calendar = Calendar.getInstance(LOCALE);
                int i2 = 0;
                switch (a.f19750a[aVar.ordinal()]) {
                    case 19:
                        r[] values = r.values();
                        return k.b.a.x.n.of(values[0].getValue(), values[values.length - 1].getValue());
                    case 20:
                        r[] values2 = r.values();
                        return k.b.a.x.n.of(q.MIN_DATE.getYear(), values2[values2.length - 1].endDate().getYear());
                    case 21:
                        r[] values3 = r.values();
                        int year = (values3[values3.length - 1].endDate().getYear() - values3[values3.length - 1].startDate().getYear()) + 1;
                        int i3 = Integer.MAX_VALUE;
                        while (i2 < values3.length) {
                            i3 = Math.min(i3, (values3[i2].endDate().getYear() - values3[i2].startDate().getYear()) + 1);
                            i2++;
                        }
                        return k.b.a.x.n.of(1L, 6L, i3, year);
                    case 22:
                        return k.b.a.x.n.of(calendar.getMinimum(2) + 1, calendar.getGreatestMinimum(2) + 1, calendar.getLeastMaximum(2) + 1, calendar.getMaximum(2) + 1);
                    case 23:
                        r[] values4 = r.values();
                        int i4 = 366;
                        while (i2 < values4.length) {
                            i4 = Math.min(i4, (values4[i2].startDate().lengthOfYear() - values4[i2].startDate().getDayOfYear()) + 1);
                            i2++;
                        }
                        return k.b.a.x.n.of(1L, i4, 366L);
                    default:
                        throw new UnsupportedOperationException("Unimplementable field: " + aVar);
                }
        }
    }

    @Override // k.b.a.u.i
    public /* bridge */ /* synthetic */ b resolveDate(Map map, k.b.a.v.i iVar) {
        return resolveDate((Map<k.b.a.x.i, Long>) map, iVar);
    }

    @Override // k.b.a.u.i
    public g<q> zonedDateTime(k.b.a.x.e eVar) {
        return super.zonedDateTime(eVar);
    }

    @Override // k.b.a.u.i
    public q dateEpochDay(long j2) {
        return new q(k.b.a.f.ofEpochDay(j2));
    }

    @Override // k.b.a.u.i
    public r eraOf(int i2) {
        return r.of(i2);
    }

    /* JADX WARN: Type inference failed for: r9v17, types: [k.b.a.u.q, k.b.a.w.c] */
    /* JADX WARN: Type inference failed for: r9v32, types: [k.b.a.u.q] */
    /* JADX WARN: Type inference failed for: r9v68, types: [k.b.a.u.q] */
    @Override // k.b.a.u.i
    public q resolveDate(Map<k.b.a.x.i, Long> map, k.b.a.v.i iVar) {
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
        Long l2 = map.get(k.b.a.x.a.ERA);
        r eraOf = l2 != null ? eraOf(range(k.b.a.x.a.ERA).checkValidIntValue(l2.longValue(), k.b.a.x.a.ERA)) : null;
        Long l3 = map.get(k.b.a.x.a.YEAR_OF_ERA);
        if (l3 != null) {
            int checkValidIntValue = range(k.b.a.x.a.YEAR_OF_ERA).checkValidIntValue(l3.longValue(), k.b.a.x.a.YEAR_OF_ERA);
            if (eraOf == null && iVar != k.b.a.v.i.STRICT && !map.containsKey(k.b.a.x.a.YEAR)) {
                List<j> eras = eras();
                eraOf = (r) eras.get(eras.size() - 1);
            }
            if (eraOf != null && map.containsKey(k.b.a.x.a.MONTH_OF_YEAR) && map.containsKey(k.b.a.x.a.DAY_OF_MONTH)) {
                map.remove(k.b.a.x.a.ERA);
                map.remove(k.b.a.x.a.YEAR_OF_ERA);
                return b(map, iVar, eraOf, checkValidIntValue);
            }
            if (eraOf != null && map.containsKey(k.b.a.x.a.DAY_OF_YEAR)) {
                map.remove(k.b.a.x.a.ERA);
                map.remove(k.b.a.x.a.YEAR_OF_ERA);
                return a(map, iVar, eraOf, checkValidIntValue);
            }
        }
        if (map.containsKey(k.b.a.x.a.YEAR)) {
            if (map.containsKey(k.b.a.x.a.MONTH_OF_YEAR)) {
                if (map.containsKey(k.b.a.x.a.DAY_OF_MONTH)) {
                    k.b.a.x.a aVar = k.b.a.x.a.YEAR;
                    int checkValidIntValue2 = aVar.checkValidIntValue(map.remove(aVar).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return date(checkValidIntValue2, 1, 1).plusMonths(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L)).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), 1L));
                    }
                    int checkValidIntValue3 = range(k.b.a.x.a.MONTH_OF_YEAR).checkValidIntValue(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), k.b.a.x.a.MONTH_OF_YEAR);
                    int checkValidIntValue4 = range(k.b.a.x.a.DAY_OF_MONTH).checkValidIntValue(map.remove(k.b.a.x.a.DAY_OF_MONTH).longValue(), k.b.a.x.a.DAY_OF_MONTH);
                    if (iVar == k.b.a.v.i.SMART && checkValidIntValue4 > 28) {
                        checkValidIntValue4 = Math.min(checkValidIntValue4, date(checkValidIntValue2, checkValidIntValue3, 1).lengthOfMonth());
                    }
                    return date(checkValidIntValue2, checkValidIntValue3, checkValidIntValue4);
                }
                if (map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH)) {
                    if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH)) {
                        k.b.a.x.a aVar2 = k.b.a.x.a.YEAR;
                        int checkValidIntValue5 = aVar2.checkValidIntValue(map.remove(aVar2).longValue());
                        if (iVar == k.b.a.v.i.LENIENT) {
                            return date(checkValidIntValue5, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.MONTHS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                        }
                        k.b.a.x.a aVar3 = k.b.a.x.a.MONTH_OF_YEAR;
                        int checkValidIntValue6 = aVar3.checkValidIntValue(map.remove(aVar3).longValue());
                        k.b.a.x.a aVar4 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                        int checkValidIntValue7 = aVar4.checkValidIntValue(map.remove(aVar4).longValue());
                        k.b.a.x.a aVar5 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                        q plus = date(checkValidIntValue5, checkValidIntValue6, 1).plus(((checkValidIntValue7 - 1) * 7) + (aVar5.checkValidIntValue(map.remove(aVar5).longValue()) - 1), (k.b.a.x.l) k.b.a.x.b.DAYS);
                        if (iVar != k.b.a.v.i.STRICT || plus.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue6) {
                            return plus;
                        }
                        throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                    }
                    if (map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
                        k.b.a.x.a aVar6 = k.b.a.x.a.YEAR;
                        int checkValidIntValue8 = aVar6.checkValidIntValue(map.remove(aVar6).longValue());
                        if (iVar == k.b.a.v.i.LENIENT) {
                            return date(checkValidIntValue8, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.MONTH_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.MONTHS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                        }
                        k.b.a.x.a aVar7 = k.b.a.x.a.MONTH_OF_YEAR;
                        int checkValidIntValue9 = aVar7.checkValidIntValue(map.remove(aVar7).longValue());
                        k.b.a.x.a aVar8 = k.b.a.x.a.ALIGNED_WEEK_OF_MONTH;
                        int checkValidIntValue10 = aVar8.checkValidIntValue(map.remove(aVar8).longValue());
                        k.b.a.x.a aVar9 = k.b.a.x.a.DAY_OF_WEEK;
                        q with = date(checkValidIntValue8, checkValidIntValue9, 1).plus(checkValidIntValue10 - 1, (k.b.a.x.l) k.b.a.x.b.WEEKS).with(k.b.a.x.g.a(k.b.a.c.of(aVar9.checkValidIntValue(map.remove(aVar9).longValue()))));
                        if (iVar != k.b.a.v.i.STRICT || with.get(k.b.a.x.a.MONTH_OF_YEAR) == checkValidIntValue9) {
                            return with;
                        }
                        throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                    }
                }
            }
            if (map.containsKey(k.b.a.x.a.DAY_OF_YEAR)) {
                k.b.a.x.a aVar10 = k.b.a.x.a.YEAR;
                int checkValidIntValue11 = aVar10.checkValidIntValue(map.remove(aVar10).longValue());
                if (iVar == k.b.a.v.i.LENIENT) {
                    return dateYearDay(checkValidIntValue11, 1).plusDays(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_YEAR).longValue(), 1L));
                }
                k.b.a.x.a aVar11 = k.b.a.x.a.DAY_OF_YEAR;
                return dateYearDay(checkValidIntValue11, aVar11.checkValidIntValue(map.remove(aVar11).longValue()));
            }
            if (map.containsKey(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR)) {
                if (map.containsKey(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR)) {
                    k.b.a.x.a aVar12 = k.b.a.x.a.YEAR;
                    int checkValidIntValue12 = aVar12.checkValidIntValue(map.remove(aVar12).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return date(checkValidIntValue12, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                    }
                    k.b.a.x.a aVar13 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
                    int checkValidIntValue13 = aVar13.checkValidIntValue(map.remove(aVar13).longValue());
                    k.b.a.x.a aVar14 = k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                    ?? plusDays = date(checkValidIntValue12, 1, 1).plusDays(((checkValidIntValue13 - 1) * 7) + (aVar14.checkValidIntValue(map.remove(aVar14).longValue()) - 1));
                    if (iVar != k.b.a.v.i.STRICT || plusDays.get(k.b.a.x.a.YEAR) == checkValidIntValue12) {
                        return plusDays;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different year");
                }
                if (map.containsKey(k.b.a.x.a.DAY_OF_WEEK)) {
                    k.b.a.x.a aVar15 = k.b.a.x.a.YEAR;
                    int checkValidIntValue14 = aVar15.checkValidIntValue(map.remove(aVar15).longValue());
                    if (iVar == k.b.a.v.i.LENIENT) {
                        return date(checkValidIntValue14, 1, 1).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.WEEKS).plus(k.b.a.w.d.f(map.remove(k.b.a.x.a.DAY_OF_WEEK).longValue(), 1L), (k.b.a.x.l) k.b.a.x.b.DAYS);
                    }
                    k.b.a.x.a aVar16 = k.b.a.x.a.ALIGNED_WEEK_OF_YEAR;
                    int checkValidIntValue15 = aVar16.checkValidIntValue(map.remove(aVar16).longValue());
                    k.b.a.x.a aVar17 = k.b.a.x.a.DAY_OF_WEEK;
                    q with2 = date(checkValidIntValue14, 1, 1).plus(checkValidIntValue15 - 1, (k.b.a.x.l) k.b.a.x.b.WEEKS).with(k.b.a.x.g.a(k.b.a.c.of(aVar17.checkValidIntValue(map.remove(aVar17).longValue()))));
                    if (iVar != k.b.a.v.i.STRICT || with2.get(k.b.a.x.a.YEAR) == checkValidIntValue14) {
                        return with2;
                    }
                    throw new k.b.a.b("Strict mode rejected date parsed to a different month");
                }
            }
        }
        return null;
    }

    @Override // k.b.a.u.i
    public g<q> zonedDateTime(k.b.a.e eVar, k.b.a.q qVar) {
        return super.zonedDateTime(eVar, qVar);
    }

    @Override // k.b.a.u.i
    public q dateYearDay(j jVar, int i2, int i3) {
        if (jVar instanceof r) {
            return q.ofYearDay((r) jVar, i2, i3);
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // k.b.a.u.i
    public q date(j jVar, int i2, int i3, int i4) {
        if (jVar instanceof r) {
            return q.of((r) jVar, i2, i3, i4);
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // k.b.a.u.i
    public q dateNow() {
        return (q) super.dateNow();
    }

    @Override // k.b.a.u.i
    public q dateNow(k.b.a.q qVar) {
        return (q) super.dateNow(qVar);
    }

    @Override // k.b.a.u.i
    public q dateNow(k.b.a.a aVar) {
        k.b.a.w.d.a(aVar, "clock");
        return (q) super.dateNow(aVar);
    }

    @Override // k.b.a.u.i
    public q dateYearDay(int i2, int i3) {
        k.b.a.f ofYearDay = k.b.a.f.ofYearDay(i2, i3);
        return date(i2, ofYearDay.getMonthValue(), ofYearDay.getDayOfMonth());
    }

    @Override // k.b.a.u.i
    public q date(int i2, int i3, int i4) {
        return new q(k.b.a.f.of(i2, i3, i4));
    }

    @Override // k.b.a.u.i
    public q date(k.b.a.x.e eVar) {
        if (eVar instanceof q) {
            return (q) eVar;
        }
        return new q(k.b.a.f.from(eVar));
    }
}
