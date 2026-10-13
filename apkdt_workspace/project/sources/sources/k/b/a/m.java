package k.b.a;

import com.alipay.mobile.security.bio.api.BioDetector;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Period.java */
/* loaded from: classes2.dex */
public final class m extends k.b.a.u.e implements Serializable {
    public static final m ZERO = new m(0, 0, 0);

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f19709e = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
    private static final long serialVersionUID = -8290556941213247973L;
    private final int days;
    private final int months;
    private final int years;

    private m(int i2, int i3, int i4) {
        this.years = i2;
        this.months = i3;
        this.days = i4;
    }

    private static int a(CharSequence charSequence, String str, int i2) {
        if (str == null) {
            return 0;
        }
        try {
            return k.b.a.w.d.e(Integer.parseInt(str), i2);
        } catch (ArithmeticException e2) {
            throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Period", charSequence, 0).initCause(e2));
        }
    }

    public static m between(f fVar, f fVar2) {
        return fVar.until((k.b.a.u.b) fVar2);
    }

    public static m from(k.b.a.x.h hVar) {
        if (hVar instanceof m) {
            return (m) hVar;
        }
        if ((hVar instanceof k.b.a.u.e) && !k.b.a.u.n.INSTANCE.equals(((k.b.a.u.e) hVar).getChronology())) {
            throw new b("Period requires ISO chronology: " + hVar);
        }
        k.b.a.w.d.a(hVar, BioDetector.EXT_KEY_AMOUNT);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (k.b.a.x.l lVar : hVar.getUnits()) {
            long j2 = hVar.get(lVar);
            if (lVar == k.b.a.x.b.YEARS) {
                i2 = k.b.a.w.d.a(j2);
            } else if (lVar == k.b.a.x.b.MONTHS) {
                i3 = k.b.a.w.d.a(j2);
            } else if (lVar == k.b.a.x.b.DAYS) {
                i4 = k.b.a.w.d.a(j2);
            } else {
                throw new b("Unit must be Years, Months or Days, but was " + lVar);
            }
        }
        return a(i2, i3, i4);
    }

    public static m of(int i2, int i3, int i4) {
        return a(i2, i3, i4);
    }

    public static m ofDays(int i2) {
        return a(0, 0, i2);
    }

    public static m ofMonths(int i2) {
        return a(0, i2, 0);
    }

    public static m ofWeeks(int i2) {
        return a(0, 0, k.b.a.w.d.e(i2, 7));
    }

    public static m ofYears(int i2) {
        return a(i2, 0, 0);
    }

    public static m parse(CharSequence charSequence) {
        k.b.a.w.d.a(charSequence, "text");
        Matcher matcher = f19709e.matcher(charSequence);
        if (matcher.matches()) {
            int i2 = "-".equals(matcher.group(1)) ? -1 : 1;
            String group = matcher.group(2);
            String group2 = matcher.group(3);
            String group3 = matcher.group(4);
            String group4 = matcher.group(5);
            if (group != null || group2 != null || group3 != null || group4 != null) {
                try {
                    return a(a(charSequence, group, i2), a(charSequence, group2, i2), k.b.a.w.d.d(a(charSequence, group4, i2), k.b.a.w.d.e(a(charSequence, group3, i2), 7)));
                } catch (NumberFormatException e2) {
                    throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Period", charSequence, 0).initCause(e2));
                }
            }
        }
        throw new k.b.a.v.e("Text cannot be parsed to a Period", charSequence, 0);
    }

    private Object readResolve() {
        return ((this.years | this.months) | this.days) == 0 ? ZERO : this;
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public k.b.a.x.d addTo(k.b.a.x.d dVar) {
        k.b.a.w.d.a(dVar, "temporal");
        int i2 = this.years;
        if (i2 != 0) {
            if (this.months != 0) {
                dVar = dVar.plus(toTotalMonths(), k.b.a.x.b.MONTHS);
            } else {
                dVar = dVar.plus(i2, k.b.a.x.b.YEARS);
            }
        } else {
            int i3 = this.months;
            if (i3 != 0) {
                dVar = dVar.plus(i3, k.b.a.x.b.MONTHS);
            }
        }
        int i4 = this.days;
        return i4 != 0 ? dVar.plus(i4, k.b.a.x.b.DAYS) : dVar;
    }

    @Override // k.b.a.u.e
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.years == mVar.years && this.months == mVar.months && this.days == mVar.days;
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public long get(k.b.a.x.l lVar) {
        int i2;
        if (lVar == k.b.a.x.b.YEARS) {
            i2 = this.years;
        } else if (lVar == k.b.a.x.b.MONTHS) {
            i2 = this.months;
        } else if (lVar == k.b.a.x.b.DAYS) {
            i2 = this.days;
        } else {
            throw new k.b.a.x.m("Unsupported unit: " + lVar);
        }
        return i2;
    }

    @Override // k.b.a.u.e
    public k.b.a.u.i getChronology() {
        return k.b.a.u.n.INSTANCE;
    }

    public int getDays() {
        return this.days;
    }

    public int getMonths() {
        return this.months;
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public List<k.b.a.x.l> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(k.b.a.x.b.YEARS, k.b.a.x.b.MONTHS, k.b.a.x.b.DAYS));
    }

