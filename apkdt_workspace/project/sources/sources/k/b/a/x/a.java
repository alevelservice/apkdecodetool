package k.b.a.x;

import com.alipay.mobile.security.zim.api.ZIMFacade;
import java.util.Locale;
import java.util.Map;

/* compiled from: ChronoField.java */
/* loaded from: classes2.dex */
public enum a implements i {
    NANO_OF_SECOND("NanoOfSecond", b.NANOS, b.SECONDS, n.of(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", b.NANOS, b.DAYS, n.of(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", b.MICROS, b.SECONDS, n.of(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", b.MICROS, b.DAYS, n.of(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", b.MILLIS, b.SECONDS, n.of(0, 999)),
    MILLI_OF_DAY("MilliOfDay", b.MILLIS, b.DAYS, n.of(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", b.SECONDS, b.MINUTES, n.of(0, 59)),
    SECOND_OF_DAY("SecondOfDay", b.SECONDS, b.DAYS, n.of(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", b.MINUTES, b.HOURS, n.of(0, 59)),
    MINUTE_OF_DAY("MinuteOfDay", b.MINUTES, b.DAYS, n.of(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", b.HOURS, b.HALF_DAYS, n.of(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", b.HOURS, b.HALF_DAYS, n.of(1, 12)),
    HOUR_OF_DAY("HourOfDay", b.HOURS, b.DAYS, n.of(0, 23)),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", b.HOURS, b.DAYS, n.of(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", b.HALF_DAYS, b.DAYS, n.of(0, 1)),
    DAY_OF_WEEK("DayOfWeek", b.DAYS, b.WEEKS, n.of(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", b.DAYS, b.WEEKS, n.of(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", b.DAYS, b.WEEKS, n.of(1, 7)),
    DAY_OF_MONTH("DayOfMonth", b.DAYS, b.MONTHS, n.of(1, 28, 31)),
    DAY_OF_YEAR("DayOfYear", b.DAYS, b.YEARS, n.of(1, 365, 366)),
    EPOCH_DAY("EpochDay", b.DAYS, b.FOREVER, n.of(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", b.WEEKS, b.MONTHS, n.of(1, 4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", b.WEEKS, b.YEARS, n.of(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", b.MONTHS, b.YEARS, n.of(1, 12)),
    PROLEPTIC_MONTH("ProlepticMonth", b.MONTHS, b.FOREVER, n.of(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", b.YEARS, b.FOREVER, n.of(1, 999999999, 1000000000)),
    YEAR("Year", b.YEARS, b.FOREVER, n.of(-999999999, 999999999)),
    ERA("Era", b.ERAS, b.FOREVER, n.of(0, 1)),
    INSTANT_SECONDS("InstantSeconds", b.SECONDS, b.FOREVER, n.of(Long.MIN_VALUE, Long.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", b.SECONDS, b.FOREVER, n.of(-64800, 64800));

    private final l baseUnit;
    private final String name;
    private final n range;
    private final l rangeUnit;

    a(String str, l lVar, l lVar2, n nVar) {
        this.name = str;
        this.baseUnit = lVar;
        this.rangeUnit = lVar2;
        this.range = nVar;
    }

    @Override // k.b.a.x.i
    public <R extends d> R adjustInto(R r, long j2) {
        return (R) r.with(this, j2);
    }

    public int checkValidIntValue(long j2) {
        return range().checkValidIntValue(j2, this);
    }

    public long checkValidValue(long j2) {
        return range().checkValidValue(j2, this);
    }

    public l getBaseUnit() {
        return this.baseUnit;
    }

    public String getDisplayName(Locale locale) {
        k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
        return toString();
    }

    @Override // k.b.a.x.i
    public long getFrom(e eVar) {
        return eVar.getLong(this);
    }

    public l getRangeUnit() {
        return this.rangeUnit;
    }

    @Override // k.b.a.x.i
    public boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    @Override // k.b.a.x.i
    public boolean isSupportedBy(e eVar) {
        return eVar.isSupported(this);
    }

    @Override // k.b.a.x.i
    public boolean isTimeBased() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // k.b.a.x.i
    public n range() {
        return this.range;
    }

    @Override // k.b.a.x.i
    public n rangeRefinedBy(e eVar) {
        return eVar.range(this);
    }

    @Override // k.b.a.x.i
    public e resolve(Map<i, Long> map, e eVar, k.b.a.v.i iVar) {
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
