package k.b.a.v;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.util.Locale;
import k.b.a.q;
import k.b.a.r;
import k.b.a.x.n;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DateTimePrintContext.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private k.b.a.x.e f19849a;

    /* renamed from: b, reason: collision with root package name */
    private Locale f19850b;

    /* renamed from: c, reason: collision with root package name */
    private h f19851c;

    /* renamed from: d, reason: collision with root package name */
    private int f19852d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimePrintContext.java */
    /* loaded from: classes2.dex */
    public class a extends k.b.a.w.c {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ k.b.a.u.b f19853e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ k.b.a.x.e f19854f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ k.b.a.u.i f19855g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ q f19856h;

        a(k.b.a.u.b bVar, k.b.a.x.e eVar, k.b.a.u.i iVar, q qVar) {
            this.f19853e = bVar;
            this.f19854f = eVar;
            this.f19855g = iVar;
            this.f19856h = qVar;
        }

        @Override // k.b.a.x.e
        public long getLong(k.b.a.x.i iVar) {
            if (this.f19853e != null && iVar.isDateBased()) {
                return this.f19853e.getLong(iVar);
            }
            return this.f19854f.getLong(iVar);
        }

        @Override // k.b.a.x.e
        public boolean isSupported(k.b.a.x.i iVar) {
            if (this.f19853e != null && iVar.isDateBased()) {
                return this.f19853e.isSupported(iVar);
            }
            return this.f19854f.isSupported(iVar);
        }

        @Override // k.b.a.w.c, k.b.a.x.e
        public <R> R query(k.b.a.x.k<R> kVar) {
            if (kVar == k.b.a.x.j.a()) {
                return (R) this.f19855g;
            }
            if (kVar == k.b.a.x.j.g()) {
                return (R) this.f19856h;
            }
            if (kVar == k.b.a.x.j.e()) {
                return (R) this.f19854f.query(kVar);
            }
            return kVar.a(this);
        }

        @Override // k.b.a.w.c, k.b.a.x.e
        public n range(k.b.a.x.i iVar) {
            if (this.f19853e != null && iVar.isDateBased()) {
                return this.f19853e.range(iVar);
            }
            return this.f19854f.range(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(k.b.a.x.e eVar, b bVar) {
        this.f19849a = a(eVar, bVar);
        this.f19850b = bVar.c();
        this.f19851c = bVar.b();
    }

    private static k.b.a.x.e a(k.b.a.x.e eVar, b bVar) {
        k.b.a.u.i a2 = bVar.a();
        q d2 = bVar.d();
        if (a2 == null && d2 == null) {
            return eVar;
        }
        k.b.a.u.i iVar = (k.b.a.u.i) eVar.query(k.b.a.x.j.a());
        q qVar = (q) eVar.query(k.b.a.x.j.g());
        k.b.a.u.b bVar2 = null;
        if (k.b.a.w.d.a(iVar, a2)) {
            a2 = null;
        }
        if (k.b.a.w.d.a(qVar, d2)) {
            d2 = null;
        }
        if (a2 == null && d2 == null) {
            return eVar;
        }
        k.b.a.u.i iVar2 = a2 != null ? a2 : iVar;
        if (d2 != null) {
            qVar = d2;
        }
        if (d2 != null) {
            if (eVar.isSupported(k.b.a.x.a.INSTANT_SECONDS)) {
                if (iVar2 == null) {
                    iVar2 = k.b.a.u.n.INSTANCE;
                }
                return iVar2.zonedDateTime(k.b.a.e.from(eVar), d2);
            }
            q normalized = d2.normalized();
            r rVar = (r) eVar.query(k.b.a.x.j.d());
            if ((normalized instanceof r) && rVar != null && !normalized.equals(rVar)) {
                throw new k.b.a.b("Invalid override zone for temporal: " + d2 + HanziToPinyin.Token.SEPARATOR + eVar);
            }
        }
        if (a2 != null) {
            if (eVar.isSupported(k.b.a.x.a.EPOCH_DAY)) {
                bVar2 = iVar2.date(eVar);
            } else if (a2 != k.b.a.u.n.INSTANCE || iVar != null) {
                for (k.b.a.x.a aVar : k.b.a.x.a.values()) {
                    if (aVar.isDateBased() && eVar.isSupported(aVar)) {
                        throw new k.b.a.b("Invalid override chronology for temporal: " + a2 + HanziToPinyin.Token.SEPARATOR + eVar);
                    }
                }
            }
        }
        return new a(bVar2, eVar, iVar2, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale b() {
        return this.f19850b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h c() {
        return this.f19851c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.b.a.x.e d() {
        return this.f19849a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f19852d++;
    }

    public String toString() {
        return this.f19849a.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f19852d--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <R> R a(k.b.a.x.k<R> kVar) {
        R r = (R) this.f19849a.query(kVar);
        if (r != null || this.f19852d != 0) {
            return r;
        }
        throw new k.b.a.b("Unable to extract value: " + this.f19849a.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long a(k.b.a.x.i iVar) {
        try {
            return Long.valueOf(this.f19849a.getLong(iVar));
        } catch (k.b.a.b e2) {
            if (this.f19852d > 0) {
                return null;
            }
            throw e2;
        }
    }
}
