package k.b.a.u;

import java.util.Iterator;
import java.util.List;

/* compiled from: ChronoPeriod.java */
/* loaded from: classes2.dex */
public abstract class e implements k.b.a.x.h {
    public static e between(b bVar, b bVar2) {
        k.b.a.w.d.a(bVar, "startDateInclusive");
        k.b.a.w.d.a(bVar2, "endDateExclusive");
        return bVar.until(bVar2);
    }

    @Override // k.b.a.x.h
    public abstract k.b.a.x.d addTo(k.b.a.x.d dVar);

    public abstract boolean equals(Object obj);

    @Override // k.b.a.x.h
    public abstract long get(k.b.a.x.l lVar);

    public abstract i getChronology();

    @Override // k.b.a.x.h
    public abstract List<k.b.a.x.l> getUnits();

    public abstract int hashCode();

    public boolean isNegative() {
        Iterator<k.b.a.x.l> it = getUnits().iterator();
        while (it.hasNext()) {
            if (get(it.next()) < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isZero() {
        Iterator<k.b.a.x.l> it = getUnits().iterator();
        while (it.hasNext()) {
            if (get(it.next()) != 0) {
                return false;
            }
        }
        return true;
    }

    public abstract e minus(k.b.a.x.h hVar);

    public abstract e multipliedBy(int i2);

    public e negated() {
        return multipliedBy(-1);
    }

    public abstract e normalized();

    public abstract e plus(k.b.a.x.h hVar);

    @Override // k.b.a.x.h
    public abstract k.b.a.x.d subtractFrom(k.b.a.x.d dVar);

    public abstract String toString();
}
