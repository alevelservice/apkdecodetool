package k.b.a.w;

import java.util.Locale;
import k.b.a.u.j;
import k.b.a.v.l;
import k.b.a.x.i;
import k.b.a.x.k;
import k.b.a.x.m;

/* compiled from: DefaultInterfaceEra.java */
/* loaded from: classes2.dex */
public abstract class a extends c implements j {
    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.ERA, getValue());
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return getValue();
        }
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    public String getDisplayName(l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.ERA, lVar);
        return cVar.a(locale).a(this);
    }

    @Override // k.b.a.x.e
    public long getLong(i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return getValue();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.getFrom(this);
        }
        throw new m("Unsupported field: " + iVar);
    }

    @Override // k.b.a.x.e
    public boolean isSupported(i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.ERA : iVar != null && iVar.isSupportedBy(this);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.ERAS;
        }
        if (kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d() || kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c()) {
            return null;
        }
        return kVar.a(this);
    }
}