    public int getYears() {
        return this.years;
    }

    @Override // k.b.a.u.e
    public int hashCode() {
        return this.years + Integer.rotateLeft(this.months, 8) + Integer.rotateLeft(this.days, 16);
    }

    @Override // k.b.a.u.e
    public boolean isNegative() {
        return this.years < 0 || this.months < 0 || this.days < 0;
    }

    @Override // k.b.a.u.e
    public boolean isZero() {
        return this == ZERO;
    }

    public m minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public m minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    public m minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    public m plusDays(long j2) {
        return j2 == 0 ? this : a(this.years, this.months, k.b.a.w.d.a(k.b.a.w.d.d(this.days, j2)));
    }

    public m plusMonths(long j2) {
        return j2 == 0 ? this : a(this.years, k.b.a.w.d.a(k.b.a.w.d.d(this.months, j2)), this.days);
    }

    public m plusYears(long j2) {
        return j2 == 0 ? this : a(k.b.a.w.d.a(k.b.a.w.d.d(this.years, j2)), this.months, this.days);
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public k.b.a.x.d subtractFrom(k.b.a.x.d dVar) {
        k.b.a.w.d.a(dVar, "temporal");
        int i2 = this.years;
        if (i2 != 0) {
            if (this.months != 0) {
                dVar = dVar.minus(toTotalMonths(), k.b.a.x.b.MONTHS);
            } else {
                dVar = dVar.minus(i2, k.b.a.x.b.YEARS);
            }
        } else {
            int i3 = this.months;
            if (i3 != 0) {
                dVar = dVar.minus(i3, k.b.a.x.b.MONTHS);
            }
        }
        int i4 = this.days;
        return i4 != 0 ? dVar.minus(i4, k.b.a.x.b.DAYS) : dVar;
    }

    @Override // k.b.a.u.e
    public String toString() {
        if (this == ZERO) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('P');
        int i2 = this.years;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('Y');
        }
        int i3 = this.months;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('M');
        }
        int i4 = this.days;
        if (i4 != 0) {
            sb.append(i4);
            sb.append('D');
        }
        return sb.toString();
    }

    public long toTotalMonths() {
        return (this.years * 12) + this.months;
    }

    public m withDays(int i2) {
        return i2 == this.days ? this : a(this.years, this.months, i2);
    }

    public m withMonths(int i2) {
        return i2 == this.months ? this : a(this.years, i2, this.days);
    }

    public m withYears(int i2) {
        return i2 == this.years ? this : a(i2, this.months, this.days);
    }

    @Override // k.b.a.u.e
    public m minus(k.b.a.x.h hVar) {
        m from = from(hVar);
        return a(k.b.a.w.d.f(this.years, from.years), k.b.a.w.d.f(this.months, from.months), k.b.a.w.d.f(this.days, from.days));
    }

    @Override // k.b.a.u.e
    public m multipliedBy(int i2) {
        return (this == ZERO || i2 == 1) ? this : a(k.b.a.w.d.e(this.years, i2), k.b.a.w.d.e(this.months, i2), k.b.a.w.d.e(this.days, i2));
    }

    @Override // k.b.a.u.e
    public m negated() {
        return multipliedBy(-1);
    }

    @Override // k.b.a.u.e
    public m normalized() {
        long totalMonths = toTotalMonths();
        long j2 = totalMonths / 12;
        int i2 = (int) (totalMonths % 12);
        return (j2 == ((long) this.years) && i2 == this.months) ? this : a(k.b.a.w.d.a(j2), i2, this.days);
    }

    @Override // k.b.a.u.e
    public m plus(k.b.a.x.h hVar) {
        m from = from(hVar);
        return a(k.b.a.w.d.d(this.years, from.years), k.b.a.w.d.d(this.months, from.months), k.b.a.w.d.d(this.days, from.days));
    }

    private static m a(int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return ZERO;
        }
        return new m(i2, i3, i4);
    }
}
