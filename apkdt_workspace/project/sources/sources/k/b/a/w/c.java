package k.b.a.w;

import k.b.a.x.e;
import k.b.a.x.i;
import k.b.a.x.j;
import k.b.a.x.k;
import k.b.a.x.m;
import k.b.a.x.n;

/* compiled from: DefaultInterfaceTemporalAccessor.java */
/* loaded from: classes2.dex */
public abstract class c implements e {
    @Override // k.b.a.x.e
    public int get(i iVar) {
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    @Override // k.b.a.x.e
    public <R> R query(k<R> kVar) {
        if (kVar == j.g() || kVar == j.a() || kVar == j.e()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.x.e
    public n range(i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            if (isSupported(iVar)) {
                return iVar.range();
            }
            throw new m("Unsupported field: " + iVar);
        }
        return iVar.rangeRefinedBy(this);
    }
}
