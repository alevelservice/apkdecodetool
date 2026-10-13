package k.b.a.w;

import k.b.a.x.f;
import k.b.a.x.h;
import k.b.a.x.l;

/* compiled from: DefaultInterfaceTemporal.java */
/* loaded from: classes2.dex */
public abstract class b extends c implements k.b.a.x.d {
    public k.b.a.x.d minus(h hVar) {
        return hVar.subtractFrom(this);
    }

    public k.b.a.x.d plus(h hVar) {
        return hVar.addTo(this);
    }

    public k.b.a.x.d with(f fVar) {
        return fVar.adjustInto(this);
    }

    public k.b.a.x.d minus(long j2, l lVar) {
        return j2 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, lVar).plus(1L, lVar) : plus(-j2, lVar);
    }
}
