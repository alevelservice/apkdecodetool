package k.b.a.u;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Serializable;

/* compiled from: ThaiBuddhistDate.java */
/* loaded from: classes2.dex */
public final class x extends k.b.a.u.a<x> implements Serializable {
    private static final long serialVersionUID = -8722293800195731463L;
    private final k.b.a.f isoDate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThaiBuddhistDate.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19764a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19764a[k.b.a.x.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19764a[k.b.a.x.a.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19764a[k.b.a.x.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19764a[k.b.a.x.a.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19764a[k.b.a.x.a.PROLEPTIC_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19764a[k.b.a.x.a.YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19764a[k.b.a.x.a.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(k.b.a.f fVar) {
        k.b.a.w.d.a(fVar, "date");
        this.isoDate = fVar;
    }

    private long a() {
        return ((b() * 12) + this.isoDate.getMonthValue()) - 1;
    }

    private int b() {
        return this.isoDate.getYear() + 543;
    }

    public static x from(k.b.a.x.e eVar) {
        return w.INSTANCE.date(eVar);
    }

    public static x now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static x of(int i2, int i3, int i4) {
        return w.INSTANCE.date(i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) {
        return w.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object writeReplace() {
        return new v((byte) 7, this);
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public final c<x> atTime(k.b.a.h hVar) {
        return super.atTime(hVar);
    }

    @Override // k.b.a.u.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.isoDate.equals(((x) obj).isoDate);
        }
        return false;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            int i2 = a.f19764a[((k.b.a.x.a) iVar).ordinal()];
            if (i2 == 4) {
                int b2 = b();
                if (b2 < 1) {
                    b2 = 1 - b2;
                }
                return b2;
            }
            if (i2 == 5) {
                return a();
            }
            if (i2 == 6) {
                return b();
            }
            if (i2 != 7) {
                return this.isoDate.getLong(iVar);
            }
            return b() < 1 ? 0 : 1;
        }
        return iVar.getFrom(this);
    }

    @Override // k.b.a.u.b
    public int hashCode() {
        return getChronology().getId().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // k.b.a.u.b
    public int lengthOfMonth() {
        return this.isoDate.lengthOfMonth();
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (isSupported(iVar)) {
                k.b.a.x.a aVar = (k.b.a.x.a) iVar;
                int i2 = a.f19764a[aVar.ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    return this.isoDate.range(iVar);
                }
                if (i2 != 4) {
                    return getChronology().range(aVar);
                }
                k.b.a.x.n range = k.b.a.x.a.YEAR.range();
                return k.b.a.x.n.of(1L, b() <= 0 ? (-(range.getMinimum() + 543)) + 1 : 543 + range.getMaximum());
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.b
    public long toEpochDay() {
        return this.isoDate.toEpochDay();
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

    private x a(k.b.a.f fVar) {
        return fVar.equals(this.isoDate) ? this : new x(fVar);
    }

    public static x now(k.b.a.q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    @Override // k.b.a.u.b
    public w getChronology() {
        return w.INSTANCE;
    }

    @Override // k.b.a.u.b
    public y getEra() {
        return (y) super.getEra();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<x> plusDays(long j2) {
        return a(this.isoDate.plusDays(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<x> plusMonths(long j2) {
        return a(this.isoDate.plusMonths(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.u.a
    public k.b.a.u.a<x> plusYears(long j2) {
        return a(this.isoDate.plusYears(j2));
    }

    @Override // k.b.a.u.a, k.b.a.u.b
    public e until(b bVar) {
        k.b.a.m until = this.isoDate.until(bVar);
        return getChronology().period(until.getYears(), until.getMonths(), until.getDays());
    }

    public static x now(k.b.a.a aVar) {
        return new x(k.b.a.f.now(aVar));
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public x minus(k.b.a.x.h hVar) {
        return (x) super.minus(hVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public x with(k.b.a.x.f fVar) {
        return (x) super.with(fVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b, k.b.a.x.d
    public x minus(long j2, k.b.a.x.l lVar) {
        return (x) super.minus(j2, lVar);
    }

    @Override // k.b.a.u.b, k.b.a.w.b
    public x plus(k.b.a.x.h hVar) {
        return (x) super.plus(hVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r1 != 7) goto L20;
     */
    /* JADX WARN: Type inference failed for: r7v16, types: [k.b.a.u.x] */
    @Override // k.b.a.u.b, k.b.a.x.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k.b.a.u.x with(k.b.a.x.i r7, long r8) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof k.b.a.x.a
            if (r0 == 0) goto L95
            r0 = r7
            k.b.a.x.a r0 = (k.b.a.x.a) r0
            long r1 = r6.getLong(r0)
            int r3 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r3 != 0) goto L10
            return r6
        L10:
            int[] r1 = k.b.a.u.x.a.f19764a
            int r2 = r0.ordinal()
            r1 = r1[r2]
            r2 = 7
            r3 = 6
            r4 = 4
            if (r1 == r4) goto L3a
            r5 = 5
            if (r1 == r5) goto L25
            if (r1 == r3) goto L3a
            if (r1 == r2) goto L3a
            goto L55
        L25:
            k.b.a.u.w r7 = r6.getChronology()
            k.b.a.x.n r7 = r7.range(r0)
            r7.checkValidValue(r8, r0)
            long r0 = r6.a()
            long r8 = r8 - r0
            k.b.a.u.x r7 = r6.plusMonths(r8)
            return r7
        L3a:
            k.b.a.u.w r1 = r6.getChronology()
            k.b.a.x.n r1 = r1.range(r0)
            int r1 = r1.checkValidIntValue(r8, r0)
            int[] r5 = k.b.a.u.x.a.f19764a
            int r0 = r0.ordinal()
            r0 = r5[r0]
            r5 = 1
            if (r0 == r4) goto L7f
            if (r0 == r3) goto L72
            if (r0 == r2) goto L60
        L55:
            k.b.a.f r0 = r6.isoDate
            k.b.a.f r7 = r0.with(r7, r8)
            k.b.a.u.x r7 = r6.a(r7)
            return r7
        L60:
            k.b.a.f r7 = r6.isoDate
            int r8 = r6.b()
            int r5 = r5 - r8
            int r5 = r5 + (-543)
            k.b.a.f r7 = r7.withYear(r5)
            k.b.a.u.x r7 = r6.a(r7)
            return r7
        L72:
            k.b.a.f r7 = r6.isoDate
            int r1 = r1 + (-543)
            k.b.a.f r7 = r7.withYear(r1)
            k.b.a.u.x r7 = r6.a(r7)
            return r7
        L7f:
            k.b.a.f r7 = r6.isoDate
            int r8 = r6.b()
            if (r8 < r5) goto L88
            goto L8a
        L88:
            int r1 = 1 - r1
        L8a:
            int r1 = r1 + (-543)
            k.b.a.f r7 = r7.withYear(r1)
            k.b.a.u.x r7 = r6.a(r7)
            return r7
        L95:
            k.b.a.x.d r7 = r7.adjustInto(r6, r8)
            k.b.a.u.x r7 = (k.b.a.u.x) r7
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.u.x.with(k.b.a.x.i, long):k.b.a.u.x");
    }

    @Override // k.b.a.u.a, k.b.a.u.b, k.b.a.x.d
    public x plus(long j2, k.b.a.x.l lVar) {
        return (x) super.plus(j2, lVar);
    }
}
