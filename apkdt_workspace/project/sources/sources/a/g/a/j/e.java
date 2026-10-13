package a.g.a.j;

import a.g.a.i;

/* compiled from: ConstraintAnchor.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: b, reason: collision with root package name */
    final f f228b;

    /* renamed from: c, reason: collision with root package name */
    final d f229c;

    /* renamed from: d, reason: collision with root package name */
    e f230d;

    /* renamed from: h, reason: collision with root package name */
    private int f234h;

    /* renamed from: i, reason: collision with root package name */
    a.g.a.i f235i;

    /* renamed from: a, reason: collision with root package name */
    private m f227a = new m(this);

    /* renamed from: e, reason: collision with root package name */
    public int f231e = 0;

    /* renamed from: f, reason: collision with root package name */
    int f232f = -1;

    /* renamed from: g, reason: collision with root package name */
    private c f233g = c.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f236a = new int[d.values().length];

        static {
            try {
                f236a[d.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f236a[d.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f236a[d.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f236a[d.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f236a[d.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f236a[d.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f236a[d.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f236a[d.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f236a[d.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public enum b {
        RELAXED,
        STRICT
    }

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public enum c {
        NONE,
        STRONG,
        WEAK
    }

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public enum d {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public e(f fVar, d dVar) {
        b bVar = b.RELAXED;
        this.f234h = 0;
        this.f228b = fVar;
        this.f229c = dVar;
    }

    public void a(a.g.a.c cVar) {
        a.g.a.i iVar = this.f235i;
        if (iVar == null) {
            this.f235i = new a.g.a.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.a();
        }
    }

    public int b() {
        e eVar;
        if (this.f228b.r() == 8) {
            return 0;
        }
        if (this.f232f > -1 && (eVar = this.f230d) != null && eVar.f228b.r() == 8) {
            return this.f232f;
        }
        return this.f231e;
    }

    public f c() {
        return this.f228b;
    }

    public m d() {
        return this.f227a;
    }

    public a.g.a.i e() {
        return this.f235i;
    }

    public c f() {
        return this.f233g;
    }

    public e g() {
        return this.f230d;
    }

    public d h() {
        return this.f229c;
    }

    public boolean i() {
        return this.f230d != null;
    }

    public void j() {
        this.f230d = null;
        this.f231e = 0;
        this.f232f = -1;
        this.f233g = c.STRONG;
        this.f234h = 0;
        b bVar = b.RELAXED;
        this.f227a.d();
    }

    public String toString() {
        return this.f228b.f() + ":" + this.f229c.toString();
    }

    public int a() {
        return this.f234h;
    }

    public boolean a(e eVar, int i2, c cVar, int i3) {
        return a(eVar, i2, -1, cVar, i3, false);
    }

    public boolean a(e eVar, int i2, int i3, c cVar, int i4, boolean z) {
        if (eVar == null) {
            this.f230d = null;
            this.f231e = 0;
            this.f232f = -1;
            this.f233g = c.NONE;
            this.f234h = 2;
            return true;
        }
        if (!z && !a(eVar)) {
            return false;
        }
        this.f230d = eVar;
        if (i2 > 0) {
            this.f231e = i2;
        } else {
            this.f231e = 0;
        }
        this.f232f = i3;
        this.f233g = cVar;
        this.f234h = i4;
        return true;
    }

    public boolean a(e eVar) {
        if (eVar == null) {
            return false;
        }
        d h2 = eVar.h();
        d dVar = this.f229c;
        if (h2 == dVar) {
            return dVar != d.BASELINE || (eVar.c().x() && c().x());
        }
        switch (a.f236a[dVar.ordinal()]) {
            case 1:
                return (h2 == d.BASELINE || h2 == d.CENTER_X || h2 == d.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = h2 == d.LEFT || h2 == d.RIGHT;
                return eVar.c() instanceof i ? z || h2 == d.CENTER_X : z;
            case 4:
            case 5:
                boolean z2 = h2 == d.TOP || h2 == d.BOTTOM;
                return eVar.c() instanceof i ? z2 || h2 == d.CENTER_Y : z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f229c.name());
        }
    }
}
