package k.b.a;

import com.alipay.mobile.security.bio.api.BioDetector;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Duration.java */
/* loaded from: classes2.dex */
public final class d implements k.b.a.x.h, Comparable<d>, Serializable {
    public static final d ZERO = new d(0, 0);

    /* renamed from: e, reason: collision with root package name */
    private static final BigInteger f19690e = BigInteger.valueOf(1000000000);

    /* renamed from: f, reason: collision with root package name */
    private static final Pattern f19691f = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);
    private static final long serialVersionUID = 3078945930695997490L;
    private final int nanos;
    private final long seconds;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Duration.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19692a = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19692a[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19692a[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19692a[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19692a[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private d(long j2, int i2) {
        this.seconds = j2;
        this.nanos = i2;
    }

    private static long a(CharSequence charSequence, String str, int i2, String str2) {
        if (str == null) {
            return 0L;
        }
        try {
            if (str.startsWith("+")) {
                str = str.substring(1);
            }
            return k.b.a.w.d.b(Long.parseLong(str), i2);
        } catch (ArithmeticException e2) {
            throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Duration: " + str2, charSequence, 0).initCause(e2));
        } catch (NumberFormatException e3) {
            throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Duration: " + str2, charSequence, 0).initCause(e3));
        }
    }

    public static d between(k.b.a.x.d dVar, k.b.a.x.d dVar2) {
        long until = dVar.until(dVar2, k.b.a.x.b.SECONDS);
        long j2 = 0;
        if (dVar.isSupported(k.b.a.x.a.NANO_OF_SECOND) && dVar2.isSupported(k.b.a.x.a.NANO_OF_SECOND)) {
            try {
                long j3 = dVar.getLong(k.b.a.x.a.NANO_OF_SECOND);
                long j4 = dVar2.getLong(k.b.a.x.a.NANO_OF_SECOND) - j3;
                if (until > 0 && j4 < 0) {
                    j4 += 1000000000;
                } else if (until < 0 && j4 > 0) {
                    j4 -= 1000000000;
                } else if (until == 0 && j4 != 0) {
                    try {
                        until = dVar.until(dVar2.with(k.b.a.x.a.NANO_OF_SECOND, j3), k.b.a.x.b.SECONDS);
                    } catch (ArithmeticException | b unused) {
                    }
                }
                j2 = j4;
            } catch (ArithmeticException | b unused2) {
            }
        }
        return ofSeconds(until, j2);
    }

    public static d from(k.b.a.x.h hVar) {
        k.b.a.w.d.a(hVar, BioDetector.EXT_KEY_AMOUNT);
        d dVar = ZERO;
        for (k.b.a.x.l lVar : hVar.getUnits()) {
            dVar = dVar.plus(hVar.get(lVar), lVar);
        }
        return dVar;
    }

    public static d of(long j2, k.b.a.x.l lVar) {
        return ZERO.plus(j2, lVar);
    }

    public static d ofDays(long j2) {
        return a(k.b.a.w.d.b(j2, 86400), 0);
    }

    public static d ofHours(long j2) {
        return a(k.b.a.w.d.b(j2, 3600), 0);
    }

    public static d ofMillis(long j2) {
        long j3 = j2 / 1000;
        int i2 = (int) (j2 % 1000);
        if (i2 < 0) {
            i2 += 1000;
            j3--;
        }
        return a(j3, i2 * 1000000);
    }

    public static d ofMinutes(long j2) {
        return a(k.b.a.w.d.b(j2, 60), 0);
    }

    public static d ofNanos(long j2) {
        long j3 = j2 / 1000000000;
        int i2 = (int) (j2 % 1000000000);
        if (i2 < 0) {
            i2 += 1000000000;
            j3--;
        }
        return a(j3, i2);
    }

    public static d ofSeconds(long j2) {
        return a(j2, 0);
    }

    public static d parse(CharSequence charSequence) {
        k.b.a.w.d.a(charSequence, "text");
        Matcher matcher = f19691f.matcher(charSequence);
        if (matcher.matches() && !"T".equals(matcher.group(3))) {
            boolean equals = "-".equals(matcher.group(1));
            String group = matcher.group(2);
            String group2 = matcher.group(4);
            String group3 = matcher.group(5);
            String group4 = matcher.group(6);
            String group5 = matcher.group(7);
            if (group != null || group2 != null || group3 != null || group4 != null) {
                try {
                    return a(equals, a(charSequence, group, 86400, "days"), a(charSequence, group2, 3600, "hours"), a(charSequence, group3, 60, "minutes"), a(charSequence, group4, 1, "seconds"), a(charSequence, group5, group4 != null && group4.charAt(0) == '-' ? -1 : 1));
                } catch (ArithmeticException e2) {
                    throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Duration: overflow", charSequence, 0).initCause(e2));
                }
            }
        }
        throw new k.b.a.v.e("Text cannot be parsed to a Duration", charSequence, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d readExternal(DataInput dataInput) {
        return ofSeconds(dataInput.readLong(), dataInput.readInt());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 1, this);
    }

    public d abs() {
        return isNegative() ? negated() : this;
    }

    @Override // k.b.a.x.h
    public k.b.a.x.d addTo(k.b.a.x.d dVar) {
        long j2 = this.seconds;
        if (j2 != 0) {
            dVar = dVar.plus(j2, k.b.a.x.b.SECONDS);
        }
        int i2 = this.nanos;
        return i2 != 0 ? dVar.plus(i2, k.b.a.x.b.NANOS) : dVar;
    }

    public d dividedBy(long j2) {
        if (j2 != 0) {
            return j2 == 1 ? this : a(a().divide(BigDecimal.valueOf(j2), RoundingMode.DOWN));
        }
        throw new ArithmeticException("Cannot divide by zero");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.seconds == dVar.seconds && this.nanos == dVar.nanos;
    }

    @Override // k.b.a.x.h
    public long get(k.b.a.x.l lVar) {
        if (lVar == k.b.a.x.b.SECONDS) {
            return this.seconds;
        }
        if (lVar == k.b.a.x.b.NANOS) {
            return this.nanos;
        }
        throw new k.b.a.x.m("Unsupported unit: " + lVar);
    }

    public int getNano() {
        return this.nanos;
    }

    public long getSeconds() {
        return this.seconds;
    }

    @Override // k.b.a.x.h
    public List<k.b.a.x.l> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(k.b.a.x.b.SECONDS, k.b.a.x.b.NANOS));
    }

    public int hashCode() {
        long j2 = this.seconds;
        return ((int) (j2 ^ (j2 >>> 32))) + (this.nanos * 51);
    }

    public boolean isNegative() {
        return this.seconds < 0;
    }

    public boolean isZero() {
        return (this.seconds | ((long) this.nanos)) == 0;
    }

    public d minus(d dVar) {
        long seconds = dVar.getSeconds();
        int nano = dVar.getNano();
        if (seconds == Long.MIN_VALUE) {
            return a(Long.MAX_VALUE, -nano).a(1L, 0L);
        }
        return a(-seconds, -nano);
    }

    public d minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    public d minusHours(long j2) {
        return j2 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j2);
    }

    public d minusMillis(long j2) {
        return j2 == Long.MIN_VALUE ? plusMillis(Long.MAX_VALUE).plusMillis(1L) : plusMillis(-j2);
    }

    public d minusMinutes(long j2) {
        return j2 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j2);
    }

    public d minusNanos(long j2) {
        return j2 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j2);
    }

    public d minusSeconds(long j2) {
        return j2 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j2);
    }

    public d multipliedBy(long j2) {
        if (j2 == 0) {
            return ZERO;
        }
        return j2 == 1 ? this : a(a().multiply(BigDecimal.valueOf(j2)));
    }

    public d negated() {
        return multipliedBy(-1L);
    }

    public d plus(d dVar) {
        return a(dVar.getSeconds(), dVar.getNano());
    }

    public d plusDays(long j2) {
        return a(k.b.a.w.d.b(j2, 86400), 0L);
    }

    public d plusHours(long j2) {
        return a(k.b.a.w.d.b(j2, 3600), 0L);
    }

    public d plusMillis(long j2) {
        return a(j2 / 1000, (j2 % 1000) * 1000000);
    }

    public d plusMinutes(long j2) {
        return a(k.b.a.w.d.b(j2, 60), 0L);
    }

    public d plusNanos(long j2) {
        return a(0L, j2);
    }

    public d plusSeconds(long j2) {
        return a(j2, 0L);
    }

    @Override // k.b.a.x.h
    public k.b.a.x.d subtractFrom(k.b.a.x.d dVar) {
        long j2 = this.seconds;
        if (j2 != 0) {
            dVar = dVar.minus(j2, k.b.a.x.b.SECONDS);
        }
        int i2 = this.nanos;
        return i2 != 0 ? dVar.minus(i2, k.b.a.x.b.NANOS) : dVar;
    }

    public long toDays() {
        return this.seconds / 86400;
    }

    public long toHours() {
        return this.seconds / 3600;
    }

    public long toMillis() {
        return k.b.a.w.d.d(k.b.a.w.d.b(this.seconds, 1000), this.nanos / 1000000);
    }

    public long toMinutes() {
        return this.seconds / 60;
    }

    public long toNanos() {
        return k.b.a.w.d.d(k.b.a.w.d.b(this.seconds, 1000000000), this.nanos);
    }

    public String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j2 = this.seconds;
        long j3 = j2 / 3600;
        int i2 = (int) ((j2 % 3600) / 60);
        int i3 = (int) (j2 % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j3 != 0) {
            sb.append(j3);
            sb.append('H');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i3 == 0 && this.nanos == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i3 >= 0 || this.nanos <= 0) {
            sb.append(i3);
        } else if (i3 == -1) {
            sb.append("-0");
        } else {
            sb.append(i3 + 1);
        }
        if (this.nanos > 0) {
            int length = sb.length();
            if (i3 < 0) {
                sb.append(2000000000 - this.nanos);
            } else {
                sb.append(this.nanos + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    public d withNanos(int i2) {
        k.b.a.x.a.NANO_OF_SECOND.checkValidIntValue(i2);
        return a(this.seconds, i2);
    }

    public d withSeconds(long j2) {
        return a(j2, this.nanos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    public static d ofSeconds(long j2, long j3) {
        return a(k.b.a.w.d.d(j2, k.b.a.w.d.b(j3, 1000000000L)), k.b.a.w.d.a(j3, 1000000000));
    }

    @Override // java.lang.Comparable
    public int compareTo(d dVar) {
        int a2 = k.b.a.w.d.a(this.seconds, dVar.seconds);
        return a2 != 0 ? a2 : this.nanos - dVar.nanos;
    }

    public d plus(long j2, k.b.a.x.l lVar) {
        k.b.a.w.d.a(lVar, "unit");
        if (lVar == k.b.a.x.b.DAYS) {
            return a(k.b.a.w.d.b(j2, 86400), 0L);
        }
        if (lVar.isDurationEstimated()) {
            throw new b("Unit must not have an estimated duration");
        }
        if (j2 == 0) {
            return this;
        }
        if (lVar instanceof k.b.a.x.b) {
            int i2 = a.f19692a[((k.b.a.x.b) lVar).ordinal()];
            if (i2 == 1) {
                return plusNanos(j2);
            }
            if (i2 == 2) {
                return plusSeconds((j2 / 1000000000) * 1000).plusNanos((j2 % 1000000000) * 1000);
            }
            if (i2 == 3) {
                return plusMillis(j2);
            }
            if (i2 != 4) {
                return plusSeconds(k.b.a.w.d.e(lVar.getDuration().seconds, j2));
            }
            return plusSeconds(j2);
        }
        return plusSeconds(lVar.getDuration().multipliedBy(j2).getSeconds()).plusNanos(r7.getNano());
    }

    public d minus(long j2, k.b.a.x.l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }

    private static int a(CharSequence charSequence, String str, int i2) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        try {
            return Integer.parseInt((str + "000000000").substring(0, 9)) * i2;
        } catch (ArithmeticException e2) {
            throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e2));
        } catch (NumberFormatException e3) {
            throw ((k.b.a.v.e) new k.b.a.v.e("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e3));
        }
    }

    private static d a(boolean z, long j2, long j3, long j4, long j5, int i2) {
        long d2 = k.b.a.w.d.d(j2, k.b.a.w.d.d(j3, k.b.a.w.d.d(j4, j5)));
        if (z) {
            return ofSeconds(d2, i2).negated();
        }
        return ofSeconds(d2, i2);
    }

    private static d a(long j2, int i2) {
        if ((i2 | j2) == 0) {
            return ZERO;
        }
        return new d(j2, i2);
    }

    private d a(long j2, long j3) {
        if ((j2 | j3) == 0) {
            return this;
        }
        return ofSeconds(k.b.a.w.d.d(k.b.a.w.d.d(this.seconds, j2), j3 / 1000000000), this.nanos + (j3 % 1000000000));
    }

    private BigDecimal a() {
        return BigDecimal.valueOf(this.seconds).add(BigDecimal.valueOf(this.nanos, 9));
    }

    private static d a(BigDecimal bigDecimal) {
        BigInteger bigIntegerExact = bigDecimal.movePointRight(9).toBigIntegerExact();
        BigInteger[] divideAndRemainder = bigIntegerExact.divideAndRemainder(f19690e);
        if (divideAndRemainder[0].bitLength() <= 63) {
            return ofSeconds(divideAndRemainder[0].longValue(), divideAndRemainder[1].intValue());
        }
        throw new ArithmeticException("Exceeds capacity of Duration: " + bigIntegerExact);
    }
}
