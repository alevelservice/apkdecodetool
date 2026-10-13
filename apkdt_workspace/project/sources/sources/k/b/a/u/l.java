package k.b.a.u;

import java.io.BufferedReader;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.text.ParseException;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: HijrahDate.java */
/* loaded from: classes2.dex */
public final class l extends k.b.a.u.a<l> implements Serializable {
    private static final Long[] A;
    private static final Integer[] B;
    private static final Integer[] C;
    private static final Integer[] D;
    private static final Integer[] F;
    private static final Integer[] G;
    private static final Integer[] H;
    private static final Integer[] I;
    public static final int MIN_VALUE_OF_ERA = 1;
    private static final long serialVersionUID = -5207853542612002020L;

    /* renamed from: f, reason: collision with root package name */
    private final transient m f19737f;

    /* renamed from: g, reason: collision with root package name */
    private final transient int f19738g;
    private final long gregorianEpochDay;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f19739h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f19740i;

    /* renamed from: j, reason: collision with root package name */
    private final transient int f19741j;

    /* renamed from: k, reason: collision with root package name */
    private final transient k.b.a.c f19742k;

    /* renamed from: l, reason: collision with root package name */
    private final transient boolean f19743l;
    private static final int[] m = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    private static final int[] n = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    private static final int[] o = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29};
    private static final int[] p = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 30};
    private static final int[] q = {0, 1, 0, 1, 0, 1, 1};
    public static final int MAX_VALUE_OF_ERA = 9999;
    private static final int[] r = {1, MAX_VALUE_OF_ERA, 11, 51, 5, 29, 354};
    private static final int[] s = {1, MAX_VALUE_OF_ERA, 11, 52, 6, 30, 355};
    private static final int[] t = {0, 354, 709, 1063, 1417, 1772, 2126, 2481, 2835, 3189, 3544, 3898, 4252, 4607, 4961, 5315, 5670, 6024, 6379, 6733, 7087, 7442, 7796, 8150, 8505, 8859, 9214, 9568, 9922, 10277};
    private static final char u = File.separatorChar;
    private static final String v = File.pathSeparator;
    private static final String w = "org" + u + "threeten" + u + "bp" + u + "chrono";
    private static final HashMap<Integer, Integer[]> x = new HashMap<>();
    private static final HashMap<Integer, Integer[]> y = new HashMap<>();
    private static final HashMap<Integer, Integer[]> z = new HashMap<>();
    private static final Integer[] E = new Integer[m.length];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HijrahDate.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19744a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19744a[k.b.a.x.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19744a[k.b.a.x.a.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19744a[k.b.a.x.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19744a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19744a[k.b.a.x.a.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19744a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19744a[k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19744a[k.b.a.x.a.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19744a[k.b.a.x.a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19744a[k.b.a.x.a.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19744a[k.b.a.x.a.YEAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19744a[k.b.a.x.a.ERA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = m;
            if (i3 >= iArr.length) {
                break;
            }
            E[i3] = Integer.valueOf(iArr[i3]);
            i3++;
        }
        F = new Integer[n.length];
        int i4 = 0;
        while (true) {
            int[] iArr2 = n;
            if (i4 >= iArr2.length) {
                break;
            }
            F[i4] = Integer.valueOf(iArr2[i4]);
            i4++;
        }
        G = new Integer[o.length];
        int i5 = 0;
        while (true) {
            int[] iArr3 = o;
            if (i5 >= iArr3.length) {
                break;
            }
            G[i5] = Integer.valueOf(iArr3[i5]);
            i5++;
        }
        H = new Integer[p.length];
        int i6 = 0;
        while (true) {
            int[] iArr4 = p;
            if (i6 >= iArr4.length) {
                break;
            }
            H[i6] = Integer.valueOf(iArr4[i6]);
            i6++;
        }
        I = new Integer[t.length];
        int i7 = 0;
        while (true) {
            int[] iArr5 = t;
            if (i7 >= iArr5.length) {
                break;
            }
            I[i7] = Integer.valueOf(iArr5[i7]);
            i7++;
        }
        A = new Long[334];
        int i8 = 0;
        while (true) {
            Long[] lArr = A;
            if (i8 >= lArr.length) {
                break;
            }
            lArr[i8] = Long.valueOf(i8 * 10631);
            i8++;
        }
        B = new Integer[q.length];
        int i9 = 0;
        while (true) {
            int[] iArr6 = q;
            if (i9 >= iArr6.length) {
                break;
            }
            B[i9] = Integer.valueOf(iArr6[i9]);
            i9++;
        }
        C = new Integer[r.length];
        int i10 = 0;
        while (true) {
            int[] iArr7 = r;
            if (i10 >= iArr7.length) {
                break;
            }
            C[i10] = Integer.valueOf(iArr7[i10]);
            i10++;
        }
        D = new Integer[s.length];
        while (true) {
            int[] iArr8 = s;
            if (i2 < iArr8.length) {
                D[i2] = Integer.valueOf(iArr8[i2]);
                i2++;
            } else {
                try {
                    b();
                    return;
                } catch (IOException | ParseException unused) {
                    return;
                }
            }
        }
    }

    private l(long j2) {
        int[] b2 = b(j2);
        d(b2[1]);
        c(b2[2]);
        a(b2[3]);
        b(b2[4]);
        this.f19737f = m.of(b2[0]);
        this.f19738g = b2[1];
        this.f19739h = b2[2];
        this.f19740i = b2[3];
        this.f19741j = b2[4];
        this.f19742k = k.b.a.c.of(b2[5]);
        this.gregorianEpochDay = j2;
        this.f19743l = isLeapYear(this.f19738g);
    }

    private static void a(int i2) {
        if (i2 < 1 || i2 > getMaximumDayOfMonth()) {
            throw new k.b.a.b("Invalid day of month of Hijrah date, day " + i2 + " greater than " + getMaximumDayOfMonth() + " or less than 1");
        }
    }

    private static void b(int i2) {
        if (i2 < 1 || i2 > getMaximumDayOfYear()) {
            throw new k.b.a.b("Invalid day of year of Hijrah date");
        }
    }

    private static void c(int i2) {
        if (i2 < 1 || i2 > 12) {
            throw new k.b.a.b("Invalid month of Hijrah date");
        }
    }

    private static void d(int i2) {
        if (i2 < 1 || i2 > 9999) {
            throw new k.b.a.b("Invalid year of Hijrah Era");
        }
    }

    private static Integer[] e(int i2) {
        Integer[] numArr;
        try {
            numArr = z.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? I : numArr;
    }

    private static Integer[] f(int i2) {
        Integer[] numArr;
        try {
            numArr = x.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr != null) {
            return numArr;
        }
        if (isLeapYear(i2)) {
            return F;
        }
        return E;
    }

    public static l from(k.b.a.x.e eVar) {
        return k.INSTANCE.date(eVar);
    }

    private static Integer[] g(int i2) {
        Integer[] numArr;
        try {
            numArr = y.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr != null) {
            return numArr;
        }
        if (isLeapYear(i2)) {
            return H;
        }
        return G;
    }

    static int getMaximumDayOfMonth() {
        return D[5].intValue();
    }

    static int getMaximumDayOfYear() {
        return D[6].intValue();
    }

    static int getMonthLength(int i2, int i3) {
        return g(i3)[i2].intValue();
    }

    static int getSmallestMaximumDayOfMonth() {
        return C[5].intValue();
    }

    static int getSmallestMaximumDayOfYear() {
        return C[6].intValue();
    }

    static int getYearLength(int i2) {
        Integer[] numArr;
        int intValue;
        int intValue2;
        int i3 = i2 - 1;
        int i4 = i3 / 30;
        try {
            numArr = z.get(Integer.valueOf(i4));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr == null) {
            return isLeapYear((long) i2) ? 355 : 354;
        }
        int i5 = i3 % 30;
        if (i5 == 29) {
            intValue = A[i4 + 1].intValue() - A[i4].intValue();
            intValue2 = numArr[i5].intValue();
        } else {
            intValue = numArr[i5 + 1].intValue();
            intValue2 = numArr[i5].intValue();
        }
        return intValue - intValue2;
    }

    private static long h(int i2) {
        Long l2;
        int i3 = i2 - 1;
        int i4 = i3 / 30;
        int i5 = i3 % 30;
        int intValue = e(i4)[Math.abs(i5)].intValue();
        if (i5 < 0) {
            intValue = -intValue;
        }
        try {
            l2 = A[i4];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l2 = null;
        }
        if (l2 == null) {
            l2 = Long.valueOf(i4 * 10631);
        }
        return ((l2.longValue() + intValue) - 492148) - 1;
    }

    public static l now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static l of(int i2, int i3, int i4) {
        if (i2 >= 1) {
            return of(m.AH, i2, i3, i4);
        }
        return of(m.BEFORE_AH, 1 - i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l ofEpochDay(long j2) {
        return new l(j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) {
        return k.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object readResolve() {
        return new l(this.gregorianEpochDay);
    }

    private Object writeReplace() {
        return new v((byte) 3, this);
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public final c<l> atTime(k.b.a.h hVar) {
        return super.atTime(hVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000f. Please report as an issue. */
    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        int i2;
        int i3;
        if (iVar instanceof k.b.a.x.a) {
            switch (a.f19744a[((k.b.a.x.a) iVar).ordinal()]) {
                case 1:
                    i2 = this.f19740i;
                    return i2;
                case 2:
                    i2 = this.f19741j;
                    return i2;
                case 3:
                    i3 = (this.f19740i - 1) / 7;
                    i2 = i3 + 1;
                    return i2;
                case 4:
                    i2 = this.f19738g;
                    return i2;
                case 5:
                    i2 = this.f19742k.getValue();
                    return i2;
                case 6:
                    i3 = (this.f19740i - 1) % 7;
                    i2 = i3 + 1;
                    return i2;
                case 7:
                    i3 = (this.f19741j - 1) % 7;
                    i2 = i3 + 1;
                    return i2;
                case 8:
                    return toEpochDay();
                case 9:
                    i3 = (this.f19741j - 1) / 7;
                    i2 = i3 + 1;
                    return i2;
                case 10:
                    i2 = this.f19739h;
                    return i2;
                case 11:
                    i2 = this.f19738g;
                    return i2;
                case 12:
                    i2 = this.f19737f.getValue();
                    return i2;
                default:
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
            }
        }
        return iVar.getFrom(this);
    }

    @Override // k.b.a.u.b
    public boolean isLeapYear() {
        return this.f19743l;
    }

    @Override // k.b.a.u.b
    public int lengthOfMonth() {
        return getMonthLength(this.f19739h - 1, this.f19738g);
    }

    @Override // k.b.a.u.b
    public int lengthOfYear() {
        return getYearLength(this.f19738g);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (isSupported(iVar)) {
                k.b.a.x.a aVar = (k.b.a.x.a) iVar;
                int i2 = a.f19744a[aVar.ordinal()];
                if (i2 == 1) {
                    return k.b.a.x.n.of(1L, lengthOfMonth());
                }
                if (i2 == 2) {
                    return k.b.a.x.n.of(1L, lengthOfYear());
                }
                if (i2 == 3) {
                    return k.b.a.x.n.of(1L, 5L);
                }
                if (i2 != 4) {
                    return getChronology().range(aVar);
                }
                return k.b.a.x.n.of(1L, 1000L);
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.b
    public long toEpochDay() {
        return c(this.f19738g, this.f19739h, this.f19740i);
    }

    @Override // k.b.a.u.a, k.b.a.x.d
    public /* bridge */ /* synthetic */ long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        return super.until(dVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(get(k.b.a.x.a.YEAR));
        dataOutput.writeByte(get(k.b.a.x.a.MONTH_OF_YEAR));
        dataOutput.writeByte(get(k.b.a.x.a.DAY_OF_MONTH));
    }

    private static long c(int i2, int i3, int i4) {
        return h(i2) + a(i3 - 1, i2) + i4;
    }

    private static l d(int i2, int i3, int i4) {
        int a2 = a(i3 - 1, i2);
        if (i4 > a2) {
            i4 = a2;
        }
        return of(i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLeapYear(long j2) {
        if (j2 <= 0) {
            j2 = -j2;
        }
        return ((j2 * 11) + 14) % 30 < 11;
    }

    public static l now(k.b.a.q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    @Override // k.b.a.u.b
    public k getChronology() {
        return k.INSTANCE;
    }

    @Override // k.b.a.u.b
    public m getEra() {
        return this.f19737f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<l> plusDays(long j2) {
        return new l(this.gregorianEpochDay + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<l> plusMonths(long j2) {
        if (j2 == 0) {
            return this;
        }
        int i2 = (this.f19739h - 1) + ((int) j2);
        int i3 = i2 / 12;
        int i4 = i2 % 12;
        while (i4 < 0) {
            i4 += 12;
            i3 = k.b.a.w.d.f(i3, 1);
        }
        return of(this.f19737f, k.b.a.w.d.d(this.f19738g, i3), i4 + 1, this.f19740i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<l> plusYears(long j2) {
        if (j2 == 0) {
            return this;
        }
        return of(this.f19737f, k.b.a.w.d.d(this.f19738g, (int) j2), this.f19739h, this.f19740i);
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public /* bridge */ /* synthetic */ e until(b bVar) {
        return super.until(bVar);
    }

    private static int[] b(long j2) {
        int b2;
        int a2;
        int value;
        int i2;
        int i3;
        long j3 = j2 - (-492148);
        if (j3 >= 0) {
            int a3 = a(j3);
            int a4 = a(j3, a3);
            int a5 = a(a3, a4);
            i2 = b(a3, a4, a5);
            i3 = (a3 * 30) + a5 + 1;
            b2 = b(i2, i3);
            a2 = a(i2, b2, i3) + 1;
            value = m.AH.getValue();
        } else {
            int i4 = (int) j3;
            int i5 = i4 / 10631;
            int i6 = i4 % 10631;
            if (i6 == 0) {
                i6 = -10631;
                i5++;
            }
            int a6 = a(i5, i6);
            int b3 = b(i5, i6, a6);
            int i7 = 1 - ((i5 * 30) - a6);
            int i8 = isLeapYear((long) i7) ? b3 + 355 : b3 + 354;
            b2 = b(i8, i7);
            a2 = a(i8, b2, i7) + 1;
            value = m.BEFORE_AH.getValue();
            i2 = i8;
            i3 = i7;
        }
        int i9 = (int) ((j3 + 5) % 7);
        return new int[]{value, i3, b2 + 1, a2, i2 + 1, i9 + (i9 <= 0 ? 7 : 0)};
    }

    public static l now(k.b.a.a aVar) {
        return k.INSTANCE.dateNow(aVar);
    }

    static l of(m mVar, int i2, int i3, int i4) {
        k.b.a.w.d.a(mVar, "era");
        d(i2);
        c(i3);
        a(i4);
        return new l(c(mVar.prolepticYear(i2), i3, i4));
    }

    private static int a(long j2) {
        Long[] lArr = A;
        for (int i2 = 0; i2 < lArr.length; i2++) {
            try {
                if (j2 < lArr[i2].longValue()) {
                    return i2 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                return ((int) j2) / 10631;
            }
        }
        return ((int) j2) / 10631;
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public l minus(k.b.a.x.h hVar) {
        return (l) super.minus(hVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public l with(k.b.a.x.f fVar) {
        return (l) super.with(fVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public l minus(long j2, k.b.a.x.l lVar) {
        return (l) super.minus(j2, lVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public l plus(k.b.a.x.h hVar) {
        return (l) super.plus(hVar);
    }

    /* JADX WARN: Type inference failed for: r6v14, types: [k.b.a.u.l] */
    /* JADX WARN: Type inference failed for: r6v16, types: [k.b.a.u.l] */
    /* JADX WARN: Type inference failed for: r6v18, types: [k.b.a.u.l] */
    /* JADX WARN: Type inference failed for: r6v21, types: [k.b.a.u.l] */
    /* JADX WARN: Type inference failed for: r6v8, types: [k.b.a.u.l] */
    @Override // k.b.a.u.b, k.b.a.x.d
    public l with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            aVar.checkValidValue(j2);
            int i2 = (int) j2;
            switch (a.f19744a[aVar.ordinal()]) {
                case 1:
                    return d(this.f19738g, this.f19739h, i2);
                case 2:
                    int i3 = i2 - 1;
                    return d(this.f19738g, (i3 / 30) + 1, (i3 % 30) + 1);
                case 3:
                    return plusDays((j2 - getLong(k.b.a.x.a.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    if (this.f19738g < 1) {
                        i2 = 1 - i2;
                    }
                    return d(i2, this.f19739h, this.f19740i);
                case 5:
                    return plusDays(j2 - this.f19742k.getValue());
                case 6:
                    return plusDays(j2 - getLong(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays(j2 - getLong(k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return new l(i2);
                case 9:
                    return plusDays((j2 - getLong(k.b.a.x.a.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 10:
                    return d(this.f19738g, i2, this.f19740i);
                case 11:
                    return d(i2, this.f19739h, this.f19740i);
                case 12:
                    return d(1 - this.f19738g, this.f19739h, this.f19740i);
                default:
                    throw new k.b.a.x.m("Unsupported field: " + iVar);
            }
        }
        return (l) iVar.adjustInto(this, j2);
    }

    @Override // k.b.a.u.a, k.b.a.u.b, k.b.a.x.d
    public l plus(long j2, k.b.a.x.l lVar) {
        return (l) super.plus(j2, lVar);
    }

    private static int a(long j2, int i2) {
        Long l2;
        try {
            l2 = A[i2];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l2 = null;
        }
        if (l2 == null) {
            l2 = Long.valueOf(i2 * 10631);
        }
        return (int) (j2 - l2.longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l of(k.b.a.f fVar) {
        return new l(fVar.toEpochDay());
    }

    private static int a(int i2, long j2) {
        Integer[] e2 = e(i2);
        int i3 = 0;
        if (j2 == 0) {
            return 0;
        }
        if (j2 > 0) {
            while (i3 < e2.length) {
                if (j2 < e2[i3].intValue()) {
                    return i3 - 1;
                }
                i3++;
            }
            return 29;
        }
        long j3 = -j2;
        while (i3 < e2.length) {
            if (j3 <= e2[i3].intValue()) {
                return i3 - 1;
            }
            i3++;
        }
        return 29;
    }

    private static int a(int i2, int i3, int i4) {
        int intValue;
        Integer[] f2 = f(i4);
        if (i2 < 0) {
            i2 = isLeapYear((long) i4) ? i2 + 355 : i2 + 354;
            if (i3 <= 0) {
                return i2;
            }
            intValue = f2[i3].intValue();
        } else {
            if (i3 <= 0) {
                return i2;
            }
            intValue = f2[i3].intValue();
        }
        return i2 - intValue;
    }

    private static int b(int i2, int i3, int i4) {
        Integer[] e2 = e(i2);
        if (i3 > 0) {
            return i3 - e2[i4].intValue();
        }
        return e2[i4].intValue() + i3;
    }

    private static int a(int i2, int i3) {
        return f(i3)[i2].intValue();
    }

    private static int b(int i2, int i3) {
        Integer[] f2 = f(i3);
        int i4 = 0;
        if (i2 >= 0) {
            while (i4 < f2.length) {
                if (i2 < f2[i4].intValue()) {
                    return i4 - 1;
                }
                i4++;
            }
            return 11;
        }
        int i5 = isLeapYear((long) i3) ? i2 + 355 : i2 + 354;
        while (i4 < f2.length) {
            if (i5 < f2[i4].intValue()) {
                return i4 - 1;
            }
            i4++;
        }
        return 11;
    }

    private static void a(int i2, int i3, int i4, int i5, int i6) {
        if (i2 < 1) {
            throw new IllegalArgumentException("startYear < 1");
        }
        if (i4 < 1) {
            throw new IllegalArgumentException("endYear < 1");
        }
        if (i3 < 0 || i3 > 11) {
            throw new IllegalArgumentException("startMonth < 0 || startMonth > 11");
        }
        if (i5 < 0 || i5 > 11) {
            throw new IllegalArgumentException("endMonth < 0 || endMonth > 11");
        }
        if (i4 > 9999) {
            throw new IllegalArgumentException("endYear > 9999");
        }
        if (i4 < i2) {
            throw new IllegalArgumentException("startYear > endYear");
        }
        if (i4 == i2 && i5 < i3) {
            throw new IllegalArgumentException("startYear == endYear && endMonth < startMonth");
        }
        boolean isLeapYear = isLeapYear(i2);
        Integer[] numArr = x.get(Integer.valueOf(i2));
        if (numArr == null) {
            if (isLeapYear) {
                numArr = new Integer[n.length];
                int i7 = 0;
                while (true) {
                    int[] iArr = n;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    numArr[i7] = Integer.valueOf(iArr[i7]);
                    i7++;
                }
            } else {
                numArr = new Integer[m.length];
                int i8 = 0;
                while (true) {
                    int[] iArr2 = m;
                    if (i8 >= iArr2.length) {
                        break;
                    }
                    numArr[i8] = Integer.valueOf(iArr2[i8]);
                    i8++;
                }
            }
        }
        Integer[] numArr2 = new Integer[numArr.length];
        for (int i9 = 0; i9 < 12; i9++) {
            if (i9 > i3) {
                numArr2[i9] = Integer.valueOf(numArr[i9].intValue() - i6);
            } else {
                numArr2[i9] = Integer.valueOf(numArr[i9].intValue());
            }
        }
        x.put(Integer.valueOf(i2), numArr2);
        Integer[] numArr3 = y.get(Integer.valueOf(i2));
        if (numArr3 == null) {
            if (isLeapYear) {
                numArr3 = new Integer[p.length];
                int i10 = 0;
                while (true) {
                    int[] iArr3 = p;
                    if (i10 >= iArr3.length) {
                        break;
                    }
                    numArr3[i10] = Integer.valueOf(iArr3[i10]);
                    i10++;
                }
            } else {
                numArr3 = new Integer[o.length];
                int i11 = 0;
                while (true) {
                    int[] iArr4 = o;
                    if (i11 >= iArr4.length) {
                        break;
                    }
                    numArr3[i11] = Integer.valueOf(iArr4[i11]);
                    i11++;
                }
            }
        }
        Integer[] numArr4 = new Integer[numArr3.length];
        for (int i12 = 0; i12 < 12; i12++) {
            if (i12 == i3) {
                numArr4[i12] = Integer.valueOf(numArr3[i12].intValue() - i6);
            } else {
                numArr4[i12] = Integer.valueOf(numArr3[i12].intValue());
            }
        }
        y.put(Integer.valueOf(i2), numArr4);
        if (i2 != i4) {
            int i13 = i2 - 1;
            int i14 = i13 / 30;
            int i15 = i13 % 30;
            Integer[] numArr5 = z.get(Integer.valueOf(i14));
            if (numArr5 == null) {
                numArr5 = new Integer[t.length];
                for (int i16 = 0; i16 < numArr5.length; i16++) {
                    numArr5[i16] = Integer.valueOf(t[i16]);
                }
            }
            for (int i17 = i15 + 1; i17 < t.length; i17++) {
                numArr5[i17] = Integer.valueOf(numArr5[i17].intValue() - i6);
            }
            z.put(Integer.valueOf(i14), numArr5);
            int i18 = i4 - 1;
            int i19 = i18 / 30;
            if (i14 != i19) {
                int i20 = i14 + 1;
                while (true) {
                    Long[] lArr = A;
                    if (i20 >= lArr.length) {
                        break;
                    }
                    lArr[i20] = Long.valueOf(lArr[i20].longValue() - i6);
                    i20++;
                }
                int i21 = i19 + 1;
                while (true) {
                    Long[] lArr2 = A;
                    if (i21 >= lArr2.length) {
                        break;
                    }
                    lArr2[i21] = Long.valueOf(lArr2[i21].longValue() + i6);
                    i21++;
                    i19 = i19;
                }
            }
            int i22 = i19;
            int i23 = i18 % 30;
            Integer[] numArr6 = z.get(Integer.valueOf(i22));
            if (numArr6 == null) {
                numArr6 = new Integer[t.length];
                for (int i24 = 0; i24 < numArr6.length; i24++) {
                    numArr6[i24] = Integer.valueOf(t[i24]);
                }
            }
            for (int i25 = i23 + 1; i25 < t.length; i25++) {
                numArr6[i25] = Integer.valueOf(numArr6[i25].intValue() + i6);
            }
            z.put(Integer.valueOf(i22), numArr6);
        }
        boolean isLeapYear2 = isLeapYear(i4);
        Integer[] numArr7 = x.get(Integer.valueOf(i4));
        if (numArr7 == null) {
            if (isLeapYear2) {
                numArr7 = new Integer[n.length];
                int i26 = 0;
                while (true) {
                    int[] iArr5 = n;
                    if (i26 >= iArr5.length) {
                        break;
                    }
                    numArr7[i26] = Integer.valueOf(iArr5[i26]);
                    i26++;
                }
            } else {
                numArr7 = new Integer[m.length];
                int i27 = 0;
                while (true) {
                    int[] iArr6 = m;
                    if (i27 >= iArr6.length) {
                        break;
                    }
                    numArr7[i27] = Integer.valueOf(iArr6[i27]);
                    i27++;
                }
            }
        }
        Integer[] numArr8 = new Integer[numArr7.length];
        for (int i28 = 0; i28 < 12; i28++) {
            if (i28 > i5) {
                numArr8[i28] = Integer.valueOf(numArr7[i28].intValue() + i6);
            } else {
                numArr8[i28] = Integer.valueOf(numArr7[i28].intValue());
            }
        }
        x.put(Integer.valueOf(i4), numArr8);
        Integer[] numArr9 = y.get(Integer.valueOf(i4));
        if (numArr9 == null) {
            if (isLeapYear2) {
                numArr9 = new Integer[p.length];
                int i29 = 0;
                while (true) {
                    int[] iArr7 = p;
                    if (i29 >= iArr7.length) {
                        break;
                    }
                    numArr9[i29] = Integer.valueOf(iArr7[i29]);
                    i29++;
                }
            } else {
                numArr9 = new Integer[o.length];
                int i30 = 0;
                while (true) {
                    int[] iArr8 = o;
                    if (i30 >= iArr8.length) {
                        break;
                    }
                    numArr9[i30] = Integer.valueOf(iArr8[i30]);
                    i30++;
                }
            }
        }
        Integer[] numArr10 = new Integer[numArr9.length];
        for (int i31 = 0; i31 < 12; i31++) {
            if (i31 == i5) {
                numArr10[i31] = Integer.valueOf(numArr9[i31].intValue() + i6);
            } else {
                numArr10[i31] = Integer.valueOf(numArr9[i31].intValue());
            }
        }
        y.put(Integer.valueOf(i4), numArr10);
        Integer[] numArr11 = y.get(Integer.valueOf(i2));
        Integer[] numArr12 = y.get(Integer.valueOf(i4));
        Integer[] numArr13 = x.get(Integer.valueOf(i2));
        Integer[] numArr14 = x.get(Integer.valueOf(i4));
        int intValue = numArr11[i3].intValue();
        int intValue2 = numArr12[i5].intValue();
        int intValue3 = numArr13[11].intValue() + numArr11[11].intValue();
        int intValue4 = numArr14[11].intValue() + numArr12[11].intValue();
        int intValue5 = D[5].intValue();
        int intValue6 = C[5].intValue();
        if (intValue5 < intValue) {
            intValue5 = intValue;
        }
        if (intValue5 < intValue2) {
            intValue5 = intValue2;
        }
        D[5] = Integer.valueOf(intValue5);
        if (intValue6 <= intValue) {
            intValue = intValue6;
        }
        if (intValue > intValue2) {
            intValue = intValue2;
        }
        C[5] = Integer.valueOf(intValue);
        int intValue7 = D[6].intValue();
        int intValue8 = C[6].intValue();
        if (intValue7 < intValue3) {
            intValue7 = intValue3;
        }
        if (intValue7 < intValue4) {
            intValue7 = intValue4;
        }
        D[6] = Integer.valueOf(intValue7);
        if (intValue8 <= intValue3) {
            intValue3 = intValue8;
        }
        if (intValue3 > intValue4) {
            intValue3 = intValue4;
        }
        C[6] = Integer.valueOf(intValue3);
    }

    private static void b() {
        InputStream a2 = a();
        if (a2 == null) {
            return;
        }
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(a2));
            int i2 = 0;
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        i2++;
                        a(readLine.trim(), i2);
                    } else {
                        bufferedReader2.close();
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void a(String str, int i2) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(58);
            if (indexOf != -1) {
                try {
                    int parseInt = Integer.parseInt(nextToken.substring(indexOf + 1, nextToken.length()));
                    int indexOf2 = nextToken.indexOf(45);
                    if (indexOf2 != -1) {
                        String substring = nextToken.substring(0, indexOf2);
                        String substring2 = nextToken.substring(indexOf2 + 1, indexOf);
                        int indexOf3 = substring.indexOf(47);
                        int indexOf4 = substring2.indexOf(47);
                        if (indexOf3 != -1) {
                            String substring3 = substring.substring(0, indexOf3);
                            String substring4 = substring.substring(indexOf3 + 1, substring.length());
                            try {
                                int parseInt2 = Integer.parseInt(substring3);
                                try {
                                    int parseInt3 = Integer.parseInt(substring4);
                                    if (indexOf4 != -1) {
                                        String substring5 = substring2.substring(0, indexOf4);
                                        String substring6 = substring2.substring(indexOf4 + 1, substring2.length());
                                        try {
                                            int parseInt4 = Integer.parseInt(substring5);
                                            try {
                                                int parseInt5 = Integer.parseInt(substring6);
                                                if (parseInt2 != -1 && parseInt3 != -1 && parseInt4 != -1 && parseInt5 != -1) {
                                                    a(parseInt2, parseInt3, parseInt4, parseInt5, parseInt);
                                                } else {
                                                    throw new ParseException("Unknown error at line " + i2 + ".", i2);
                                                }
                                            } catch (NumberFormatException unused) {
                                                throw new ParseException("End month is not properly set at line " + i2 + ".", i2);
                                            }
                                        } catch (NumberFormatException unused2) {
                                            throw new ParseException("End year is not properly set at line " + i2 + ".", i2);
                                        }
                                    } else {
                                        throw new ParseException("End year/month has incorrect format at line " + i2 + ".", i2);
                                    }
                                } catch (NumberFormatException unused3) {
                                    throw new ParseException("Start month is not properly set at line " + i2 + ".", i2);
                                }
                            } catch (NumberFormatException unused4) {
                                throw new ParseException("Start year is not properly set at line " + i2 + ".", i2);
                            }
                        } else {
                            throw new ParseException("Start year/month has incorrect format at line " + i2 + ".", i2);
                        }
                    } else {
                        throw new ParseException("Start and end year/month has incorrect format at line " + i2 + ".", i2);
                    }
                } catch (NumberFormatException unused5) {
                    throw new ParseException("Offset is not properly set at line " + i2 + ".", i2);
                }
            } else {
                throw new ParseException("Offset has incorrect format at line " + i2 + ".", i2);
            }
        }
    }

    private static InputStream a() {
        ZipFile zipFile;
        String property = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigFile");
        if (property == null) {
            property = "hijrah_deviation.cfg";
        }
        String property2 = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigDir");
        if (property2 != null) {
            if (property2.length() != 0 || !property2.endsWith(System.getProperty("file.separator"))) {
                property2 = property2 + System.getProperty("file.separator");
            }
            File file = new File(property2 + u + property);
            if (!file.exists()) {
                return null;
            }
            try {
                return new FileInputStream(file);
            } catch (IOException e2) {
                throw e2;
            }
        }
        StringTokenizer stringTokenizer = new StringTokenizer(System.getProperty("java.class.path"), v);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            File file2 = new File(nextToken);
            if (file2.exists()) {
                if (file2.isDirectory()) {
                    if (new File(nextToken + u + w, property).exists()) {
                        try {
                            return new FileInputStream(nextToken + u + w + u + property);
                        } catch (IOException e3) {
                            throw e3;
                        }
                    }
                } else {
                    try {
                        zipFile = new ZipFile(file2);
                    } catch (IOException unused) {
                        zipFile = null;
                    }
                    if (zipFile != null) {
                        String str = w + u + property;
                        ZipEntry entry = zipFile.getEntry(str);
                        if (entry == null) {
                            char c2 = u;
                            if (c2 == '/') {
                                str = str.replace('/', '\\');
                            } else if (c2 == '\\') {
                                str = str.replace('\\', '/');
                            }
                            entry = zipFile.getEntry(str);
                        }
                        if (entry != null) {
                            try {
                                return zipFile.getInputStream(entry);
                            } catch (IOException e4) {
                                throw e4;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }
}
