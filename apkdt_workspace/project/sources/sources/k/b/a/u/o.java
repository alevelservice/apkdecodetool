package k.b.a.u;

import java.util.Locale;

/* compiled from: IsoEra.java */
/* loaded from: classes2.dex */
public enum o implements j {
    BCE,
    CE;

    public static o of(int i2) {
        if (i2 == 0) {
            return BCE;
        }
        if (i2 == 1) {
            return CE;
        }
        throw new k.b.a.b("Invalid era: " + i2);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.ERA, getValue());
    }

    @Override // k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return getValue();
        }
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    public String getDisplayName(k.b.a.v.l lVar, Locale locale) {
        k.b.a.v.c cVar = new k.b.a.v.c();
        cVar.a(k.b.a.x.a.ERA, lVar);
        return cVar.a(locale).a(this);
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return getValue();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.getFrom(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }

    @Override // k.b.a.u.j
    public int getValue() {
        return ordinal();
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.ERA : iVar != null && iVar.isSupportedBy(this);
    }

    @Override // k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.e()) {
            return (R) k.b.a.x.b.ERAS;
        }
        if (kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.f() || kVar == k.b.a.x.j.g() || kVar == k.b.a.x.j.d() || kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return iVar.range();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.rangeRefinedBy(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }
}
