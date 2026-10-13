package k.b.a;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* compiled from: MonthDay.java */
/* loaded from: classes2.dex */
public final class j extends k.b.a.w.c implements k.b.a.x.e, k.b.a.x.f, Comparable<j>, Serializable {
    public static final k.b.a.x.k<j> FROM = new a();

    /* renamed from: e, reason: collision with root package name */
    private static final k.b.a.v.b f19704e;
    private static final long serialVersionUID = -939150713474957432L;
    private final int day;
    private final int month;

    /* compiled from: MonthDay.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<j> {
        a() {
        }

        @Override // k.b.a.x.k
        public j a(k.b.a.x.e eVar) {
            return j.from(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MonthDay.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19705a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19705a[k.b.a.x.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19705a[k.b.a.x.a.MONTH_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a("--");
        cVar.a(k.b.a.x.a.MONTH_OF_YEAR, 2);
        cVar.a('-');
        cVar.a(k.b.a.x.a.DAY_OF_MONTH, 2);
        f19704e = cVar.i();
    }

    private j(int i2, int i3) {
        this.month = i2;
        this.day = i3;
    }

    public static j from(k.b.a.x.e eVar) {
        if (eVar instanceof j) {
            return (j) eVar;
        }
        try {
            if (!k.b.a.u.n.INSTANCE.equals(k.b.a.u.i.from(eVar))) {
                eVar = f.from(eVar);
            }
            return of(eVar.get(k.b.a.x.a.MONTH_OF_YEAR), eVar.get(k.b.a.x.a.DAY_OF_MONTH));
        } catch (k.b.a.b unused) {
            throw new k.b.a.b("Unable to obtain MonthDay from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static j now() {
        return now(k.b.a.a.systemDefaultZone());
    }

    public static j of(i iVar, int i2) {
        k.b.a.w.d.a(iVar, "month");
        k.b.a.x.a.DAY_OF_MONTH.checkValidValue(i2);
        if (i2 <= iVar.maxLength()) {
            return new j(iVar.getValue(), i2);
        }
        throw new k.b.a.b("Illegal value for DayOfMonth field, value " + i2 + " is not valid for month " + iVar.name());
    }

    public static j parse(CharSequence charSequence) {
        return parse(charSequence, f19704e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j readExternal(DataInput dataInput) {
        return of(dataInput.readByte(), dataInput.readByte());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 64, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        if (k.b.a.u.i.from(dVar).equals(k.b.a.u.n.INSTANCE)) {
            k.b.a.x.d with = dVar.with(k.b.a.x.a.MONTH_OF_YEAR, this.month);
            k.b.a.x.a aVar = k.b.a.x.a.DAY_OF_MONTH;
            return with.with(aVar, Math.min(with.range(aVar).getMaximum(), this.day));
        }
        throw new k.b.a.b("Adjustment only supported on ISO date-time");
    }

    public f atYear(int i2) {
        return f.of(i2, this.month, isValidYear(i2) ? this.day : 28);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.month == jVar.month && this.day == jVar.day;
    }

    public String format(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return bVar.a(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    public int getDayOfMonth() {
        return this.day;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        int i2;
        if (iVar instanceof k.b.a.x.a) {
            int i3 = b.f19705a[((k.b.a.x.a) iVar).ordinal()];
            if (i3 == 1) {
                i2 = this.day;
            } else if (i3 == 2) {
                i2 = this.month;
            } else {
                throw new k.b.a.x.m("Unsupported field: " + iVar);
            }
            return i2;
        }
        return iVar.getFrom(this);
    }

    public i getMonth() {
        return i.of(this.month);
    }

    public int getMonthValue() {
        return this.month;
    }

    public int hashCode() {
        return (this.month << 6) + this.day;
    }

    public boolean isAfter(j jVar) {
        return compareTo(jVar) > 0;
    }

    public boolean isBefore(j jVar) {
        return compareTo(jVar) < 0;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.MONTH_OF_YEAR || iVar == k.b.a.x.a.DAY_OF_MONTH : iVar != null && iVar.isSupportedBy(this);
    }

    public boolean isValidYear(int i2) {
        return !(this.day == 29 && this.month == 2 && !o.isLeap((long) i2));
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.a()) {
            return (R) k.b.a.u.n.INSTANCE;
        }
        return (R) super.query(kVar);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.MONTH_OF_YEAR) {
            return iVar.range();
        }
        if (iVar == k.b.a.x.a.DAY_OF_MONTH) {
            return k.b.a.x.n.of(1L, getMonth().minLength(), getMonth().maxLength());
        }
        return super.range(iVar);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.month < 10 ? ZimPlatform.REASON_0 : "");
        sb.append(this.month);
        sb.append(this.day < 10 ? "-0" : "-");
        sb.append(this.day);
        return sb.toString();
    }

    public j with(i iVar) {
        k.b.a.w.d.a(iVar, "month");
        if (iVar.getValue() == this.month) {
            return this;
        }
        return new j(iVar.getValue(), Math.min(this.day, iVar.maxLength()));
    }

    public j withDayOfMonth(int i2) {
        return i2 == this.day ? this : of(this.month, i2);
    }

    public j withMonth(int i2) {
        return with(i.of(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    public static j now(q qVar) {
        return now(k.b.a.a.system(qVar));
    }

    public static j parse(CharSequence charSequence, k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        return (j) bVar.a(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(j jVar) {
        int i2 = this.month - jVar.month;
        return i2 == 0 ? this.day - jVar.day : i2;
    }

    public static j now(k.b.a.a aVar) {
        f now = f.now(aVar);
        return of(now.getMonth(), now.getDayOfMonth());
    }

    public static j of(int i2, int i3) {
        return of(i.of(i2), i3);
    }
}
