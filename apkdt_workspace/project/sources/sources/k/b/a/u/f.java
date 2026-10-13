package k.b.a.u;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChronoPeriodImpl.java */
/* loaded from: classes2.dex */
public final class f extends e implements Serializable {
    private static final long serialVersionUID = 275618735781L;
    private final i chronology;
    private final int days;
    private final int months;
    private final int years;

    public f(i iVar, int i2, int i3, int i4) {
        this.chronology = iVar;
        this.years = i2;
        this.months = i3;
        this.days = i4;
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public k.b.a.x.d addTo(k.b.a.x.d dVar) {
        k.b.a.w.d.a(dVar, "temporal");
        i iVar = (i) dVar.query(k.b.a.x.j.a());
        if (iVar != null && !this.chronology.equals(iVar)) {
            throw new k.b.a.b("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + iVar.getId());
        }
        int i2 = this.years;
        if (i2 != 0) {
            dVar = dVar.plus(i2, k.b.a.x.b.YEARS);
        }
        int i3 = this.months;
        if (i3 != 0) {
            dVar = dVar.plus(i3, k.b.a.x.b.MONTHS);
        }
        int i4 = this.days;
        return i4 != 0 ? dVar.plus(i4, k.b.a.x.b.DAYS) : dVar;
    }

    @Override // k.b.a.u.e
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.years == fVar.years && this.months == fVar.months && this.days == fVar.days && this.chronology.equals(fVar.chronology);
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
    public i getChronology() {
        return this.chronology;
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public List<k.b.a.x.l> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(k.b.a.x.b.YEARS, k.b.a.x.b.MONTHS, k.b.a.x.b.DAYS));
    }

    @Override // k.b.a.u.e
    public int hashCode() {
        return this.chronology.hashCode() + Integer.rotateLeft(this.years, 16) + Integer.rotateLeft(this.months, 8) + this.days;
    }

    @Override // k.b.a.u.e
    public e minus(k.b.a.x.h hVar) {
        if (hVar instanceof f) {
            f fVar = (f) hVar;
            if (fVar.getChronology().equals(getChronology())) {
                return new f(this.chronology, k.b.a.w.d.f(this.years, fVar.years), k.b.a.w.d.f(this.months, fVar.months), k.b.a.w.d.f(this.days, fVar.days));
            }
        }
        throw new k.b.a.b("Unable to subtract amount: " + hVar);
    }

    @Override // k.b.a.u.e
    public e multipliedBy(int i2) {
        return new f(this.chronology, k.b.a.w.d.e(this.years, i2), k.b.a.w.d.e(this.months, i2), k.b.a.w.d.e(this.days, i2));
    }

    @Override // k.b.a.u.e
    public e normalized() {
        if (!this.chronology.range(k.b.a.x.a.MONTH_OF_YEAR).isFixed()) {
            return this;
        }
        long maximum = (this.chronology.range(k.b.a.x.a.MONTH_OF_YEAR).getMaximum() - this.chronology.range(k.b.a.x.a.MONTH_OF_YEAR).getMinimum()) + 1;
        long j2 = (this.years * maximum) + this.months;
        return new f(this.chronology, k.b.a.w.d.a(j2 / maximum), k.b.a.w.d.a(j2 % maximum), this.days);
    }

    @Override // k.b.a.u.e
    public e plus(k.b.a.x.h hVar) {
        if (hVar instanceof f) {
            f fVar = (f) hVar;
            if (fVar.getChronology().equals(getChronology())) {
                return new f(this.chronology, k.b.a.w.d.d(this.years, fVar.years), k.b.a.w.d.d(this.months, fVar.months), k.b.a.w.d.d(this.days, fVar.days));
            }
        }
        throw new k.b.a.b("Unable to add amount: " + hVar);
    }

    @Override // k.b.a.u.e, k.b.a.x.h
    public k.b.a.x.d subtractFrom(k.b.a.x.d dVar) {
        k.b.a.w.d.a(dVar, "temporal");
        i iVar = (i) dVar.query(k.b.a.x.j.a());
        if (iVar != null && !this.chronology.equals(iVar)) {
            throw new k.b.a.b("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + iVar.getId());
        }
        int i2 = this.years;
        if (i2 != 0) {
            dVar = dVar.minus(i2, k.b.a.x.b.YEARS);
        }
        int i3 = this.months;
        if (i3 != 0) {
            dVar = dVar.minus(i3, k.b.a.x.b.MONTHS);
        }
        int i4 = this.days;
        return i4 != 0 ? dVar.minus(i4, k.b.a.x.b.DAYS) : dVar;
    }

    @Override // k.b.a.u.e
    public String toString() {
        if (isZero()) {
            return this.chronology + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.chronology);
        sb.append(' ');
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
}
