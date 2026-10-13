package k.b.a.v;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import k.b.a.m;
import k.b.a.q;
import k.b.a.u.n;
import k.b.a.v.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DateTimeParseContext.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private Locale f19835a;

    /* renamed from: b, reason: collision with root package name */
    private h f19836b;

    /* renamed from: c, reason: collision with root package name */
    private k.b.a.u.i f19837c;

    /* renamed from: d, reason: collision with root package name */
    private q f19838d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f19839e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f19840f;

    /* renamed from: g, reason: collision with root package name */
    private final ArrayList<b> f19841g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeParseContext.java */
    /* loaded from: classes2.dex */
    public final class b extends k.b.a.w.c {

        /* renamed from: e, reason: collision with root package name */
        k.b.a.u.i f19842e;

        /* renamed from: f, reason: collision with root package name */
        q f19843f;

        /* renamed from: g, reason: collision with root package name */
        final Map<k.b.a.x.i, Long> f19844g;

        /* renamed from: h, reason: collision with root package name */
        boolean f19845h;

        /* renamed from: i, reason: collision with root package name */
        m f19846i;

        /* renamed from: j, reason: collision with root package name */
        List<Object[]> f19847j;

        protected b a() {
            b bVar = new b();
            bVar.f19842e = this.f19842e;
            bVar.f19843f = this.f19843f;
            bVar.f19844g.putAll(this.f19844g);
            bVar.f19845h = this.f19845h;
            return bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public k.b.a.v.a b() {
            k.b.a.v.a aVar = new k.b.a.v.a();
            aVar.f19766e.putAll(this.f19844g);
            aVar.f19767f = d.this.b();
            q qVar = this.f19843f;
            if (qVar == null) {
                aVar.f19768g = d.this.f19838d;
            } else {
                aVar.f19768g = qVar;
            }
            aVar.f19771j = this.f19845h;
            aVar.f19772k = this.f19846i;
            return aVar;
        }

        @Override // k.b.a.w.c, k.b.a.x.e
        public int get(k.b.a.x.i iVar) {
            if (this.f19844g.containsKey(iVar)) {
                return k.b.a.w.d.a(this.f19844g.get(iVar).longValue());
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }

        @Override // k.b.a.x.e
        public long getLong(k.b.a.x.i iVar) {
            if (this.f19844g.containsKey(iVar)) {
                return this.f19844g.get(iVar).longValue();
            }
            throw new k.b.a.x.m("Unsupported field: " + iVar);
        }

        @Override // k.b.a.x.e
        public boolean isSupported(k.b.a.x.i iVar) {
            return this.f19844g.containsKey(iVar);
        }

        @Override // k.b.a.w.c, k.b.a.x.e
        public <R> R query(k.b.a.x.k<R> kVar) {
            if (kVar == k.b.a.x.j.a()) {
                return (R) this.f19842e;
            }
            if (kVar != k.b.a.x.j.g() && kVar != k.b.a.x.j.f()) {
                return (R) super.query(kVar);
            }
            return (R) this.f19843f;
        }

        public String toString() {
            return this.f19844g.toString() + "," + this.f19842e + "," + this.f19843f;
        }

        private b() {
            this.f19842e = null;
            this.f19843f = null;
            this.f19844g = new HashMap();
            this.f19846i = m.ZERO;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(k.b.a.v.b bVar) {
        this.f19839e = true;
        this.f19840f = true;
        this.f19841g = new ArrayList<>();
        this.f19835a = bVar.c();
        this.f19836b = bVar.b();
        this.f19837c = bVar.a();
        this.f19838d = bVar.d();
        this.f19841g.add(new b());
    }

    private b j() {
        return this.f19841g.get(r0.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.b.a.u.i b() {
        k.b.a.u.i iVar = j().f19842e;
        if (iVar != null) {
            return iVar;
        }
        k.b.a.u.i iVar2 = this.f19837c;
        return iVar2 == null ? n.INSTANCE : iVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale c() {
        return this.f19835a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h d() {
        return this.f19836b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.f19839e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f19840f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        j().f19845h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f19841g.add(j().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b i() {
        return j();
    }

    public String toString() {
        return j().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d a() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        this.f19840f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4) {
        if (i2 + i4 > charSequence.length() || i3 + i4 > charSequence2.length()) {
            return false;
        }
        if (e()) {
            for (int i5 = 0; i5 < i4; i5++) {
                if (charSequence.charAt(i2 + i5) != charSequence2.charAt(i3 + i5)) {
                    return false;
                }
            }
            return true;
        }
        for (int i6 = 0; i6 < i4; i6++) {
            char charAt = charSequence.charAt(i2 + i6);
            char charAt2 = charSequence2.charAt(i3 + i6);
            if (charAt != charAt2 && Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.f19839e = z;
    }

    static boolean b(char c2, char c3) {
        return c2 == c3 || Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    d(d dVar) {
        this.f19839e = true;
        this.f19840f = true;
        this.f19841g = new ArrayList<>();
        this.f19835a = dVar.f19835a;
        this.f19836b = dVar.f19836b;
        this.f19837c = dVar.f19837c;
        this.f19838d = dVar.f19838d;
        this.f19839e = dVar.f19839e;
        this.f19840f = dVar.f19840f;
        this.f19841g.add(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(char c2, char c3) {
        if (e()) {
            return c2 == c3;
        }
        return b(c2, c3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (z) {
            this.f19841g.remove(r2.size() - 2);
        } else {
            this.f19841g.remove(r2.size() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long a(k.b.a.x.i iVar) {
        return j().f19844g.get(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(k.b.a.x.i iVar, long j2, int i2, int i3) {
        k.b.a.w.d.a(iVar, "field");
        Long put = j().f19844g.put(iVar, Long.valueOf(j2));
        return (put == null || put.longValue() == j2) ? i3 : i2 ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(k.b.a.u.i iVar) {
        k.b.a.w.d.a(iVar, "chrono");
        b j2 = j();
        j2.f19842e = iVar;
        List<Object[]> list = j2.f19847j;
        if (list != null) {
            ArrayList<Object[]> arrayList = new ArrayList(list);
            j2.f19847j.clear();
            for (Object[] objArr : arrayList) {
                ((c.n) objArr[0]).a(this, ((Long) objArr[1]).longValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c.n nVar, long j2, int i2, int i3) {
        b j3 = j();
        if (j3.f19847j == null) {
            j3.f19847j = new ArrayList(2);
        }
        j3.f19847j.add(new Object[]{nVar, Long.valueOf(j2), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(q qVar) {
        k.b.a.w.d.a(qVar, "zone");
        j().f19843f = qVar;
    }
}
