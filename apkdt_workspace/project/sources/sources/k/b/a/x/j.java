package k.b.a.x;

import k.b.a.q;
import k.b.a.r;

/* compiled from: TemporalQueries.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    static final k<q> f19884a = new a();

    /* renamed from: b, reason: collision with root package name */
    static final k<k.b.a.u.i> f19885b = new b();

    /* renamed from: c, reason: collision with root package name */
    static final k<l> f19886c = new c();

    /* renamed from: d, reason: collision with root package name */
    static final k<q> f19887d = new d();

    /* renamed from: e, reason: collision with root package name */
    static final k<r> f19888e = new e();

    /* renamed from: f, reason: collision with root package name */
    static final k<k.b.a.f> f19889f = new f();

    /* renamed from: g, reason: collision with root package name */
    static final k<k.b.a.h> f19890g = new g();

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class a implements k<q> {
        a() {
        }

        @Override // k.b.a.x.k
        public q a(k.b.a.x.e eVar) {
            return (q) eVar.query(this);
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class b implements k<k.b.a.u.i> {
        b() {
        }

        @Override // k.b.a.x.k
        public k.b.a.u.i a(k.b.a.x.e eVar) {
            return (k.b.a.u.i) eVar.query(this);
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class c implements k<l> {
        c() {
        }

        @Override // k.b.a.x.k
        public l a(k.b.a.x.e eVar) {
            return (l) eVar.query(this);
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class d implements k<q> {
        d() {
        }

        @Override // k.b.a.x.k
        public q a(k.b.a.x.e eVar) {
            q qVar = (q) eVar.query(j.f19884a);
            return qVar != null ? qVar : (q) eVar.query(j.f19888e);
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class e implements k<r> {
        e() {
        }

        @Override // k.b.a.x.k
        public r a(k.b.a.x.e eVar) {
            if (eVar.isSupported(k.b.a.x.a.OFFSET_SECONDS)) {
                return r.ofTotalSeconds(eVar.get(k.b.a.x.a.OFFSET_SECONDS));
            }
            return null;
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class f implements k<k.b.a.f> {
        f() {
        }

        @Override // k.b.a.x.k
        public k.b.a.f a(k.b.a.x.e eVar) {
            if (eVar.isSupported(k.b.a.x.a.EPOCH_DAY)) {
                return k.b.a.f.ofEpochDay(eVar.getLong(k.b.a.x.a.EPOCH_DAY));
            }
            return null;
        }
    }

    /* compiled from: TemporalQueries.java */
    /* loaded from: classes2.dex */
    class g implements k<k.b.a.h> {
        g() {
        }

        @Override // k.b.a.x.k
        public k.b.a.h a(k.b.a.x.e eVar) {
            if (eVar.isSupported(k.b.a.x.a.NANO_OF_DAY)) {
                return k.b.a.h.ofNanoOfDay(eVar.getLong(k.b.a.x.a.NANO_OF_DAY));
            }
            return null;
        }
    }

    public static final k<k.b.a.u.i> a() {
        return f19885b;
    }

    public static final k<k.b.a.f> b() {
        return f19889f;
    }

    public static final k<k.b.a.h> c() {
        return f19890g;
    }

    public static final k<r> d() {
        return f19888e;
    }

    public static final k<l> e() {
        return f19886c;
    }

    public static final k<q> f() {
        return f19887d;
    }

    public static final k<q> g() {
        return f19884a;
    }
}
