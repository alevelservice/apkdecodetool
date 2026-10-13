package k.b.a.y;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Serializable;
import k.b.a.r;
import k.b.a.u.n;

/* compiled from: ZoneOffsetTransitionRule.java */
/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    private final int adjustDays;
    private final byte dom;
    private final k.b.a.c dow;
    private final k.b.a.i month;
    private final r offsetAfter;
    private final r offsetBefore;
    private final r standardOffset;
    private final k.b.a.h time;
    private final b timeDefinition;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ZoneOffsetTransitionRule.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19897a = new int[b.values().length];

        static {
            try {
                f19897a[b.UTC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19897a[b.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: ZoneOffsetTransitionRule.java */
    /* loaded from: classes2.dex */
    public enum b {
        UTC,
        WALL,
        STANDARD;

        public k.b.a.g createDateTime(k.b.a.g gVar, r rVar, r rVar2) {
            int i2 = a.f19897a[ordinal()];
            if (i2 != 1) {
                return i2 != 2 ? gVar : gVar.plusSeconds(rVar2.getTotalSeconds() - rVar.getTotalSeconds());
            }
            return gVar.plusSeconds(rVar2.getTotalSeconds() - r.UTC.getTotalSeconds());
        }
    }

    e(k.b.a.i iVar, int i2, k.b.a.c cVar, k.b.a.h hVar, int i3, b bVar, r rVar, r rVar2, r rVar3) {
        this.month = iVar;
        this.dom = (byte) i2;
        this.dow = cVar;
        this.time = hVar;
        this.adjustDays = i3;
        this.timeDefinition = bVar;
        this.standardOffset = rVar;
        this.offsetBefore = rVar2;
        this.offsetAfter = rVar3;
    }

    private void a(StringBuilder sb, long j2) {
        if (j2 < 10) {
            sb.append(0);
        }
        sb.append(j2);
    }

    public static e of(k.b.a.i iVar, int i2, k.b.a.c cVar, k.b.a.h hVar, boolean z, b bVar, r rVar, r rVar2, r rVar3) {
        k.b.a.w.d.a(iVar, "month");
        k.b.a.w.d.a(hVar, "time");
        k.b.a.w.d.a(bVar, "timeDefnition");
        k.b.a.w.d.a(rVar, "standardOffset");
        k.b.a.w.d.a(rVar2, "offsetBefore");
        k.b.a.w.d.a(rVar3, "offsetAfter");
        if (i2 >= -28 && i2 <= 31 && i2 != 0) {
            if (z && !hVar.equals(k.b.a.h.MIDNIGHT)) {
                throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
            }
            return new e(iVar, i2, cVar, hVar, z ? 1 : 0, bVar, rVar, rVar2, rVar3);
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e readExternal(DataInput dataInput) {
        int readInt = dataInput.readInt();
        k.b.a.i of = k.b.a.i.of(readInt >>> 28);
        int i2 = ((264241152 & readInt) >>> 22) - 32;
        int i3 = (3670016 & readInt) >>> 19;
        k.b.a.c of2 = i3 == 0 ? null : k.b.a.c.of(i3);
        int i4 = (507904 & readInt) >>> 14;
        b bVar = b.values()[(readInt & 12288) >>> 12];
        int i5 = (readInt & 4080) >>> 4;
        int i6 = (readInt & 12) >>> 2;
        int i7 = readInt & 3;
        int readInt2 = i4 == 31 ? dataInput.readInt() : i4 * 3600;
        r ofTotalSeconds = r.ofTotalSeconds(i5 == 255 ? dataInput.readInt() : (i5 - 128) * 900);
        r ofTotalSeconds2 = r.ofTotalSeconds(i6 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i6 * 1800));
        r ofTotalSeconds3 = r.ofTotalSeconds(i7 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i7 * 1800));
        if (i2 >= -28 && i2 <= 31 && i2 != 0) {
            return new e(of, i2, of2, k.b.a.h.ofSecondOfDay(k.b.a.w.d.c(readInt2, 86400)), k.b.a.w.d.b(readInt2, 86400), bVar, ofTotalSeconds, ofTotalSeconds2, ofTotalSeconds3);
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }

    private Object writeReplace() {
        return new k.b.a.y.a((byte) 3, this);
    }

    public d createTransition(int i2) {
        k.b.a.f of;
        byte b2 = this.dom;
        if (b2 < 0) {
            k.b.a.i iVar = this.month;
            of = k.b.a.f.of(i2, iVar, iVar.length(n.INSTANCE.isLeapYear(i2)) + 1 + this.dom);
            k.b.a.c cVar = this.dow;
            if (cVar != null) {
                of = of.with(k.b.a.x.g.b(cVar));
            }
        } else {
            of = k.b.a.f.of(i2, this.month, b2);
            k.b.a.c cVar2 = this.dow;
            if (cVar2 != null) {
                of = of.with(k.b.a.x.g.a(cVar2));
            }
        }
        return new d(this.timeDefinition.createDateTime(k.b.a.g.of(of.plusDays(this.adjustDays), this.time), this.standardOffset, this.offsetBefore), this.offsetBefore, this.offsetAfter);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.month == eVar.month && this.dom == eVar.dom && this.dow == eVar.dow && this.timeDefinition == eVar.timeDefinition && this.adjustDays == eVar.adjustDays && this.time.equals(eVar.time) && this.standardOffset.equals(eVar.standardOffset) && this.offsetBefore.equals(eVar.offsetBefore) && this.offsetAfter.equals(eVar.offsetAfter);
    }

    public int getDayOfMonthIndicator() {
        return this.dom;
    }

    public k.b.a.c getDayOfWeek() {
        return this.dow;
    }

    public k.b.a.h getLocalTime() {
        return this.time;
    }

    public k.b.a.i getMonth() {
        return this.month;
    }

    public r getOffsetAfter() {
        return this.offsetAfter;
    }

    public r getOffsetBefore() {
        return this.offsetBefore;
    }

    public r getStandardOffset() {
        return this.standardOffset;
    }

    public b getTimeDefinition() {
        return this.timeDefinition;
    }

    public int hashCode() {
        int secondOfDay = ((this.time.toSecondOfDay() + this.adjustDays) << 15) + (this.month.ordinal() << 11) + ((this.dom + 32) << 5);
        k.b.a.c cVar = this.dow;
        return ((((secondOfDay + ((cVar == null ? 7 : cVar.ordinal()) << 2)) + this.timeDefinition.ordinal()) ^ this.standardOffset.hashCode()) ^ this.offsetBefore.hashCode()) ^ this.offsetAfter.hashCode();
    }

    public boolean isMidnightEndOfDay() {
        return this.adjustDays == 1 && this.time.equals(k.b.a.h.MIDNIGHT);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TransitionRule[");
        sb.append(this.offsetBefore.compareTo(this.offsetAfter) > 0 ? "Gap " : "Overlap ");
        sb.append(this.offsetBefore);
        sb.append(" to ");
        sb.append(this.offsetAfter);
        sb.append(", ");
        k.b.a.c cVar = this.dow;
        if (cVar != null) {
            byte b2 = this.dom;
            if (b2 == -1) {
                sb.append(cVar.name());
                sb.append(" on or before last day of ");
                sb.append(this.month.name());
            } else if (b2 < 0) {
                sb.append(cVar.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.dom) - 1);
                sb.append(" of ");
                sb.append(this.month.name());
            } else {
                sb.append(cVar.name());
                sb.append(" on or after ");
                sb.append(this.month.name());
                sb.append(' ');
                sb.append((int) this.dom);
            }
        } else {
            sb.append(this.month.name());
            sb.append(' ');
            sb.append((int) this.dom);
        }
        sb.append(" at ");
        if (this.adjustDays == 0) {
            sb.append(this.time);
        } else {
            a(sb, k.b.a.w.d.b((this.time.toSecondOfDay() / 60) + (this.adjustDays * 24 * 60), 60L));
            sb.append(':');
            a(sb, k.b.a.w.d.a(r3, 60));
        }
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(this.timeDefinition);
        sb.append(", standard offset ");
        sb.append(this.standardOffset);
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        int i2;
        int secondOfDay = this.time.toSecondOfDay() + (this.adjustDays * 86400);
        int totalSeconds = this.standardOffset.getTotalSeconds();
        int totalSeconds2 = this.offsetBefore.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.offsetAfter.getTotalSeconds() - totalSeconds;
        if (secondOfDay % 3600 != 0 || secondOfDay > 86400) {
            i2 = 31;
        } else {
            i2 = secondOfDay == 86400 ? 24 : this.time.getHour();
        }
        int i3 = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i4 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i5 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        k.b.a.c cVar = this.dow;
        dataOutput.writeInt((this.month.getValue() << 28) + ((this.dom + 32) << 22) + ((cVar == null ? 0 : cVar.getValue()) << 19) + (i2 << 14) + (this.timeDefinition.ordinal() << 12) + (i3 << 4) + (i4 << 2) + i5);
        if (i2 == 31) {
            dataOutput.writeInt(secondOfDay);
        }
        if (i3 == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i4 == 3) {
            dataOutput.writeInt(this.offsetBefore.getTotalSeconds());
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.offsetAfter.getTotalSeconds());
        }
    }
}
